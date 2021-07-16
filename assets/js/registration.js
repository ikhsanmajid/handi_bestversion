var base_url = window.location.origin 

//flash
$("#flashMessage").hide()

function gantiNoReg(){
    $.ajax({
        url: base_url+"/handi_bestversion/backend/register.php?request=cekUsername",
        data: "",
        type: "POST",
        success: function (data) {
            $("#noreg").val("")
            $("#noreg").val(padLeadingZeros(parseInt(data) + 1, 7))
        }
    })
}

function padLeadingZeros(num, size) {
        var s = num + "";
        while (s.length < size) s = "0" + s;
        return s;
    }


$("#registerMe").click(function () {
    if ($("#noreg").val() == "" || $("#password").val() == "" || $("#nama").val() == "" || $("#alamat").val() == "" || $("#phone").val() == "") {
        $("#flashMessage").show()
        $("#flashMessage").html("<p style='color: red; font-weight= 'bold';'>User gagal ditambahkan ! Error : Silakan melengkapi semua data<p>")
        setTimeout(function () {
            $("#flashMessage").hide()
        }, 5000)
    } else {
        $.ajax({
            url: base_url+"/handi_bestversion/backend/register.php?request=register",
            data: {
                noRegistration: $("#noreg").val(),
                password: $("#password").val(),
                namaLengkap: $("#nama").val(),
                jenisKelamin: $("#jenisKelamin").val(),
                alamat: $("#alamat").val(),
                noTelepon: $("#phone").val()
            },
            type: "POST",
            success: function (data) {
                if (data == "sukses") {
                    $("#flashMessage").show()
                    password: $("#password").val("")
                    namaLengkap: $("#nama").val("")
                    alamat: $("#alamat").val("")
                    noTelepon: $("#phone").val("")
                    $("#flashMessage").html("<p style='color: #5fee9b;'><b>User berhasil ditambahkan, silakan Login menggunakan akun anda<b><p>")
                    gantiNoReg()
                    setTimeout(function () {
                        $("#flashMessage").hide()
                    }, 10000)
                }
                if (data == "duplikasi") {
                    $("#flashMessage").show()
                    $("#flashMessage").html("<p style='color: red;'><b>User gagal ditambahkan ! Error : Duplikasi data silakan klik register kembali tanpa merubah data<b><p>")
                    gantiNoReg()
                    setTimeout(function () {
                        $("#flashMessage").hide()
                    }, 10000)
                }
                if (data == "error") {
                    $("#flashMessage").show()
                    $("#flashMessage").html("<p style='color: red;'><b>User gagal ditambahkan ! Error : Backend error<b><p>")
                    setTimeout(function () {
                        $("#flashMessage").hide()
                    }, 10000)
                }
            }
        })
    }
})

$(document).ready(function () {

    $("#showPassword").change(function () {
        if ($("#showPassword")[0].checked) {
            $("#password")[0].type = "text"
        } else {
            $("#password")[0].type = "password"
        }
    })

    $.ajax({
        url: base_url+"/handi_bestversion/backend/register.php?request=cekUsername",
        data: "",
        type: "POST",
        success: function (data) {
            $("#noreg").val(padLeadingZeros(parseInt(data) + 1, 7))
            //$.post("http://localhost/handi_bestversion/backend/register.php?request=setTempNoReg", {"temp"})
        }
    })

})