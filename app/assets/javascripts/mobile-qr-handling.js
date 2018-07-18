function read(a)
{
    $.ajax({
        url : "/menu",
        type : "post",
        data : { number: a }
    });
    // document.getElementById("demo").innerHTML= a;
}

function scan_qr()
{
    var fileInput = document.getElementById('file-input');
    var files = fileInput.files;
    var imgUrl = URL.createObjectURL(files[0]);
    qrcode.callback = read;
    qrcode.decode(imgUrl);
}

