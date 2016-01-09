<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="ClassiqWheels.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link href="../Styles/style.css" rel="stylesheet" />
    <h1>Administration</h1>
    <hr />
    <div class="fancy_container">
    <h3>Add a product:</h3>
   
    <p><asp:Label ID="LabelAddCategory" runat="server">Category:</asp:Label><br />
            <span>
                <asp:DropDownList ID="DropDownAddCategory" runat="server" 
                    ItemType="ClassiqWheels.Models.Category" 
                    SelectMethod="GetCategories" DataTextField="CategoryName" 
                    DataValueField="CategoryID" >
                </asp:DropDownList>
                </span>
        </p>
           
           <p><asp:Label ID="LabelAddName" runat="server">Name:</asp:Label><br />
             <span>
                <asp:TextBox ID="AddProductName" placeholder="Product Name..." runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Name required." ControlToValidate="AddProductName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </span>
           </p>
        
            <p><asp:Label ID="LabelAddDescription" placeholder="Product Description..." runat="server">Description:</asp:Label><br />
             <span>
                <asp:TextBox ID="AddProductDescription" placeholder="Product Description..." runat="server" Columns="40" Rows="5" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="* Description required" ControlToValidate="AddProductDescription" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
             </span>
            </p>
        
        
           <p> <asp:Label ID="LabelAddPrice" runat="server">Price:</asp:Label><br />
            <span>
                <asp:TextBox ID="AddProductPrice" placeholder="Price..." size="10px" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="* Price required" ControlToValidate="AddProductPrice" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* Must be a valid price without R." ControlToValidate="AddProductPrice" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
            </span>
                </p>
            <p><asp:Label ID="LabelAddImageFile" runat="server">Image File:</asp:Label><br />
            <span>
                <asp:FileUpload ID="ProductImage" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="* Image required." ControlToValidate="ProductImage" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </span>
        </p>
    
    
    <p></p>
    <asp:Button ID="AddProductButton" runat="server" Text="Add Product" OnClick="AddProductButton_Click"  CausesValidation="true"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    </div>

    
    <div class =" fancy_container">
    <h3>Remove Product:</h3>
    
            <p><asp:Label ID="LabelRemoveProduct" runat="server">Product:</asp:Label><br />
            <span><asp:DropDownList ID="DropDownRemoveProduct" runat="server" ItemType="ClassiqWheels.Models.Product" 
                    SelectMethod="GetProducts" AppendDataBoundItems="true" 
                    DataTextField="ProductName" DataValueField="ProductID" >
                </asp:DropDownList>
                </span>
            </p>
        
        
    <p></p>
    <asp:Button ID="RemoveProductButton" runat="server" Text="Remove Product" OnClick="RemoveProductButton_Click" CausesValidation="false"/>
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>