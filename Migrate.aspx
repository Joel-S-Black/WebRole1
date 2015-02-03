<%@ Page Title="Migrate Data" Language="C#" MasterPageFile="~/MainsiteMaster.Master" AutoEventWireup="true" CodeBehind="Migrate.aspx.cs" Inherits="DatabaseObjectClass._Default" %>

<%-- The purpose of this page is to pull data for a sample database, add missing "required" pieces
    and send them to the test database. This will allow me to use Northwind's incomplete name and 
    addresses without hitting table constraints. --%>
<asp:Content runat="server" ID="HomePageContent" ContentPlaceHolderID="ChangeableContent" >
    <div class="mobilereadable">
        <%-- Title, Mr, Mrs, etc  --%>
        <asp:Label ID="lblTitle" runat="server" Text="Title:"></asp:Label>&nbsp;&nbsp;
        <asp:DropDownList ID="ddlTitle" runat="server"></asp:DropDownList>
        <%-- First name  --%>
        <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <%-- Middle name  --%>
        <asp:Label ID="lblMiddleName" runat="server" Text="Middle Name:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtMiddleName" runat="server"></asp:TextBox>
        <%-- Last name --%>
        <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <%-- Suffix, Sr, Jr, IV --%>
        <asp:Label ID="lblSuffix" runat="server" Text="Suffix:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtSuffix" runat="server"></asp:TextBox>
        <%-- Birthday, has a calendar control next to it --%>
        <asp:Label ID="lblBirthday" runat="server" Text="Birthday:"></asp:Label>&nbsp;&nbsp;
        <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
        <asp:Calendar ID="cldrBirthday" runat="server"></asp:Calendar>
        <%-- Gender, sex, male or female --%>
        <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>&nbsp;&nbsp;
        <asp:DropDownList ID="ddlGender" runat="server"></asp:DropDownList>
    </div>
</asp:Content>