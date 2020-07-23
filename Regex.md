# REGEX common
A list of my commonly used Regex

## Number
- Số nguyên:

  /^\d+$/
 
- Số thập phân: 

  /^\d*\.\d+$/
 
- Số nguyên và số thập phân: 

  /^\d*(\.\d+)?$/
 
- Số âm, số nguyên dương và số thập phân: 

  /^-?\d*(\.\d+)?$/
 
- Số nguyên, số thập phân và phân số: 

  /[-]?[0-9]+[,.]?[0-9]*([\/][0-9]+[,.]?[0-9]*)*/

## String
- Chữ cái và số không bao gồm khoảng trắng: 

/^[a-zA-Z0-9]*$/
 
- Chữ cái và số có bao gồm khoảng trắng: 

/^[a-zA-Z0-9 ]*$/

- Kiểm tra String bị trùng lặp: 

/(\b\w+\b)(?=.*\b\1\b)/

## Validator
- Email: 

/^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6})*$/

- Số trong nước
(^(?:[+0]9)?[0-9]{10,12}$)

- Số quốc tế: 

/^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/]?(?:#|ext\.?|extension|x)[\-\.\ \\\/]?(\d+))?$/

- Username

   Gồm chuỗi và số từ 3 đến 16 ký tự:

/^[a-z0-9_-]{3,16}$/

- Password

   Bao gồm cả chữ hoa, chữ thường, số, ký tự đặc biệt và ít nhất 8 kỹ tự: 

/(?=(.*[0-9]))(?=.*[\!@#$%^&*()\\[\]{}\-_+=~`|:;"'<>,./?])(?=.*[a-z])(?=(.*[A-Z]))(?=(.*)).{8,}/


## URL
- Bao gồm Http(s) Protocol: 

/https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#()?&//=]*)/ 
 
- có hoặc không có Http(s) Protocol đều được: 

/(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/

## HTML tag
/<\/?[\w\s]*>|<.+[\W]>/

## Slug
/^[a-z0-9]+(?:-[a-z0-9]+)*$/

## Path
- bao gồm tên và đuôi file:

/((\/|\\|\/\/|https?:\\\\|https?:\/\/)[a-z0-9 _@\-^!#$%&+={}.\/\\\[\]]+)+\.[a-z]+$/
 
- đường dẫn với tên file và extension có hoặc không có đều được:

/^(.+)/([^/]+)$/

## Username from url
- Kiểm tra URL trang cá nhân FB:

/(?:http:\/\/)?(?:www\.)?facebook\.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[\w\-]*\/)*([\w\-]*)/

