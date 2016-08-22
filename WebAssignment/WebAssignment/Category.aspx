<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="WebAssignment.About" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
       <div class="content-wrapper">
            <img src="http://cdn.fptshop.com.vn/Uploads/Originals/2016/8/7/636061262617186804_H1-800x300-3.jpg" style="width: 960px" />
        </div>
    </hgroup>

    <article>
        <h1>Danh Mục</h1>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
            AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="parent_category_id" HeaderText="parent_category_id" 
                    SortExpression="parent_category_id" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QuanLiBanHangConnectionString4 %>" 
            DeleteCommand="DELETE FROM [Danh_muc] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Danh_muc] ([id], [name], [parent_category_id]) VALUES (@id, @name, @parent_category_id)" 
            SelectCommand="SELECT [id], [name], [parent_category_id] FROM [Danh_muc]" 
            UpdateCommand="UPDATE [Danh_muc] SET [name] = @name, [parent_category_id] = @parent_category_id WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="parent_category_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="parent_category_id" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </aside>
</asp:Content>