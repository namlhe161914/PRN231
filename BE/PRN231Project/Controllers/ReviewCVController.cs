using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PRN231Project.DTO;
using PRN231Project.Models;
using System.ComponentModel;
using System;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using Spire.Pdf;
using Spire.Pdf.Graphics;
using System.Drawing.Imaging;
using System.Drawing;
using Microsoft.EntityFrameworkCore;

namespace PRN231Project.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReviewCVController : ControllerBase
    {
        private readonly ProjectPRN231Context _context;
        private readonly IWebHostEnvironment _env;

        public ReviewCVController(ProjectPRN231Context context, IWebHostEnvironment env)
        {
            _context = context;
            _env = env;
        }

        [HttpPost]
        public async Task<IActionResult> GetCVs(string pathFile)
        {

            PDFtoJPG(pathFile);

            string imagePath = pathFile.Substring(0, pathFile.Length - 3) + "jpg";

            return Ok(ConvertImageToBase64(imagePath));
        }


        public static void PDFtoJPG(string pdfPath)
        {
            PdfDocument pdf = new PdfDocument();

            pdf.LoadFromFile(pdfPath);

            Image image = pdf.SaveAsImage(0, PdfImageType.Bitmap, 500, 500);

            string imagePath = pdfPath.Substring(0, pdfPath.Length - 3) + "jpg";

            image.Save(imagePath, ImageFormat.Jpeg);

        }

        public static string ConvertImageToBase64(string imagePath)
        {
            using (Image image = Image.FromFile(imagePath))
            {
                using (MemoryStream memoryStream = new MemoryStream())
                {
                    // Lưu ảnh vào MemoryStream
                    image.Save(memoryStream, image.RawFormat);
                    byte[] imageBytes = memoryStream.ToArray();

                    // Chuyển đổi byte array sang string base64
                    return Convert.ToBase64String(imageBytes);
                }
            }
        }
        [HttpGet]
        public async Task<IActionResult> getPath()
        {
            return Ok(new { projectdirectory = Directory.GetCurrentDirectory(), rootdirectory = _env.WebRootPath});
        }

        public class CVLinkModel
        {
            public string cvLink { get; set; }
        }
    }



}
