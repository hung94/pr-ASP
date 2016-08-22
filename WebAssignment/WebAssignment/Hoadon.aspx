<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="WebAssignment.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <div class="content-wrapper">
            <img src="http://cdn.fptshop.com.vn/Uploads/Originals/2016/8/7/636061262617186804_H1-800x300-3.jpg" style="width: 960px" />
        </div>
    </hgroup>

    <article>
        <h1>Đơn Hàng&nbsp;</h1>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
            AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="purchase_no" HeaderText="purchase_no" 
                    SortExpression="purchase_no" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="client_id" HeaderText="client_id" 
                    SortExpression="client_id" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:QuanLiBanHangConnectionString6 %>" 
            DeleteCommand="DELETE FROM [Don_hang] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Don_hang] ([purchase_no], [id], [client_id]) VALUES (@purchase_no, @id, @client_id)" 
            SelectCommand="SELECT [purchase_no], [id], [client_id] FROM [Don_hang]" 
            UpdateCommand="UPDATE [Don_hang] SET [purchase_no] = @purchase_no, [client_id] = @client_id WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="purchase_no" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="client_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="purchase_no" Type="String" />
                <asp:Parameter Name="client_id" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </aside>
</asp:Content>