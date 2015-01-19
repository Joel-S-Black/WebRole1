<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MainsiteMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DatabaseObjectClass._Default" %>

<%--<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit
                <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>--%>
<asp:Content runat="server" ID="HomePageContent" ContentPlaceHolderID="ChangeableContent" >
    <div class="mobilereadable">
        <h1>
            Welcome to the Rock in Soulard Website!

        </h1>

        <p>
            This site is currently under construction. To contact us, click the links below.

        </p>

        <%--  
            <asp:ImageButton ID="btnManagePeople" runat="server" 
                AlternateText="Click here to manage people in the database" 
                CssClass="imagebutton" ImageUrl="~/Images/F5EFCF/managePeopleButton.png"  
                PostBackURL="ManagePeople.aspx" />

            This button added 01.19.2015. It is commented out until the below page has places to go.
            --%>

    </div>
</asp:Content>
