<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OfficeApp.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="shadow p-4 mb-4 bg-white">
        <br />
        <div class="badge badge-primary">Login</div>
        <div>
            <br />
        </div>
        <div class="form-group">
            <label for="uname">Username:</label>
            <input type="email" class="form-control form-control-sm" id="uname" placeholder="Enter username" name="uname" required maxlength="30">
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control form-control-sm" id="pwd" placeholder="Enter password" name="pswd" required maxlength="30">
            <div class="valid-feedback">Valid.</div>
            <div class="invalid-feedback">Please fill out this field.</div>
        </div>

        <button type="button" class="btn btn-primary" id="btnsubmit">Submit</button>
    </div>

    <script>
        // Disable form submissions if there are invalid fields
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Get the forms we want to add validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('button', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        console.log("validation "+ validation);
                        form.classList.add('was-validated');
                        
                    }, false);
                    console.log("validation 2 " + validation);
                });
            }, false);
           
           
        })();

        var uname = "", pwd = "";
        $("#btnsubmit").click(function () {
           
            uname = $("#uname").val();
            pwd = $("#pwd").val();
           
            if (uname != "" && pwd != "") {
                localStorage.setItem("id", uname);
                window.location.href = "organization.aspx";
            }

        })
    </script>

</asp:Content>
