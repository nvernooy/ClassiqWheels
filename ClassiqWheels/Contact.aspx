
<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ClassiqWheels.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Styles/style.css" rel="stylesheet" />
     <div id="site_content">	
            <div class="fancy_container ">       
             <h1>Contact</h1>


            <input type="hidden"/>

            <p>Your Name (required)<br />
            <span>
            <input type="text" name="your-name" placeholder="Your name..." value="" size="40"/>
            </span> 
            </p>
            <p>Your Email (required)<br />
            <span><input type="email" name="your-email" placeholder="Your email address..." value="" size="40" /></span> </p>


            <p>Your Phone Number (Optional)<br />
            <span><input type="text" name="your-phone" placeholder="Your Phone Number..." value="" size="40" /></span> </p>

            <p>Subject<br />
            <span><input type="text" name="your-subject" placeholder="Your Subject..." value="" size="40"  /></span> </p>
            <p>Your Message<br />
            <span><textarea name="your-message" placeholder="Your message..." cols="40" rows="10"></textarea></span> </p>
            <p><input type="submit" value="Send"/></p>


            </div>	        
	
          <div class="fancy_container ">  

              <div>
                  <h2>Contact Information</h2>
            <address>
                142 On Main <br />
                Observatory
                Cape Town
                7701<br />
                <abbr title="Phone Number">P:</abbr>
                (021)650 1424
            </address>
                <address>
                <strong>Support:</strong>   <a href="mailto:Support@classiqwheels.co.za">Support@classiqwheels.co.za</a><br />
                <strong>Marketing:</strong> <a href="mailto:Marketing@classiqwheels.co.za">Marketing@classiqwheels.co.za</a>
            </address>
                </div>
	          </div> 	
         </div> 
  
  
    </body> 
        

</asp:Content>