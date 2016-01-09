<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" 
AutoEventWireup="true" 
 CodeBehind="ProductList.aspx.cs" Inherits="ClassiqWheels.ProductList" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> <link href="../Styles/style.css" rel="stylesheet" />
     <section> 
         <div class="fancy_container"> 

             <h1><%:Page.Title %></h1>  
             <asp:ListView ID="productList" runat="server" DataKeyNames="ProductID" GroupItemCount="1" ItemType="ClassiqWheels.Models.Product" SelectMethod="GetProducts"> 
                 <EmptyDataTemplate> 
                     <table > 
                     <tr> 
                     <td>No Products Available.</td> 
                     </tr> 
                     </table> 
                 </EmptyDataTemplate> 
                 <EmptyItemTemplate> 
                 <td/> 
                 </EmptyItemTemplate> 

                 <GroupTemplate> 
                 <tr id="itemPlaceholderContainer" runat="server"> 
                 <td id="itemPlaceholder" runat="server"></td> 
                 </tr> 
                 </GroupTemplate> 

                 <ItemTemplate> 

                 <td runat="server"> 
                 <div class ="info">
                 <table> 
                 <tr> 
                 <td> 
 
                 <img src="/Catalog/Images/Thumbs/<%#:Item.ImagePath%>" width="300" height="200" style="border: solid thin;" /> 
                 </td> 
 
                 <td>
                 <div id="cellstring">
                 <h3><%#:Item.ProductName%></h3>               
                 <p><b>Description: </b><%#:Item.Description%><p>
                <p><b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%> </p>
                 <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>" class="btn btn-default" style="background-color:darkred"> 
                 <b>Add To Cart<b> 
                      
 
                 </a>
                 </td>
                     </div> 
                 </tr> 
                 <tr> 
                 <td>&nbsp;</td> 
                 </tr> 
                 </table> 
                         </div>
                </p> 
                 </td> 
                 </ItemTemplate> 

                 <LayoutTemplate> 
                 <table style="width:100%;"> 
                 <tbody> 
                 <tr> 
                 <td> 
                 <table id="groupPlaceholderContainer" 
                runat="server" style="width:100%"> 
                 <tr id="groupPlaceholder"></tr> 
                 </table> 
                 </td> 
                 </tr> 
                <tr> 
                 <td></td> 
                 </tr> 
                <tr></tr> 
                 </tbody> 
                 </table> 
                 </LayoutTemplate> 
             </asp:ListView> 
         </div> 
     </section> 
</asp:Content>
