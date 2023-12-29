<%--
  Created by IntelliJ IDEA.
  User: Kien Nguyen
  Date: 12/27/2023
  Time: 4:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,500&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alumni+Sans+Inline+One&display=swap" rel="stylesheet">



    <title>Title</title>




    <style>

        @import url('https://fonts.googleapis.com/css2?family=Lato:ital,wght@1,700&family=Roboto:ital@1&display=swap');

        /*MenuBar*/
        .menu {
            background: rgba(250, 244, 244,0.92);
            border-bottom: 1px solid rgba(155, 158, 162, 0.7);
        }

        .menu .branch-name {

            align-items: center;
            justify-content: space-around;

        }


        .menu .branch-name .logo {
            text-align: center;
            padding-left: 0;


        }


        .menu .logo img {
            width: 50px;
            height: 50px;
            object-fit: cover;


        }

        .menu .branch-name .branch-title {
            font-family: 'Alumni Sans Inline One', sans-serif;
            font-size: 30px;
            margin: 0px;
        }

        .menu ul a{
            text-decoration: none;
            color: #797974;
        }
        .menu ul li {
            list-style-type: none;
        }

        .menu ul .sanpham .sub_menu{
            left: 0%;
            padding: 0;
            top: 100%;
            border: 1px;
            display: none;
        }
        .menu ul li.times{
            border-left: #8b8b8b solid 1px;
        }
        .menu ul li.item:hover {
            background: red;
        }
        .menu ul li.item:hover a{
            color: white;
        }
        .menu ul li.sanpham:hover .sub_menu{
            display: block;
        }
        .menu ul li.sanpham .sub_menu li a{
            color: #797974;
        }
        .menu ul li.sanpham .sub_menu li a:hover{
            color: red;
            font-size: 17px;
        }
        .menu ul li.search i{
            background: red;
            padding: 4%;
        }
        .menu ul li.search {
            border-left: 1px solid #8b8b8b;
        }
        .menu ul li.search input{
            padding-left: 10px;
            width: 35vh;
            border: none;
        }
        .menu ul li.login a:hover {
            color: red;
        }
        .menu ul li.cart a:hover {
            color: red;
        }

        /*Product details*/

        .product-details .breadcrumb .breadcrumb-item a {
            color: #565959;

            text-decoration: none;
        }
        .product-details .breadcrumb .breadcrumb-item a:hover {
            font-weight: bold;
        }


        .product-details h6 {
            color: #565959;
        }

        .product-details .right-pd h3 {
            font-family: 'Roboto', sans-serif;
        }
        .product-details .rate-content .icon-rate {
            color: #ffcc00;
        }
        .product-details .rate-content a {
            text-decoration: none;
            color: #4d8a54;
        }

        .product-details .rate-content a:hover {
            text-decoration: underline;
        }
        .gray-content {
            color: #898989;
        }
        .right-pd .state-pd span {
            color: #4d8a54;
            font-weight: bold;
        }

        .product-details .right-pd .price-pd {
            color: #e32124;
            font-size: 25px;
            font-weight: bold;
        }


        .product-details .right-pd span {


        }



        /*.product-details input {*/
        /*    width: 50px;*/
        /*    height: 40px;*/
        /*    padding-left: 10px;*/
        /*    font-size: 16px;*/
        /*    margin-right: 10px;*/
        /*    outline: none;*/

        /*}*/

        .quantity-pd {
            display: flex;
            align-items: center;

        }
        .quantity-input {
            border: 0;
            outline: none;
            width: 40px;
            text-align: center;
            font-size: 16px;


        }
        .qu-value {
            border: solid #edeff6 1px ;
            height: 36px;
        }
        .pd-des , .pd-inc {
            padding: 5px 10px;
            color: #000000;
            border: none;
            cursor: pointer;
            background-color: #ffffff;
        }
        .pd-des:hover , .pd-inc:hover {
            font-weight: bold;
        }



        .buy-btn {
            font-weight: bold;
            background-color: #ff1a1a;
            opacity: 1;
            transition: 0.3s all;
            color: #ffffff;
            border: 0;
            outline: none;
            height: 36px;


        }
        .buy-btn:hover {
            background-color: #e60000;


        }

        .ratings {
            color: #CACFD2;
            cursor: pointer;
        }

        .star {
            display: inline-block;
            font-size: 24px;
            cursor: pointer;

        }
        .comment-pd {
            align-items: center;
            position: relative;

        }
        .ratings i:hover {
            color:  #ffcc00;

        }

        .comment-input {
            width: 100%;
            padding: 10px;
            resize: none;
            border-color: #CACFD2;
            background-color: #f2f2f2;

        }

        .comment-input:focus {
            border-color: red;
        }

        .submit-comment {
            position: absolute;
            right: 0;
            bottom: 0;
            margin: 5px;
            visibility: hidden;

        }

        .comment-input:focus + .submit-comment {
            visibility: visible;
        }

        /*description*/
        figure {
            text-align: center;
            color:  #898989;
            font-style: italic;
        }

        .zoom {

            transition: transform .2s; /* Animation */


        }

        .zoom:hover {
            transform: scale(1.1); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
        }

        /*relate product*/
        .info-item {
            border: 1px solid #e1e1e1;
        }

        .info-img {
            position : relative;
            overflow: hidden;
        }
        .btns {
            position: absolute;
            left: 0;
            bottom: -100%;
            font-size: 15px;
            font-weight: 300;
            transition: all 0.3s ease-in-out;
        }
        .btns button {
            border: none;
            background-color: #e1e1e1;
            transition: all 0.3s ease-in-out;


        }

        .btns button:hover {
            background-color: #ff0000;
            color: #ffffff;
        }

        .info-img:hover .btns {
            bottom: 0;

        }

        .heart-icon {
            position: absolute;
            top: 16px;
            right: 15px;
            color: #ffffff;
        }
        .info-name {
            transition: all 0.3s ease-in-out;

        }

        .info-name:hover {
            color: #ff0000!important;


        }
        .info-price {
            color: #e32124;
        }
        .info-rating {
            font-size: 12px;
        }




        #footer {
            /*background: linear-gradient(90deg, rgba(80, 82, 84, 0.7), rgba(44, 43, 43, 0.7)),*/
            /*url("../../images/backgroup.jpg");*/
            background-repeat: no-repeat;
            background-size: 100%;


        }
        #footer ul li p{
            color: white;
        }
        #footer ul li {
            list-style-type: none;
        }
        #footer ul .contact .content {
            color: #8fcc8f;
        }
        #footer .solid{
            width: 70%;
            height: 2px;
            background: #858282;
        }
        #footer .content_end p{
            color: rgba(245, 241, 241, 0.7);
        }
        .small-img-group {
            display: flex;
            justify-content: start;
        }

        .small-img-col {
            flex-basis: 50%;
            cursor: pointer;
        }
        .small-img-col:first-child {
            margin-right: 10px;
        }




    </style>
</head>
<body>

</body>
</html>
