<%@ page import="org.w3c.dom.stylesheets.LinkStyle" %>
<%@ page import="java.util.List" %>
<%@ page import="model.bean.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Kien Nguyen
  Date: 12/11/2023
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% List<Product> data = (List<Product>) request.getAttribute("data");
    if(data == null) data = new ArrayList<>();
%>
<html>
<head>
    <title>ProductDetails</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/product.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,500&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alumni+Sans+Inline+One&display=swap" rel="stylesheet">
    <style>
        .small-img-group {
            display: flex;
            justify-content: space-between;
        }

        .small-img-col {
            flex-basis: 24%;
            cursor: pointer;
        }



    </style>
</head>
<body>
<div id="menubar" class="menu sticky-top" >
    <ul class="d-flex m-0">

        <li class="logo me-4 my-auto">
            <img src="../../images/logo.png" style="width: 12vh">

        </li>
        <li class="item times p-4 my-auto">
            <a href="#carouselExampleCaptions" >Trang chủ</a>
        </li>
        <li class="item sanpham p-4 dropdown my-auto">
            <a href="#"  class = "title_sp">Sản phẩm <i class="fa-solid fa-caret-down"></i></a>
            <ul class="sub_menu dropdown-menu">
                <li>
                    <a href="#thiep" class="item sp1 dropdown-item " >Thiệp HandMade Vintage</a>
                </li>
                <li>
                    <a href="#anh" class="item sp2 dropdown-item" >Scrapbook,Album Ảnh</a>
                </li>
                <li>
                    <a href="#sotay" class="item sp3 dropdown-item" >Sổ ghi chép, sổ tay</a>
                </li>

                <li>
                    <a href="#decore" class="item sp4 dropdown-item" >Đồ decore trang trí nhà,cafe,Homestay</a>
                </li>
                <li>
                    <a href="#nguyenlieu" class="item sp5 dropdown-item" >Nguyên vật liệu,phụ kiện dụng cụ</a>
                </li>

            </ul>
        </li>
        <li class="item bikip p-4 my-auto">
            <a href="#bikip" >Bí kíp làm đồ HandMade</a>
        </li>
        <li class="item footers p-4 my-auto">
            <a href="#footer " >Về chúng tôi</a>
        </li>

        <li class="search d-flex p-4 my-auto mx-5">
            <i class="fa-solid fa-magnifying-glass" style="color: white;"></i>
            <input type="text" placeholder="Bạn tìm gì...">

        </li>
        <li class="login p-4 my-auto">
            <i class="fa-solid fa-user" style="color: #496088;"></i>
            <a href="../../Login/view_login/login.jsp">Đăng Nhập</a>
        </li>
        <li class="cart p-4 dropdown my-auto">
            <i class="fa-solid fa-cart-shopping" style="color: #2a3241;"></i>
            <a href="../../CartPage/cart.html" >Giỏ Hàng</a>
        </li>
    </ul>
</div>
<!-- Nội dung Product-details-->
<!-- Thẻ navigation   -->
<section class="product-details container  pt-2">

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb ">
            <li class="breadcrumb-item"><a href="../../MainPage/view_mainpage/mainpage.jsp">Home</a></li>
            <li class="breadcrumb-item"><a href="../../MainPage/view_mainpage/mainpage.jsp">Scrapbook, Album Ảnh</a> </li>
            <li class="breadcrumb-item active" aria-current="page">Scrapbook album ảnh handmade Retro Clock</li>
        </ol>
    </nav>
    <div class="row mt-3 ">
        <!--  zoom container start-->
        <div class="xzoom-container col-lg-5 col-md-12 col-12">
            <img class="img-fluid w-100 pb-1 xzoom " id="MainImg" src="../../images/anh1.webp"   alt="">
            <div class="small-img-group">
                <div class="small-img-col">
                    <img src="../../images/anh1.webp" width="100%" class="small-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="../../images/anh1.webp" width="100%" class="small-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="../../images/anh1.webp" width="100%" class="small-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="../../images/anh1.webp" width="100%" class="small-img" alt="">
                </div>


            </div>

        </div>
        <div class="col-lg-7 col-md-12 col-12 right-pd">
            <% for (Product p: data) { %>
            <h3 class=""><%= p.getName()%></h3>
            <div class="d-flex rate-content" >
                <div class="icon-rate me-3">
                    <i class="bi bi-star "></i>
                    <i class="bi bi-star"></i>
                    <i class="bi bi-star"></i>
                    <i class="bi bi-star"></i>
                    <i class="bi bi-star"></i></div>
                <a href="#rating-comment">Đánh giá của bạn</a>

            </div>
            <div class="state-pd my-2">
                <label class="me-2 gray-content">Trạng thái: </label>
                <span><%=p.getStatus()%></span>
            </div>
            <h2 class="price-pd mb-4">
                <%=p.getSellingPrice()%></h2>

            <div class="row">
                <div class="quantity-pd mb-4 col-4">
                    <label  class="me-2" >Số lượng: </label>
                    <div class="qu-value">
                        <button class="pd-des m-0">-</button>
                        <input type="text" class="quantity-input p-0" value="1">
                        <button class="pd-inc m-0">+</button>
                    </div>
                </div>

                <button class="buy-btn col-4">Thêm vào giỏ hàng</button>
            </div>
            <hr class="mx-auto">
            <h4 class=" mt-4 mb-4 ">Chi tiết sản phẩm</h4>
            <span class="gray-content">

              <%=p.getDescription() %>
                <%}%>
            </span>
        </div>
    </div>


</section>
<section class="product-description container mt-5">
    <h4 >Giới thiệu sản phẩm</h4>
    <hr class="mx-auto under">

    <div class="content-descr container">
        <p>- <strong>Scrapbook </strong> được định nghĩa là một cuốn sổ lưu niệm tự thiết kế dùng để lưu giữ thông tin đến chủ sở hữu, gia đình và bạn bè. Scrapbook lưu giữ hình ảnh, hay cả những tác phẩm nghệ thuật. Đồng thời, album Scrapbook được trang trí và lưu lại bút ký của bạn, bạn bè hoặc bất cứ ai.</p>
        <p>- Nó được làm hoàn toàn từ 100% giấy tái chế, có thể tái chế, phân hủy sinh học và có thể phân hủy sinh học. Tấm bìa được làm từ giấy cứng để đảm bảo độ chắc chắn và bảo vệ trang bên trong. Tất cả được ghép lại bằng dây kim loại. </p>
        <div class="d-flex flex-column justify-content-center">
            <img src="../../images/scrapbook-intro.jpg" alt="" class=" img-thumbnail mx-auto w-50">
            <figure>Sản phẩm được làm thủ công tại HeadQuarters</figure>
        </div>
        <p>- Hãy lưu giữ những tấm hình chứa đựng những kỉ niệm đẹp, những mảng ký ức của bản thân, gia đình, bạn bè vào scrapbook và hi vọng bạn yêu thích sản phẩm của chúng tôi </p>
        <p>- Sản phẩm này sẽ được vận chuyển sớm trong vòng 2-3 ngày.</p>
        <p>- Nếu bạn có bất kỳ thắc mắc cần giải đáp xin vui lòng liên hệ qua Hotline 1900 3456.</p>
    </div>



</section>

<section id="rating-comment" class="rating container mt-5" >
    <h4 pb-1>Đánh giá - Bình luận </h4>

    <div class="ratings mb-3">
        <i class="bi bi-star-fill "></i>
        <i class="bi bi-star-fill "></i>
        <i class="bi bi-star-fill"></i>
        <i class="bi bi-star-fill"></i>
        <i class="bi bi-star-fill"></i>
    </div>
    <div class="d-flex comment-pd">
    <textarea class="comment-input p-2" rows="3" placeholder="Viết bình luận" maxlength="350">

    </textarea>
        <button type="button" class="submit-comment btn  btn-outline-success btn-sm shadow-sm ">Gửi</button>
        <div class="comments">
            <!-- Các bình luận sẽ được hiển thị ở đây -->
        </div>

    </div>


</section>



<section id="relate" class="my-5 ">
    <div class="container pb-4">
        <h4>Sản phẩm liên quan</h4>
        <hr class="mx-auto">

        <div class="row my-5 " >
            <div class="col info-item mx-3">
                <div class="info-img ">
                    <img src="../../images/anh3.webp" alt="" class="img-fluid d-block mx-auto mt-2">


                    <div class="row btns w-100 mx-auto ">
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-cart-plus"></i>

                        </button>
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>
                <div class="info-product p-3" >
                    <a href="#" class="d-block text-dark text-decoration-none py-2 info-name">
                        Scrapbook album ảnh handmade Sweet Mint
                    </a>
                    <span class="info-price fw-bold">649.000₫ </span>
                    <div class="info-rating d-flex mt-1">
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <span>(25 đánh giá)</span>
                    </div>
                </div>

            </div>
            <div class="col info-item mx-3">
                <div class="info-img ">
                    <img src="../../images/anh3.webp" alt="" class="img-fluid d-block mx-auto mt-2">


                    <div class="row btns w-100 mx-auto ">
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-cart-plus"></i>

                        </button>
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>
                <div class="info-product p-3" >
                    <a href="#" class="d-block text-dark text-decoration-none py-2 info-name">
                        Scrapbook album ảnh handmade Sweet Mint
                    </a>
                    <span class="info-price fw-bold">649.000₫ </span>
                    <div class="info-rating d-flex mt-1">
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <span>(25 đánh giá)</span>
                    </div>
                </div>

            </div>
            <div class="col info-item mx-3">
                <div class="info-img ">
                    <img src="../../images/anh3.webp" alt="" class="img-fluid d-block mx-auto mt-2">


                    <div class="row btns w-100 mx-auto ">
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-cart-plus"></i>

                        </button>
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>
                <div class="info-product p-3" >
                    <a href="#" class="d-block text-dark text-decoration-none py-2 info-name">
                        Scrapbook album ảnh handmade Sweet Mint
                    </a>
                    <span class="info-price fw-bold">649.000₫ </span>
                    <div class="info-rating d-flex mt-1">
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <span>(25 đánh giá)</span>
                    </div>
                </div>

            </div>
            <div class="col info-item mx-3">
                <div class="info-img ">
                    <img src="../../images/anh3.webp" alt="" class="img-fluid d-block mx-auto mt-2">


                    <div class="row btns w-100 mx-auto ">
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-cart-plus"></i>

                        </button>
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>
                <div class="info-product p-3" >
                    <a href="#" class="d-block text-dark text-decoration-none py-2 info-name">
                        Scrapbook album ảnh handmade Sweet Mint
                    </a>
                    <span class="info-price fw-bold">649.000₫ </span>
                    <div class="info-rating d-flex mt-1">
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <span>(25 đánh giá)</span>
                    </div>
                </div>

            </div>
            <div class="col info-item mx-3">
                <div class="info-img ">
                    <img src="../../images/anh3.webp" alt="" class="img-fluid d-block mx-auto mt-2">


                    <div class="row btns w-100 mx-auto ">
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-cart-plus"></i>

                        </button>
                        <button type="button" class="col-6 py-2">
                            <i class="bi bi-eye"></i>
                        </button>
                    </div>
                </div>
                <div class="info-product p-3" >
                    <a href="#" class="d-block text-dark text-decoration-none py-2 info-name">
                        Scrapbook album ảnh handmade Sweet Mint
                    </a>
                    <span class="info-price fw-bold">649.000₫ </span>
                    <div class="info-rating d-flex mt-1">
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill "></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <i class="bi bi-star-fill"></i>
                        <span>(25 đánh giá)</span>
                    </div>
                </div>

            </div>

        </div>


    </div>







</section>

<!--    Footer-->
<div id="footer">
    <ul class="d-flex ">
        <li class="content col-6" >
            <img src="../../images/logo.png" width="30%">
            <p class="me-5">
                HEADQUARTERS là cửa hàng về đồ HANDMADE về đồ trang trí, phụ kiện, thiệp, album ảnh, sổ tay được làm thủ công
                đẹp, ý nghĩa, thân thiện với mọi người.
            </p>
        </li>
        <li class="contact col-6 mt-5">
            <p class="content fs-2 fw-bold">Liên hệ với chúng tôi</p>
            <div class="address d-flex">
                <i class="fa-solid fa-location-dot py-2" style="color: #4d8a54"></i>
                <p class="p-2">Địa chỉ: Lớp DH21DTC,Khoa Công Nghệ Thông Tin,</br> Trường Đại Học Nông Lâm TP.HCM</p>
            </div>
            <div class="hotline d-flex">
                <i class="fa-solid fa-mobile-screen py-2" style="color: #4d8a54"></i>
                <p class="p-2">Hotline : 1900 3456</p>
            </div>
            <div class="icon">
                <a class="me-3 fs-3" href=""><i class="fa-brands fa-twitter" style="color: #4d8a54"></i></a>
                <a class="mx-3 fs-3" href=""><i class="fa-brands fa-facebook" style="color: #4d8a54"></i></a>
                <a class="mx-3 fs-3" href=""><i class="fa-brands fa-square-instagram" style="color: #4d8a54"></i></a>
                <a class="mx-3 fs-3" href=""><i class="fa-brands fa-youtube" style="color: #4d8a54"></i></a>
            </div>
        </li>
    </ul>
    <div class="solid  m-auto "></div>
    <div class="content_end fs-6 fw-bold text-center">
        <p>Bản quyền thuộc về HEADQUARTERS| Cung cấp bởi HEADQUARTERS</p>
    </div>
</div>






<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

<script>
    var MainImg = document.getElementById('MainImg');
    var smallimg = document.getElementsByClassName('small-img');
    smallimg[0].onclick = function () {
        MainImg.src = smallimg[0].src;
    }
    smallimg[1].onclick = function () {
        MainImg.src = smallimg[1].src;
    }
    smallimg[2].onclick = function () {
        MainImg.src = smallimg[2].src;
    }
    smallimg[3].onclick = function () {
        MainImg.src = smallimg[3].src;
    }


</script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const incrementButton = document.querySelector(".pd-inc");
        const decrementButton = document.querySelector(".pd-des");
        const quantityInput = document.querySelector(".quantity-input");

        incrementButton.addEventListener("click", function () {
            quantityInput.value = parseInt(quantityInput.value) + 1;
        });

        decrementButton.addEventListener("click", function () {
            const currentValue = parseInt(quantityInput.value);
            if (currentValue > 1) {
                quantityInput.value = currentValue - 1;
            }
        });
    });
</script>
</body>
</html>
