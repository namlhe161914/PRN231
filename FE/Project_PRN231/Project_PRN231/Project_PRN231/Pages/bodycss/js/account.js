
function checkAccount() {
    var regex = /^[a-z0-9]$/; // Allows lowercase letters, digits, underscores, and hyphens.
    var s_user = document.getElementById('username').value;
    if (!regex.test(s_user)) {
        document.getElementById("txtUserMessage").innerHTML = "Invalid user account exam:luanfptA123@";
    } else {
        document.getElementById("txtUserMessage").innerHTML = "";
    }
}
function checkPass() {
    var regex = /^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,32}$/;
    var pass = document.getElementById('password').value;
    if (!regex.test(pass)) {
        document.getElementById("txtPassMessage").innerHTML = "Password không hợp lệ exam:luanfptA123@";
    } else {
        document.getElementById("txtPassMessage").innerHTML = "";
    }
}

function checkRPass() {
    var regex = /^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,32}$/;
    var pass = document.getElementById('password').value;
    var repass = document.getElementById('repass').value;
    if (pass === repass) {
        document.getElementById("txtRPassMessage").innerHTML = "";
    } else {
        document.getElementById("txtRPassMessage").innerHTML = "Password không hợp lệ exam:luanfptA123@";
    }
}
function checkFirst() {
    var regex = /([a-zA-Z\s]+)$/;
    var s_first = document.getElementById('firstname').value;
    if (!regex.test(s_first)) {
        document.getElementById("txtFirstMessage").innerHTML = "First name has at least 1 characters";
    } else {
        document.getElementById("txtFirstMessage").innerHTML = "";
    }
}
function checkMiddle() {
    var regex = /([a-zA-Z\s]+)$/;
    var s_middle = document.getElementById('middlename').value;
    if (!regex.test(s_middle)) {
        document.getElementById("txtMiddleMessage").innerHTML = "Middle name has at least 1 characters";
    } else {
        document.getElementById("txtMiddleMessage").innerHTML = "";
    }
}
function checkLast() {
    var regex = /([a-zA-Z\s]+)$/;
    var lastname = document.getElementById('lastname').value;
    if (!regex.test(lastname)) {
        document.getElementById("txtLastNameMessage").innerHTML = "Last name has at least 1 characters";
    } else {
        document.getElementById("txtLastNameMessage").innerHTML = "";
    }
}
function checkAddress() {
    var regex = /([a-zA-Z\s]+)$/;
    var s_address = document.getElementById('address').value;
    if (!regex.test(s_address)) {
        document.getElementById("txtAddressMessage").innerHTML = "Address value is not in the correct format";
    } else {
        document.getElementById("txtAddressMessage").innerHTML = "";
    }
}
function checkEmail() {
    var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var mail = document.getElementById('email').value;
    if (!regex.test(mail)) {
        document.getElementById("txtEmailMessage").innerHTML = "Email value is not in the correct format";
    } else {
        document.getElementById("txtEmailMessage").innerHTML = "";
    }
}
function checkDate() {
    var regex = /^(1[89]|[2-9][0-9])\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/;
    var date = document.getElementById('date').value;
    if (regex.test(date)) {
        var birthday = new Date(date); // Khởi tạo một đối tượng
        var ageDiffMs = Date.now() - birthday.getTime(); // Tính khoảng thời gian giữa ngày hiện tại và ngày sinh
        var ageDate = new Date(ageDiffMs);
        var age = Math.abs(ageDate.getUTCFullYear() - 1970);
        // Tính toán số tuổi bằng cách lấy hiệu giữa năm hiện tại và năm 1970 (năm đầu tiên được hỗ trợ bởi hàm getUTCFullYear() của đối tượng Date).

        if (age < 18) {
            document.getElementById("txtDateMessage").innerHTML = "Requires you to be over 18 years old";
        } else {
            document.getElementById("txtDateMessage").innerHTML = "";
        }
    } else {
        document.getElementById("txtDateMessage").innerHTML = "Dates must be in the format yyyy-mm-dd";
    }
}
function checkPhone() {
    var regex = /^0\d{9,10}$/;
    var s_phone = document.getElementById('phone').value;
    if (!regex.test(s_phone)) {
        document.getElementById("txtPhoneMessage").innerHTML = "Invalid phone value";
    } else {
        document.getElementById("txtPhoneMessage").innerHTML = "";
    }
}

