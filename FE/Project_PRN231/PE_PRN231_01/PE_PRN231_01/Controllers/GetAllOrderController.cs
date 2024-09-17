using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PE_PRN231_01.Models;

namespace PE_PRN231_01.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GetAllOrderController : ControllerBase
    {
        private readonly ApiDbContext _context = new ApiDbContext();
        public List<Order> data { get; set; }

        private void GetAllData()
        {
            data = _context.Orders.ToList();
        }

        [HttpGet]
        public ActionResult Get()
        {
            try
            {
                GetAllData();
                return Ok(data.Count == 0 ? "Not found data" : data);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [HttpGet("GetOrderByDate")]
        public ActionResult GetOrderByDate(DateTime startDate, DateTime endDate)
        {
            try
            {
                // Lấy danh sách đơn hàng trong khoảng thời gian từ startDate đến endDate
                var orders = _context.Orders.Where(x => x.OrderDate >= startDate && x.OrderDate <= endDate).ToList();

                if (orders == null || orders.Count == 0)
                {
                    return NotFound("Không tìm thấy dữ liệu");
                }

                return Ok(orders);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [HttpDelete]
        public IActionResult Delete(int employeid)
        {
            try
            {
                var employe = _context.Employees.FirstOrDefault(x => x.EmployeeId == employeid);
                if (employe == null)
                {
                    return NotFound("Not found data");
                }
                _context.Employees.Remove(employe);
                _context.SaveChanges();
                return Ok(data);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

    }
}
