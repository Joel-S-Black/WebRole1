<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MainsiteMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DatabaseObjectClass.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="ChangeableContent">
<%-- This section is redundant  (01.17.2015)  <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup> --%>

    <section class="contact"> 
        <header>
            <h3>Pastor's Ken Robinson's Phone:</h3>
        </header>
        <p>
            <span class="label">314.262.5459</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:<a href="mailto:jllblk@hotmail.com">Contact IT Director Joel Black</a></span>
        </p>
        <p>
            <span class="label">Marketing:<a href="mailto:gcollins5839@yahoo.com">Contact Pastor Gary Collins</a></span>
        </p>
        <p>
            <span class="label">General:<a href="mailto:Ken@therockstl.com">Email the Pastor, Ken Robinson</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            2420 S 12th Street, Saint Louis, MO 63104
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Business Office:</h3>
        </header>
        <p>Office Hours: Monday - Friday, 8:30 AM - 4:30 PM
        </p>
        <p>
            9825 Manchester Rd, Saint Louis, MO 63144
        </p>
        <p>Landline: 314.968.0600</p>
    </section>
</asp:Content>