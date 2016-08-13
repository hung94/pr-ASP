<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebINT205._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>FPT Shop</h1>
                <img src="http://fptshop.com.vn/sam-oppo-kham-pha-ky-quan/Content/images/img-bg-big.jpg" style="
    width: 100%;
" alt="">
        </div>
    </section>
    <section class="content-wrapper">
            </hgroup>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLiBanHangConnectionString %>" DeleteCommand="DELETE FROM [sanpham] WHERE [ma_sanpham] = @ma_sanpham" InsertCommand="INSERT INTO [sanpham] ([ma_sanpham], [ma_chuyenmuc], [sku], [name], [price], [description], [img]) VALUES (@ma_sanpham, @ma_chuyenmuc, @sku, @name, @price, @description, @img)" SelectCommand="SELECT * FROM [sanpham]" UpdateCommand="UPDATE [sanpham] SET [ma_chuyenmuc] = @ma_chuyenmuc, [sku] = @sku, [name] = @name, [price] = @price, [description] = @description, [img] = @img WHERE [ma_sanpham] = @ma_sanpham">
                <DeleteParameters>
                    <asp:Parameter Name="ma_sanpham" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ma_sanpham" Type="Int32" />
                    <asp:Parameter Name="ma_chuyenmuc" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="Object" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ma_chuyenmuc" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="Object" />
                    <asp:Parameter Name="ma_sanpham" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            Danh Sách Sản Phẩm Mới<br />

            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" Height="50px" Width="960px">
                <Fields>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>

            <br />
            <br />
            Danh Mục Sản Phẩm<br />
            <br />
            <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ma_chuyenmuc" DataSourceID="SqlDataSource2" Height="50px" Width="960px">
                <Fields>
                    <asp:BoundField DataField="ma_chuyenmuc" HeaderText="ma_chuyenmuc" ReadOnly="True" SortExpression="ma_chuyenmuc" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="parent_category_id" HeaderText="parent_category_id" SortExpression="parent_category_id" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLiBanHangConnectionString4 %>" SelectCommand="SELECT DISTINCT * FROM [chuyenmuc]"></asp:SqlDataSource>

    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   
</asp:Content>
