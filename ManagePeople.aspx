<%@ Page Title="Manage People in the Database" Language="C#" MasterPageFile="~/MainsiteMaster.Master" AutoEventWireup="true" CodeBehind="ManagePeople.aspx.cs" Inherits="DatabaseObjectClass.WebForm1" %>
<%--  Not needed (01.19.2015)
<asp:Content ID="Content1" ContentPlaceHolderID="PageTopContent" runat="server">
</asp:Content>
    --%>
<asp:Content ID="ManagePeople" ContentPlaceHolderID="ChangeableContent" runat="server">
    <div id="ImageButtonWrapper" class="centeredcontent">
        <asp:ImageButton ID="btnAddAdult" runat="server" AlternateText="Click here to add an adult to the database" CssClass="imagebutton" ImageUrl="~/Images/F5EFCF/addAdultButton.png"  />
        <asp:ImageButton ID="btnAddChild" runat="server" AlternateText="Click here to add a child to the database" CssClass="imagebutton" ImageUrl="~/Images/F5EFCF/addChildButton.png" />
        <asp:ImageButton ID="btnFindPerson" runat="server" AlternateText="Click here to find a person in the database" CssClass="imagebutton" ImageUrl="~/Images/F5EFCF/findPersonButton.png" />
        <asp:ImageButton ID="btnEditPerson" runat="server" AlternateText="Click here to edit a person in the database" CssClass="imagebutton" ImageUrl="~/Images/F5EFCF/editPersonButton.png" />
    </div>
<%-- Not needed now (01.19.2015)
    <asp:ImageButton ID="ImageButton1" runat="server" />
    --%>
</asp:Content>
<%-- Not needed (01.19.2015)
    <asp:Content ID="Content3" runat="server" ContentPlaceHolderID="PageBottomContent" runat="server">

</asp:Content>
    --%>
