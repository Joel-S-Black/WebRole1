<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MainsiteMaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DatabaseObjectClass.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="ChangeableContent">
    <div class="mobilereadable">
        <%--   <hgroup class="title">
                    <h1>
                        About the Rock in Soulard
                    </h1>
                </hgroup> This section was taking up valuable space 01.17.2015 
         --%>

    <%--
        the below article will describe the Rock in Soulard using the Rock Church of Saint Louis' logo "Love God, Love People, Change the World" 
        --%>

        <article>
            <h3>
                Love God
            </h3>
            <p>        
                The Rock in Soulard believes that all people were created for God's glory (Colossians 1:3-16). 
                As God's creation, we are also told to "fear God and keep His commandments, for this is 
                the whole duty of man" (Ecclesiastes 12:13). Jesus Christ, our Lord and Savior, said that the
                greatest commandment of all was to love the Lord our God with all your heart and with all your 
                soul and with all your mind (Matthew 22:37). Loving God means putting what He wants above what we want. 
                This is explained in 1 Corinthians 13:4-7.
            </p>

            <h3>
                Love People
            </h3>
            <p>        
                After Jesus said that the most important commandment was to love God, He said, "And a second commandment
                is like it: you shall love your neighbor as yourself." Some people have said this means that you must love 
                yourself first; however, Ephesians 5:29 - 30 says, "For no one ever hated his own flesh, but nourishes and 
                cherishes it, just as Christ does the church, because we are members of his body." So, in spite of how we 
                feel about ourselves, God wants us to put others first. That's why our church has a number of ministries 
                focused on providing for the needs of others.
            </p>
            <h3>
                Change the World
            </h3>
            <p>        
                Year round, the Rock in Soulard serves a full meal every Sunday and has a ministry dedicated to getting and 
                giving free food those who need it. The Rock in Soulard also collects and distributes clothes and shoes to 
                the homeless via a truck that has clothing racks and bins. In the Spring, the Rock in Soulard's biggest 
                outreach is Mardi Gras, where we provide gloves, safe haven, and resources to Mardi Gras participants. In 
                the Summer, a one day community outreach with an outdoor concert called Faithfest is put on as well as 
                periodic street evangelism. In the Fall, the Rock in Soulard provides a family-friendly enviroment for 
                Halloween. Around Thanksgiving, the church hosts a Thanksgiving meal free of charge. In the winter, the 
                Rock in Soulard steps up the clothing outreach to make sure everyone needing a coat gets one. 
            </p>
            <%-- <p>
                The poor and underprivileged aren't our only target market. Christ's command to make disciples of all is 
                very important to us. In the Spring, the Rock in Soulard's biggest outreach is Mardi Gras, where we provide
                 gloves, safe haven, and resources to Mardi Gras participants. In the Summer, a one day community outreach 
                with an outdoor concert called Faithfest is put on. Recently, the Rock in Soulard partnered with another
                 ministry to support street evangelism during the summer as well. In the Fall, the Rock in Soulard provides
                 a family-friendly enviroment for Halloween, giving away candy, and hosting games so that families can get
                 out of the cold and hear the gospel of Jesus Christ. Around Thanksgiving, the church hosts a Thanksgiving 
                meal free of charge. In the winter, the Rock in Soulard steps up the clothing outreach to make sure everyone 
                needing a coat gets one. 
            </p> This code is commented out until the scrolling and footers can be fixed 
            <p>
                The Rock in Soulard is a church of doers. If you would like to participate in our ministries to help change
                 the world, feel free to come to one of our services listed below, or click the <a href="~/Contact.aspx">
                Contact Us</a> link below.
            </p> --%>
        </article>

         <%-- <aside>
            <h3>
                Site Map
            </h3>
            <p>        
                Use this area to provide additional information.
            </p>
            <ul>
                <li><a runat="server" href="~/Default.aspx">Home</a></li>
                <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
            </ul>
         </aside>--%>
    </div>
    
</asp:Content>