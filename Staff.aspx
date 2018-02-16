<%@ Page Title="Staff Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">   
        <div class="col-md-4">
            <h2>In (To be Signed)</h2>
            <p>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                    <asp:ListItem>Sample Excel File</asp:ListItem>
                </asp:CheckBoxList>
            </p>
            <p>
                <input id="File1" type="file" /></p>
        </div>

        <div class="col-md-4">
            <h2>Out (Signed)</h2>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Excel 1</asp:ListItem>
                    <asp:ListItem>Excel 2</asp:ListItem>
                    <asp:ListItem>Excel 3</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <input id="File2" type="file" /></p>
            <p>
                &nbsp;</p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Register &raquo;</a></p>
        </div>
    </div>
</asp:Content>
