<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1.aspx.cs" Inherits="Crudeoperation.Demo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>



<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="card shadow-buttom-2" style="height: 200px; border: 2px solid">
                <div class="card-header">
                    <h1>Search Field</h1>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-3">
                            <asp:Label runat="server" ID="Label8">Search By Mobile</asp:Label>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox runat="server" ID="txtNo" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-primary" Text="Search" Placeholder="Search By Name" OnClick="btnSearch_Click" />
                        </div>
                    </div>
                </div>

            </div>
            <div class="card" style="border: 2px solid">
                <div class="card-header">
                    <h1>Registration Field</h1>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-6 mb-4">
                            <asp:Label runat="server" ID="lbl2">Full Name</asp:Label>
                            <asp:TextBox runat="server" ID="textname" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div class="col-sm-6 mb-4">
                            <asp:Label runat="server" ID="Label1">Mobile</asp:Label>
                            <asp:TextBox runat="server" ID="txtMobile" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div class="col-sm-6 mb-4">
                            <asp:Label runat="server" ID="Label2">Address</asp:Label>
                            <asp:TextBox runat="server" ID="txtaddress" CssClass="form-control"></asp:TextBox>

                        </div>

                        <div class="col-sm-6 mb-4">
                            <asp:Label runat="server" ID="Label3">Email</asp:Label>
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div class="col-sm-6 mb-4">
                            <asp:Label runat="server" ID="Label4">DOB</asp:Label>
                            <asp:TextBox runat="server" TextMode="Date" ID="txtDob" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div class="col-sm-6 mb-4">
                            <asp:Label runat="server" ID="Label5">Country</asp:Label>
                            <asp:DropDownList runat="server" ID="ddlcountry" CssClass="form-control">
                                <asp:ListItem Text="India" Value="1"></asp:ListItem>
                                <asp:ListItem Text="USA" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Astruya" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Japan" Value="4"></asp:ListItem>
                                <asp:ListItem Text="Shrilanka" Value="5"></asp:ListItem>
                                <asp:ListItem Text="France" Value="6"></asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-6 mb-4">
                            <asp:Label runat="server" ID="Label6">Gender</asp:Label>
                            <asp:RadioButtonList runat="server" CssClass="" ID="Rdgender">
                                <asp:ListItem Value="0" Text="Male"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Female"></asp:ListItem>

                            </asp:RadioButtonList>
                        </div>
                        <div class="col-sm-6 mb-4">
                            <asp:Label runat="server" ID="Label7">Subject</asp:Label>
                            <asp:CheckBoxList runat="server" CssClass="" ID="ChSubject">
                                <asp:ListItem Value="0" Text="Programmeing"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Math"></asp:ListItem>

                            </asp:CheckBoxList>
                        </div>
                        <div class="col-sm-4 mb-4">
                            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnSubmit" Text="Insert" OnClick="btnSubmit_Click" />
                            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="container  mt-4" style="height:400px; overflow:scroll; border:2px solid">
                <asp:GridView runat="server" ID="gridview1" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                    <Columns>

                    </Columns>
                </asp:GridView>
            </div>

        </div>
    </form>
</body>
</html>
