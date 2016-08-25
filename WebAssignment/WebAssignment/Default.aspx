<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebAssignment._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
    AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
    Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
            SortExpression="id" />
        <asp:BoundField DataField="product_category_id" 
            HeaderText="product_category_id" SortExpression="product_category_id" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:BoundField DataField="description" HeaderText="description" 
            SortExpression="description" />
        <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QuanLiBanHangConnectionString2 %>" 
    DeleteCommand="DELETE FROM [San_pham] WHERE [id] = @id" 
    InsertCommand="INSERT INTO [San_pham] ([id], [product_category_id], [name], [price], [description], [img]) VALUES (@id, @product_category_id, @name, @price, @description, @img)" 
    SelectCommand="SELECT [id], [product_category_id], [name], [price], [description], [img] FROM [San_pham]" 
    UpdateCommand="UPDATE [San_pham] SET [product_category_id] = @product_category_id, [name] = @name, [price] = @price, [description] = @description, [img] = @img WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="id" Type="Int32" />
        <asp:Parameter Name="product_category_id" Type="Int32" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="price" Type="Decimal" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="img" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="product_category_id" Type="Int32" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="price" Type="Decimal" />
        <asp:Parameter Name="description" Type="String" />
        <asp:Parameter Name="img" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
