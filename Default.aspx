<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <h2>Login</h2>
            <p>
                StaffID</p>
            <p>
                <asp:TextBox ID="LoginStaffID_textbox" runat="server"></asp:TextBox>
            </p>
            <p>
                Password</p>
            <p>
                <asp:TextBox ID="LoginPassword_textbox" runat="server"></asp:TextBox>
            </p>
            <p>
                <a class="btn btn-default" OnClick="login_click" href="https://go.microsoft.com/fwlink/?LinkId=301948">Login &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Register</h2>
            <p>
                StaffID</p>
            <p>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
            <p>
                First Name</p>
            <p>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </p>
            <p>
                Last Name</p>
            <p>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </p>
            <p>
                Password</p>
            <p>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </p>
            <p>
                Position</p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>RIS</asp:ListItem>
                    <asp:ListItem>Associate Dean</asp:ListItem>
                    <asp:ListItem>Dean</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Register &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
