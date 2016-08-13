<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="WebINT205.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="lienhetrai" style="width:48%;float:left">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.6951287309294!2d106.69718086421454!3d10.75796301247732!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f1318b3ff7b%3A0x1112e5fe5c6b69ca!2sFPT+Shop!5e0!3m2!1sen!2s!4v1471060053815" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>

    </div>
    <div class ="lienhephai" style="width:48%;float:right">
          <hgroup class="title">
        <h2>Mọi thắc mắc xin liên hệ</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện thoại:</h3>
        </header>
        <p>
            <span class="label">Điện thoại:</span> <span>&nbsp;<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(239, 239, 239);"><span class="Apple-converted-space">&nbsp;</span>08.73023456</span></span>
        </p>
        <p>
            <span class="label">Fax:</span>
            <span>08.39435773</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@example.com">cskh@fptshop.com.vn</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@fptshop.com</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:General@example.com">General@fptshop.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            FPT SHOP<br />
            Công Ty Cổ Phần Bán Lẻ Kỹ Thuật Số FPT - 261,263 Khánh Hội, P5, Q4, TP. Hồ Chí Minh.
        </p>
    </section>
        Ý kiến khách hàng <input type="text" placeholder="Nhập email của bạn" /><br />
        <input type="submit" value="Gửi" />
    </div>
</asp:Content>