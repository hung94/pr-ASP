<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="WebAssignment.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <div class="content-wrapper">
            <img src="http://cdn.fptshop.com.vn/Uploads/Originals/2016/8/7/636061262617186804_H1-800x300-3.jpg" style="width: 960px" />
        </div>
        
    </hgroup>

    <article>
       <h1>Khách Hàng</h1>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
            AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="full_name" HeaderText="full_name" 
                    SortExpression="full_name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QuanLiBanHangConnectionString5 %>" 
            DeleteCommand="DELETE FROM [Khach_hang] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Khach_hang] ([id], [full_name], [email]) VALUES (@id, @full_name, @email)" 
            SelectCommand="SELECT [id], [full_name], [email] FROM [Khach_hang]" 
            UpdateCommand="UPDATE [Khach_hang] SET [full_name] = @full_name, [email] = @email WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="full_name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="full_name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </aside>
</asp:Content>