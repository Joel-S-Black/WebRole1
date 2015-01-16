<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MainsiteMaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DatabaseObjectClass.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="ChangeableContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your contact page.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Pastor's Ken Robinson's Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>314.262.5459</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>314.262.5459</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:jllblk@hotmail.com">Contact IT Director Joel Black</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:gcollins5839@yahoo.com">Contact Pastor Gary Collins</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:Ken@therockstl.com">Email the Pastor, Ken Robinson</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            2420 S 12th Street<br />
            Saint Louis, MO 63104
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Business Office:</h3>
        </header>
        <p>Office Hours:<br />
            Monday - Friday<br />
            8:30 AM - 4:30 PM
        </p>
        <p>
            9825 Manchester Rd<br />
            Saint Louis, MO 63144
        </p>
        <p>314.968.0600</p>
    </section>
</asp:Content>