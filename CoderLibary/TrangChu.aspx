<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="CoderLibary._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="container" style="width: 90%;margin:auto;padding-top:1em;padding-bottom:1em;">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
<!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
     </ol>

    <!-- Wrapper for slides -->
   <div class="carousel-inner">
      <div class="item active">
        <img src="Images/img-carousel1.jpg" alt="" style="width:100%;">
      </div>
      <div class="item">
        <img src="Images/img-carousel2.jpg" alt="" style="width:100%;">
      </div>
      <div class="item">
        <img src="Images/img-carousel3.jpg" alt="" style="width:100%;">
      </div>
      <div class="item">
        <img src="Images/img-carousel4.jpg" alt="" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div style="float:left;margin-top:3em;margin-left:4em;">
    <p style="font-weight:bold;font-size:1.2em;">VỀ CÔNG TY</p>
    <p>Giới thiệu công ty</p>
    <p>Tuyển dụng</p>
    <p>Góc báo chí</p>
    <p>Chương trình đại lý</p>
    <p>Chính sách bảo mật</p>
</div>
<div style="float:left;margin-top:3em;margin-left:4em;">
    <p style="font-weight:bold;font-size:1.2em;">TRỢ GIÚP</p>
    <p>Quy định sử dụng</p>
    <p>Hướng dẫn mua hàng</p>
    <p>Phương thức thanh toán</p>
    <p>Phương thức vận chuyển</p>
    <p>Các câu hỏi thường gặp</p>
    <p>Bọc sách bằng bìa Plastic</p>
</div>
<div style="float:left;width:15%;margin-top:3em;margin-left:4em;">
    <p style="font-weight:bold;font-size:1.2em;">CHẤP NHẬN THANH TOÁN</p>
    <img src="Images/atm.jpg" />
    <img src="Images/cod.jpg"/>
    <img src="Images/jcb.jpg"/>
    <img src="Images/payoo.jpg" />
    <img src="Images/visa.jpg" />
    <img src="Images/master_card.jpg" />
</div>
<div style="float:left;width:15%;margin-top:3em;margin-left:4em;">
    <p style="font-weight:bold;font-size:1.2em;">ĐỐI TÁC VẬN CHUYỂN</p>
    <img src="Images/vn-post.jpg" />
    <img src="Images/dhl.jpg" />
</div>
<div style="float:left;width:15%;margin-top:3em;margin-left:4em;">
    <p style="font-weight:bold;font-size:1.2em;">ĐỐi TÁC BÁN HÀNG</p>
    <img src="Images/amazon.jpg" />
    <img src="Images/lazada.jpg" />
    <img src="Images/shopee.jpg" />
</div>
</asp:Content>
