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
                <asp:button class="btn btn-default" OnClick="login_click" runat="server" Text="Login"></asp:button>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Register</h2>
            <p>
                StaffID</p>
            <p>
                <asp:TextBox ID="RegisterStaffID_textbox" runat="server"></asp:TextBox>
            </p>
            <p>
                First Name</p>
            <p>
                <asp:TextBox ID="RegisterFirstName_textbox" runat="server"></asp:TextBox>
            </p>
            <p>
                Last Name</p>
            <p>
                <asp:TextBox ID="RegisterLastName_textbox" runat="server"></asp:TextBox>
            </p>
            <p>
                Password</p>
            <p>
                <asp:TextBox ID="RegisterPassword_textbox" runat="server"></asp:TextBox>
            </p>
            <p>
                Position</p>
            <p>
                <asp:DropDownList ID="RegisterPosition_DropDownList" runat="server">
                    <asp:ListItem>RIS</asp:ListItem>
                    <asp:ListItem>Researcher</asp:ListItem>
                    <asp:ListItem>Associate Dean</asp:ListItem>
                    <asp:ListItem>Dean</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:button class="btn btn-default" ID="Register_btn" runat="server"  OnClick="register_click" Text="Register" ></asp:button>
            </p>
        </div>
    </div>
</asp:Content>
