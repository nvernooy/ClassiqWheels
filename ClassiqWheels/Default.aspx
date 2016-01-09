<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClassiqWheels._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Styles/style.css" rel="stylesheet" />
    <div>
       <!-- Write your comments here <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-large">Learn more &raquo;</a></p> 
             -->
    <script src="../Styles/js-image-slider.js"></script>
    <link href="../Styles/js-image-slider.css" rel="stylesheet" />
  

        <div id="sliderFrame">
        <div id="ribbon"></div>
        <div id="slider">
            <img src="../Catalog/Promo1.jpg"  style="vertical-align:middle" />
            <img src="../Catalog/Promo2.jpg" style="vertical-align:middle" />
            <img src="../Catalog/Promo3.jpg" style="vertical-align:middle" />
            <img src="../Catalog/Promo4.jpg" style="vertical-align:middle" />
            <img src="../Catalog/Promo5.jpg" style="vertical-align:middle" />
            <img src="../Catalog/Promo6.jpg" style="vertical-align:middle" />
        </div>
            </div>
        <div id="thumbs">
            <div class="thumb">
            <img src="../Catalog/Promo1.jpg"  style="vertical-align:middle" />
            <img src="../Catalog/Promo2.jpg" style="vertical-align:middle" />
            <img src="../Catalog/Promo3.jpg" style="vertical-align:middle" />
            <img src="../Catalog/Promo4.jpg" style="vertical-align:middle" />
            <img src="../Catalog/Promo5.jpg" style="vertical-align:middle" />
            <img src="../Catalog/Promo6.jpg" style="vertical-align:middle" />
            </div>          
            <br />
            <br />
        </div>
   

    </div>

    <div class="row">
        <div class="col-md-4">
           <div class="fancy_container">
            <h2>Having privacy concerns?</h2>
            <p>Then check out our privacy policy.</p>
            <p>
                We have a full in detail privacy policy which will cover all of your concerns.
            </p>
            <p>
                <a class="btn btn-default" href="About#privpolicy.aspx" style="background-color:darkred">Learn more &raquo;</a>
            </p>
               </div>
        </div>

        <div class="col-md-4">
            <div class="fancy_container">
            <h2>Want to know about us?</h2>
            <p>
               Classiq Wheels is an online car dealership that buys old classic cars, refurbishes them and sells them to clients
         both locally and internationally...
            </p>
            <p>
                <a class="btn btn-default" href="About.aspx" style="background-color:darkred">Learn more &raquo;</a>
            </p>
        </div>
             </div>
        <div class="col-md-4">
            <div class="fancy_container">
            <h2>Need help?</h2>
            <p>Check out our FAQ section where we answer all of the most comman questions.</p>
            
            <p>
                <a class="btn btn-default" href="FAQ.aspx" style="background-color:darkred">Learn more &raquo;</a>
            </p>
        </div>
             </div>
    </div>

</asp:Content>
