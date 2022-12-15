<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BransBakery_JustinLazarev._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="intro">
    <h1 class="subheading">Home</h1>
  <p>Welcome to the Bran's Bakery website! Here at Bran's Bakery, all of out
    products are made fresh in house, everyday. We use the finest ingrediants
    to make our bread. We make our own flour using our stone mill. We then
    lovingly create each loaf in our wood-fire oven. Our pastries are lovingly
    hand crafted each day by our artisan patisserie chefs. Some of our most
    popular breads and pastries are shown below. We also make different seasonal
    creations that you can check out in store.</p>
</div>
      
    <h2 class="subheading">Our Products</h2>
<div class="slideshow-container">
    <div class="mySlides fade">
    <div class="littlenum">1 / 8</div>
    <img src="BBImages/bread1.jpg" alt="SeedSourdough" style="width:100%">
    <div class="text">Our Seeded Sourdough Bread - $3.50 - Our Most Popular Bread!</div>
</div>

<div class="mySlides fade">
    <div class="littlenum">2 / 8</div>
    <img src="BBImages/bread2.jpg" alt="Brown" style="width:100%">
    <div class="text">Brown  Sodabread - $4.00 - Our healthier option!</div>
</div>

<div class="mySlides fade">
   <div class="littlenum">3 / 8</div>
   <img src="BBImages/bread3.jpg" alt="Wholegrain" style="width:100%">
   <div class="text">Wholegrain Bread - $4.20 - Our favourite with jam!</div>
</div>

<div class="mySlides fade">
   <div class="littlenum">4 / 8</div>
   <img src="BBImages/bread4.jpg" alt="White" style="width:100%">
   <div class="text">Our White Bread - $3.70 - Perfect with a savoury pairing.</div>
</div>

<div class="mySlides fade">
   <div class="littlenum">5 / 8</div>
   <img src="BBImages/pastry1.jpg" alt="Croissant" style="width:100%">
   <div class="text">Our Croissants - $2.20 - Excellent with a coffee or just by themselves!</div>
</div>

<div class="mySlides fade">
   <div class="littlenum">6 / 8</div>
   <img src="BBImages/pastry2.jpg" alt="PainChoclat" style="width:100%">
   <div class="text">Our Pain au Choclat - $2.50 - A much loved classic.</div>
</div>

<div class="mySlides fade">
   <div class="littlenum">7 / 8</div>
   <img src="BBImages/pastry3.jpg" alt="Cookie" style="width:100%">
   <div class="text">Our Cookies - $2.00 - You cannot go wrong with these!</div>
</div>

<div class="mySlides fade">
   <div class="littlenum">8 / 8</div>
   <img src="BBImages/pastry4.jpg" alt="Scone" style="width:100%">
   <div class="text">Scones - $2.10 - Choose instore from our different daily flavours.</div>
</div>


  <a class="prev" onclick="plusSlides(-1)"><</a>
  <a class="next" onclick="plusSlides(1)">></a>
  </div>
<br>
<!-- The dots/circles -->
<div style="text-align:center">
 <span class="dot" onclick="currentSlide(1)"></span>
 <span class="dot" onclick="currentSlide(2)"></span>
 <span class="dot" onclick="currentSlide(3)"></span>
 <span class="dot" onclick="currentSlide(4)"></span>
 <span class="dot" onclick="currentSlide(5)"></span>
 <span class="dot" onclick="currentSlide(6)"></span>
 <span class="dot" onclick="currentSlide(7)"></span>
 <span class="dot" onclick="currentSlide(8)"></span>
</div>

<script src="defaultjv.js"></script>

</asp:Content>
