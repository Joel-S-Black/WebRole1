<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MainsiteMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DatabaseObjectClass.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="ChangeableContent">
    <hgroup class="title">
        <h1>About the Rock in Soulard</h1>
        
    </hgroup>
    <%--the below article will describe the Rock in Soulard using the Rock Church of Saint Louis' logo "Love God, Love People, Change the World" %>
    <article>
        <h3>Love God</h3>
        <p>        
            The Rock in Soulard believes that all people were created for God's glory.
        </p>

        <h3></h3>
        <p>        
            Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>
    </article>

   <%-- <aside>
        <h3>Site Map</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/Default.aspx">Home</a></li>
            <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>--%>
</asp:Content>