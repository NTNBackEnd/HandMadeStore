<%@ page import="model.bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

   <%User u = (User) session.getAttribute("auth");%>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/views/MainPage/css/mainpage.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"> <!--icon-->
    <title>Cửa Hàng HandMade</title>
</head>
<body>

<!--menu-->
<div id="menubar" class="menu sticky-top">
    <ul class="d-flex m-0">

        <li class="logo me-4 my-auto">
            <img src="<%=request.getContextPath()%>/images/logo.png" style="width: 12vh">
        </li>
        <li class="item times p-4 my-auto">
            <a href="#carouselExampleCaptions">Trang chủ</a>
        </li>
        <li class="item sanpham p-4 dropdown my-auto">
            <a href="<%=request.getContextPath()%>/product" class="title_sp">Sản phẩm <i class="fa-solid fa-caret-down"></i></a>
            <ul class="sub_menu dropdown-menu">
                <li>
                    <a href="#thiep" class="item sp1 dropdown-item ">Thiệp HandMade Vintage</a>
                </li>
                <li>
                    <a href="#anh" class="item sp2 dropdown-item">Scrapbook,Album Ảnh</a>
                </li>
                <li>
                    <a href="#sotay" class="item sp3 dropdown-item">Sổ ghi chép, sổ tay</a>
                </li>

                <li>
                    <a href="#decore" class="item sp4 dropdown-item">Đồ decore trang trí nhà,cafe,Homestay</a>
                </li>
                <li>
                    <a href="#nguyenlieu" class="item sp5 dropdown-item">Nguyên vật liệu,phụ kiện dụng cụ</a>
                </li>

            </ul>
        </li>
        <li class="item bikip p-4 my-auto">
            <a href="#bikip">Bí kíp làm đồ HandMade</a>
        </li>
        <li class="item footers p-4 my-auto">
            <a href="#footer ">Về chúng tôi</a>
        </li>

        <li class="search d-flex p-4 my-auto mx-5">
            <i class="fa-solid fa-magnifying-glass" style="color: white;"></i>
            <input type="text" placeholder="Bạn tìm gì...">

        </li>
        <li class="login p-4 my-auto dropdown">
            <%if(u == null) {%>
            <i class="fa-solid fa-user" style="color: #496088;"></i>
            <a href="<%=request.getContextPath()%>/login">Đăng Nhập</a>
            <%} else{%>

            <button type="button" class="btn btn-sm btn-primary "><i class="fa-solid fa-user" style="color: white;"></i> <span><%= u.getName()%></span></button>
            <ul id="dangxuat" class="dx dropdown-menu">
                <li><a class="dropdown-item" href="<%=request.getContextPath()%>/views/Login/view_login/login.jsp">Đăng Xuất</a></li>
            </ul>
            <%}%>
        </li>
        <li class="cart p-4 dropdown my-auto">
            <i class="fa-solid fa-cart-shopping" style="color: #2a3241;"></i>
            <a href="<%=request.getContextPath()%>/views/CartPage/cart.html">Giỏ Hàng</a>
        </li>
    </ul>
</div>
<!--carousel-->
<div id="carouselExampleCaptions" class="carousel slide">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://images.pexels.com/photos/1303081/pexels-photo-1303081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                 class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5 class=""> KÍNH CHÀO QUÝ KHÁCH!</h5>
                <p>Mỗi sản phẩm handmade là một phần trái tim của ai đó.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://images.pexels.com/photos/157888/fashion-glasses-go-pro-female-157888.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                 class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>ĐỘC - ĐẸP - BỀN - GIÁ PHÙ HỢP</h5>
                <p>Chế tạo những sản phẩm độc đáo, với tình yêu và sự tận tụy</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://images.pexels.com/photos/1424464/pexels-photo-1424464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
                 class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h5>CÙNG NHAU KHÁM PHÁ NÀO!</h5>
                <p>Những sản phẩm đang nóng lòng đợi bạn rinh về nè !</p>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<!--hoạt động carousel-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>

<!--SanPham1-->

<div class="product" id="thiep">
    <div class="title_t">
        <p class="text-center fs-5 fw-bold">THIỆP HANDMADE VINTAGE</p>
    </div>
    <div class="solid_t mb-3 m-auto"></div>
    <div class="sp" id="sp_thiep">
        <ul>
            <li class="itemrow li1 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/ThiepHandMade1.webp"></a>
                    <a href="#"><p class="text-center">Thiệp Valentine ý nghĩa</p></a>
                    <p class="text-center text-danger">70.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/ThiepHandMade2.webp"></a>
                    <a href="#"><p class="text-center">Bì thư trơn đẹp Vintage</p></a>
                    <p class="text-center text-danger">35.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/ThiepHandMade3.webp"></a>
                    <a href="#"><p class="text-center">Thiệp chúc mừng THAT TIME</p></a>
                    <p class="text-center text-danger">70.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/ThiepHandMade4.webp"></a>
                    <a href="#"><p class="text-center">Thiệp Handmade Vintage Beauty & the White</p></a>
                    <p class="text-center text-danger">70.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/ThiepHandMade5.webp"></a>
                    <a href="#"><p class="text-center">Thiệp Handmade Film De Paris</p></a>
                    <p class="text-center text-danger">70.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li2 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/ThiepHandMade6.webp"></a>
                    <a href="#"><p class="text-center">Thiệp chúc mừng Black & White</p></a>
                    <p class="text-center text-danger">39.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/ThiepHandMade7.webp"></a>
                    <a href="#"><p class="text-center">Thiệp chúc mừng Sweet Mint</p></a>
                    <p class="text-center text-danger">70.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/ThiepHandMade8.webp"></a>
                    <a href="#"><p class="text-center">Thiệp handmade Amazing Carton</p></a>
                    <p class="text-center text-danger">39.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/ThiepHandMade9.webp"></a>
                    <a href="#"><p class="text-center">Thiệp handmade lớn Beauty & the White</p></a>
                    <p class="text-center text-danger">70.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/ThiepHandMade11.webp"></a>
                    <a href="#"><p class="text-center">Thiệp dấu sáp mini</p></a>
                    <p class="text-center text-danger">19.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li3 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/ThiepHandMade12.webp"></a>
                    <a href="#"><p class="text-center">Thiệp handmade, thiệp chúc mừng đẹp</p></a>
                    <p class="text-center text-danger">39.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/ThiepHandMade13.webp"></a>
                    <a href="#"><p class="text-center">Thiệp gỗ khắc chủ đề tình yêu - làm thiệp theo yêu cầu</p></a>
                    <p class="text-center text-danger">39.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/ThiepHandMade14.webp"></a>
                    <a href="#"><p class="text-center">Thiệp handmade Vintage Film</p></a>
                    <p class="text-center text-danger">39.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/ThiepHandMade15.webp"></a>
                    <a href="#"><p class="text-center">Thiệp handmade vintage vải bố</p></a>
                    <p class="text-center text-danger">39.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/ThiepHandMade16.webp"></a>
                    <a href="#"><p class="text-center">Thiệp gỗ Jigsaws</p></a>
                    <p class="text-center text-danger">39.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>

        </ul>
        <div class="load_produce text-center mt-5">
            <a><span>Load thêm sản phẩm</span></a>
        </div>
    </div>
</div>

<!--Sp2-->

<div class="product" id="anh">
    <div class="title_t">
        <p class="text-center fs-5 fw-bold">SCRAPBOOK,ALBUM ẢNH HANDMADE VINTAGE</p>
    </div>
    <div class="solid_t mb-3 m-auto"></div>
    <div class="sp" id="sp_anh">
        <ul>
            <li class="itemrow li1 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/anh1.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook album ảnh handmade Beauty & the White</p></a>
                    <p class="text-center text-danger">649.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/anh2.webp"></a>
                    <a href="../../product-details/view/productdt.html"><p class="text-center">Scrapbook album ảnh
                        handmade Retro Clock</p></a>
                    <p class="text-center text-danger">649.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/anh3.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook album ảnh handmade Film de Paris</p></a>
                    <p class="text-center text-danger">649.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/anh4.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook album ảnh handmade Sweet Mint</p></a>
                    <p class="text-center text-danger">649.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/anh5.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook album ảnh handmade That Time</p></a>
                    <p class="text-center text-danger">649.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li2 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/anh6.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook Fly album That Time</p></a>
                    <p class="text-center text-danger">329.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/anh7.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook album ảnh 6x9 handmade nhỏ MINI LOVECARDS</p></a>
                    <p class="text-center text-danger">109.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/anh8.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Forever Together</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/anh9.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Live. Laugh. Love</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/anh10.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook Fly album ảnh handmade Beauty & the White</p></a>
                    <p class="text-center text-danger">329.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li3 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/anh11.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Film de Paris</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/anh12.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook Fly album Retro Clock</p></a>
                    <p class="text-center text-danger">329.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/anh13.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Blue Pastel</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/anh14.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Retro Clock</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/anh15.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán MEMORY</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>

        </ul>
        <div class="load_produce text-center mt-5">
            <a><span>Load thêm sản phẩm</span></a>
        </div>
    </div>
</div>
<!--Sp2-->

<div class="product" id="sotay">
    <div class="title_t">
        <p class="text-center fs-5 fw-bold">SỔ GHI CHÉP, SỔ TAY HANDMADE VINTAGE</p>
    </div>
    <div class="solid_t mb-3 m-auto"></div>
    <div class="sp" id="sp_sotay">
        <ul>
            <li class="itemrow li1 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/so1.webp"></a>
                    <a href="#"><p class="text-center">Sổ da cao cấp mã khóa</p></a>
                    <p class="text-center text-danger">750.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/so2.webp"></a>
                    <a href="#"><p class="text-center">Sổ da cao cấp</p></a>
                    <p class="text-center text-danger">285.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/so3.webp"></a>
                    <a href="#"><p class="text-center">Sổ tay đa năng da bò handmade</p></a>
                    <p class="text-center text-danger">320.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/so4.webp"></a>
                    <a href="#"><p class="text-center">Sổ tay nhỏ mini cute, dễ thương A6</p></a>
                    <p class="text-center text-danger">199.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/so5.webp"></a>
                    <a href="#"><p class="text-center">Sổ tay cute Pharaoh</p></a>
                    <p class="text-center text-danger">159.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li2 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/anh6.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook Fly album That Time</p></a>
                    <p class="text-center text-danger">329.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/anh7.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook album ảnh 6x9 handmade nhỏ MINI LOVECARDS</p></a>
                    <p class="text-center text-danger">109.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/anh8.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Forever Together</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/anh9.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Live. Laugh. Love</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/anh10.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook Fly album ảnh handmade Beauty & the White</p></a>
                    <p class="text-center text-danger">329.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li3 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/anh11.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Film de Paris</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/anh12.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook Fly album Retro Clock</p></a>
                    <p class="text-center text-danger">329.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/anh13.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Blue Pastel</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/anh14.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán Retro Clock</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/anh15.webp"></a>
                    <a href="#"><p class="text-center">Scrapbook DIY Album ảnh dán MEMORY</p></a>
                    <p class="text-center text-danger">220.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
        </ul>
        <div class="load_produce text-center mt-5">
            <a><span>Load thêm sản phẩm</span></a>
        </div>
    </div>
</div>
<!--sp4-->
<div class="product" id="decore">
    <div class="title_t">
        <p class="text-center fs-5 fw-bold">ĐỒ DECOR TRANG TRÍ NHÀ, CAFE, HOMESTAY</p>
    </div>
    <div class="solid_t mb-3 m-auto"></div>
    <div class="sp" id="sp_decore">
        <ul>
            <li class="itemrow li1 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/decore1.webp"></a>
                    <a href="#"><p class="text-center">Đèn bão trang trí Vintage</p></a>
                    <p class="text-center text-danger">192.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/decore2.webp"></a>
                    <a href="#"><p class="text-center">Tranh treo tường đầu hưu</p></a>
                    <p class="text-center text-danger">504.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/decore3.webp"></a>
                    <a href="#"><p class="text-center">Móc treo nữ trang vintage</p></a>
                    <p class="text-center text-danger">152.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/decore4.webp"></a>
                    <a href="#"><p class="text-center">Lọ hoa thủy tinh handmade</p></a>
                    <p class="text-center text-danger">120.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/decore5.webp"></a>
                    <a href="#"><p class="text-center">Hoa lavender oải hương handmade trang trí nhà cửa</p></a>
                    <p class="text-center text-danger">35.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li2 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/decore6.webp"></a>
                    <a href="#"><p class="text-center">Hoa chậu handmade - Hoa hồng giấy</p></a>
                    <p class="text-center text-danger">157.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/decore7.webp"></a>
                    <a href="#"><p class="text-center">Bình chai lọ quấn dây thừng trang trí</p></a>
                    <p class="text-center text-danger">79.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/decore8.webp"></a>
                    <a href="#"><p class="text-center">Hộp nhạc piano pha lê khắc tên</p></a>
                    <p class="text-center text-danger">559.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/decore9.webp"></a>
                    <a href="#"><p class="text-center">Hộp nhạc gỗ Piano</p></a>
                    <p class="text-center text-danger">559.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/decore10.webp"></a>
                    <a href="#"><p class="text-center">Hộp nhạc cổ điển camera</p></a>
                    <p class="text-center text-danger">250.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li3 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/decore11.webp"></a>
                    <a href="#"><p class="text-center">Đồng hồ quả quýt, đồng hồ đeo cổ</p></a>
                    <p class="text-center text-danger">189.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/decore12.webp"></a>
                    <a href="#"><p class="text-center">Tượng trang trí phòng khách Thinker</p></a>
                    <p class="text-center text-danger">249.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/decore13.webp"></a>
                    <a href="#"><p class="text-center">Tượng trang trí vintage không thấy - không nghe - không nói</p>
                    </a>
                    <p class="text-center text-danger">406.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/decore14.webp"></a>
                    <a href="#"><p class="text-center">Rương gỗ vintage cổ điển phụ kiện decor trang trí</p></a>
                    <p class="text-center text-danger">449.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/decore15.webp"></a>
                    <a href="#"><p class="text-center">Mô hình người gỗ trang trí decor, phụ kiện chụp ảnh</p></a>
                    <p class="text-center text-danger">99.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
        </ul>
        <div class="load_produce text-center mt-5">
            <a><span>Load thêm sản phẩm</span></a>
        </div>
    </div>
</div>
<!--sp5-->
<div class="product" id="nguyenlieu">
    <div class="title_t">
        <p class="text-center fs-5 fw-bold">NGUYÊN VẬT LIỆU, PHỤ KIỆN DỤNG CỤ, ĐỒ LÀM HANDMADE</p>
    </div>
    <div class="solid_t mb-3 m-auto"></div>
    <div class="sp" id="sp_nguyenlieu">
        <ul>
            <li class="itemrow li1 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/nguyenlieu1.webp"></a>
                    <a href="#"><p class="text-center">Sticker Film Butterfly</p></a>
                    <p class="text-center text-danger">50.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/nguyenlieu2.webp"></a>
                    <a href="#"><p class="text-center">Khung frame giấy cổ điển</p></a>
                    <p class="text-center text-danger">50.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/nguyenlieu3.webp"></a>
                    <a href="#"><p class="text-center">Bó hoa khô mini</p></a>
                    <p class="text-center text-danger">50.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/nguyenlieu4.webp"></a>
                    <a href="#"><p class="text-center">Bó tràm khô decor trang trí</p></a>
                    <p class="text-center text-danger">160.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/nguyenlieu5.webp"></a>
                    <a href="#"><p class="text-center">Hoa cúc sấy khô</p></a>
                    <p class="text-center text-danger">50.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li2 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/nguyenlieu6.webp"></a>
                    <a href="#"><p class="text-center">Bó hoa khô Bạch đàn lá tròn</p></a>
                    <p class="text-center text-danger">100.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/nguyenlieu7.webp"></a>
                    <a href="#"><p class="text-center">Cỏ đuôi thỏ khô trang trí decor, làm handmade</p></a>
                    <p class="text-center text-danger">100.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/nguyenlieu8.webp"></a>
                    <a href="#"><p class="text-center">Lavender khô - hoa oải hương khô</p></a>
                    <p class="text-center text-danger">89.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/nguyenlieu9.webp"></a>
                    <a href="#"><p class="text-center">Hoa bi khô - bó hoa bi khô</p></a>
                    <p class="text-center text-danger">160.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/nguyenlieu10.webp"></a>
                    <a href="#"><p class="text-center">Bookmark mạ vàng</p></a>
                    <p class="text-center text-danger">40.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
            <li class="itemrow li3 d-flex">
                <div class="item sp_t1  me-4">
                    <a href="#"><img src="../../images/nguyenlieu11.webp"></a>
                    <a href="#"><p class="text-center">Giấy gói quà, gói hoa vintage họa tiết báo</p></a>
                    <p class="text-center text-danger">15.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t2 me-4">
                    <a href="#"><img src="../../images/nguyenlieu12.webp"></a>
                    <a href="#"><p class="text-center">Super punch dập giấy tạo hình trang trí handmade</p></a>
                    <p class="text-center text-danger">180.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t3 me-4">
                    <a href="#"><img src="../../images/nguyenlieu13.webp"></a>
                    <a href="#"><p class="text-center">Giấy viết thư cổ điển Vintage</p></a>
                    <p class="text-center text-danger">35.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t4 me-4">
                    <a href="#"><img src="../../images/nguyenlieu14.webp"></a>
                    <a href="#"><p class="text-center">Bookmark, Tag Van Gogh Museum</p></a>
                    <p class="text-center text-danger">24.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
                <div class="item sp_t5 ">
                    <a href="#"><img src="../../images/nguyenlieu15.webp"></a>
                    <a href="#"><p class="text-center">Mini puch-dập giấy trang trí handmade</p></a>
                    <p class="text-center text-danger">28.000₫</p>
                    <div class="add-to-cart"><span>Thêm vào giỏ hàng</span></div>
                </div>
            </li>
        </ul>
        <div class="load_produce text-center mt-5">
            <a><span>Load thêm sản phẩm</span></a>
        </div>
    </div>
</div>

<!--Bí Kíp-->

<div class="bikip mt-5" id="bikip">
    <div class="title_bk">
        <p class="text-center fw-bold fs-4">BÍ KÍP LÀM ĐỒ HANDMADE</p>
    </div>
    <div class="solid_bk mb-5 m-auto"></div>
    <div class="content_bk">
        <ul class="d-flex ">
            <li class="item content1 col-3 me-3">
                <a href="#"><img src="../../images/bikip1.webp" width="100%"></a>
                <a href="#"><h6 class="fw-bold text-center mt-3">Cách cắm hoa khô đẹp trong 5 phút</h6></a>
                <p>Hoa khô hay còn gọi là hoa không tàn, hoa vĩnh cửu luôn có nét đẹp riêng.
                    Để tăng thêm sự độc đáo và giá trị thì cách cắm hoa...
                </p>
            </li>
            <li class="item content2 col-3 mx-3">
                <a href="#"><img src="../../images/bikip2.webp" width="100%"></a>
                <a href="#"><h6 class="fw-bold text-center mt-3">Cách làm trang trí thiệp hoa khô handmade siêu dễ</h6>
                </a>
                <p>Thiệp hoa khô tự nhiên có nét quyến rũ thú vị, thể hiện sự chỉnh chu của người tặng.
                    Tự tay làm chiếc thiệp hoa khô sẽ thật ý nghĩa...
                </p>
            </li>
            <li class="item content3 col-3 me-5 ms-3">
                <a href="#"><img src="../../images/bikip3.webp" width="98%"></a>
                <a href="#"><h6 class="fw-bold text-center mt-3">Hướng dẫn cách làm scrapbook album ảnh handmade siêu
                    đơn giản</h6></a>
                <p>
                    Scrapbook là một dạng nhật ký ảnh, album hình được làm, trang trí thủ công có nội dung
                    ,câu chuyện hoàn chỉnh.Thời gian, sự kiện được ghi chú,...
                </p>
            </li>
        </ul>
    </div>
</div>
<!--    Footer-->
<div id="footer">
    <ul class="d-flex ">
        <li class="content col-6">
            <img src="../../images/logo.png" width="30%">
            <p class="me-5">
                HEADQUARTERS là cửa hàng về đồ HANDMADE về đồ trang trí, phụ kiện, thiệp, album ảnh, sổ tay được làm thủ
                công
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
</body>
<style>
    #dangxuat {
        padding: 0;
        display: none;
    }
    #dangxuat a:hover {
        background: red;
        color: white;
    }
    #dangxuat a {
        color: black ;
        padding-right: 25%;
        padding-left: 25%;
    }
    .menu ul li.login:hover #dangxuat{
       display: block;
    }
    .menu ul li.item {
        text-align: center;
    }
</style>
</html>