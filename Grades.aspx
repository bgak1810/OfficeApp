<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Grades.aspx.cs" Inherits="OfficeApp.Grades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="shadow p-4 mb-4 bg-white">
        <div class="badge badge-primary">Grades</div>
        <div>
            <br />
        </div>

    <!--will show the list of Departments-->
        <!--Add / Edit / Delete Department button will open a popup and will be able to add the department-->
        <div style="vertical-align: text-bottom; text-align: right">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Add
            </button>
        </div>
        <div>
            <br />
        </div>
        <table class="table-striped border-success">
            <thead>
                <tr>
                    <th data-field="id">
                        <span class="text-success">Grade Id
                        </span>
                    </th>
                    <th data-field="name">
                        <span class="text-success">Grade Name 
                        </span>
                    </th>
                   
                    <th data-field="action">
                        <span class="text-success">Action
                        </span>
                    </th>
                   
                    
                </tr>
            </thead>
        </table>

        <!-- The Modal -->
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Department</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="Department">Department:</label>
                            <input type="text" class="form-control form-control-sm" id="Department" placeholder="Enter Department" name="Department" required maxlength="30">
                            <div class="valid-feedback">Valid.</div>
                            <div class="invalid-feedback">Please fill out this field.</div>
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>

    </div>


 


    <!-- Include the file where the JSON data is stored -->
    <script type="text/javascript"
        src="Transactions/departments.js">
    </script>
    <script type="text/javascript">
        $(document).ready(function () {

            // Use the given data to create 
            // the table and display it
            $('table').bootstrapTable({
                data: mydata
            });
        });

        // Parse the imported data as JSON
        // and store it
        var mydata = JSON.parse(da)
    </script>
</asp:Content>
