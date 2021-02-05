 <%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getPostList</title>
<style type="text/css">
		
		body{margin-top:20px;}
.filtering {
    margin-bottom: 40px;
}
.filtering span {
    border-bottom: 2px solid transparent;
    color: #282b2d;
    cursor: pointer;
    font-size: 15px;
    font-weight: 600;
    letter-spacing: 1px;
    margin-right: 20px;
    display: inline-block;
    margin-bottom: 5px;
}
.filtering span:last-child {
    margin: 0;
}
.filtering .active {
    border-color: #ccde02;
    color: #ccde02;
}
.portfolio-wrapper {
    position: relative;
    overflow: hidden;
}
.portfolio-overlay {
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    width: 100%;
    transition: all 500ms ease;
}
.portfolio-wrapper .portfolio-image img {
    transform: scale(1.2);
    will-change: transform;
    transition: all 0.5s ease;
    width: 100%;
}
.portfolio-wrapper:hover .portfolio-image img {
    transform: none;
}
.portfolio-overlay:before {
    position: absolute;
    display: inline-block;
    top: 15px;
    right: 15px;
    bottom: 15px;
    left: 15px;
    border: 1px solid rgba(0, 0, 0, 0.36);
    content: "";
    opacity: 0;
    transition: all 0.5s ease;
    transform: scale(0.85);
}
.portfolio-overlay .portfolio-content {
    position: absolute;
    bottom: 50%;
    left: 0;
    width: 100%;
    text-align: center;
    opacity: 0;
    padding: 0 35px;
}
.portfolio-content h4 {
    color: #000;
    font-weight: 600;
    font-size: 20px;
    text-transform: capitalize;
    letter-spacing: 1px;
    margin-bottom: 15px;
}
.portfolio-content p {
    color: #000;
    font-weight: 500;
    letter-spacing: 1px;
    margin-bottom: 0;
}
.portfolio-content > a {
    line-height: 42px;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    color: #000;
    display: inline-block;
    text-align: center;
    margin-bottom: 15px;
    font-weight: 800;
}
.portfolio-wrapper:hover .portfolio-overlay {
    background-color: rgba(204, 222, 2, 0.85);
}
.portfolio-wrapper:hover .portfolio-overlay:before {
    opacity: 1;
    visibility: visible;
    transform: none;
}
.portfolio-wrapper:hover .portfolio-overlay .portfolio-content {
    transform: translateY(50%);
    transition: transform 0.5s ease;
    opacity: 1;
}
@media screen and (max-width: 1199px) {
    .portfolio-content h4 {
        font-size: 18px;
    }
}
@media screen and (max-width: 991px) {
    .portfolio-content h4 {
        margin-bottom: 10px;
    }
    .portfolio-content p {
        font-size: 15px;
    }
    .portfolio-content > a {
        margin-bottom: 10px;
    }
}
@media screen and (max-width: 767px) {
    .portfolio-content h4 {
        font-size: 17px;
    }
    .portfolio-content p {
        font-size: 14px;
    }
}
@media screen and (max-width: 575px) {
    .portfolio-content h4 {
        font-size: 16px;
    }
}
.grid .grid-item {
    position: relative;
    overflow: hidden;
}
.grid .grid-item .portfolio-wrapper {
    position: relative;
    overflow: hidden;
}
.grid .grid-item .portfolio-overlay {
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    width: 100%;
    transition: all 500ms ease;
}
.grid .grid-item .portfolio-wrapper .portfolio-image img {
    transform: none;
    will-change: transform;
    transition: none;
    width: 100%;
}
.grid .grid-item .portfolio-wrapper:hover .portfolio-image img {
    transform: none;
}
.grid .grid-item .portfolio-overlay:before {
    position: absolute;
    display: inline-block;
    top: 15px;
    right: 15px;
    bottom: 15px;
    left: 15px;
    border: 1px solid rgba(0, 0, 0, 0.36);
    content: "";
    opacity: 0;
    transition: all 0.5s ease;
    transform: scale(0.85);
}
.grid .grid-item .portfolio-overlay .portfolio-content {
    position: absolute;
    bottom: 50%;
    left: 0;
    width: 100%;
    text-align: center;
    opacity: 0;
}
.grid .grid-item .portfolio-content h4 {
    color: #000;
    font-weight: 600;
    letter-spacing: 1px;
    font-size: 20px;
    margin-bottom: 10px;
}
.grid .grid-item .portfolio-content p {
    color: #000;
    font-weight: 500;
    letter-spacing: 1px;
    margin-bottom: 0;
}
.grid .grid-item .portfolio-content a {
    line-height: 36px;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    color: #000;
    display: inline-block;
    text-align: center;
    margin-bottom: 10px;
    font-weight: 800;
}
.grid .grid-item .portfolio-wrapper:hover .portfolio-overlay {
    background-color: rgba(204, 222, 2, 0.85);
}
.grid .grid-item .portfolio-wrapper:hover .portfolio-overlay:before {
    opacity: 1;
    visibility: visible;
    transform: none;
}
.grid .grid-item .portfolio-wrapper:hover .portfolio-overlay .portfolio-content {
    transform: translateY(50%);
    transition: transform 0.5s ease;
    opacity: 1;
}
@media screen and (max-width: 1199px) {
    .grid .grid-item .portfolio-content h4 {
        font-size: 18px;
    }
}
@media screen and (max-width: 991px) {
    .grid .grid-item .portfolio-content h4 {
        margin-bottom: 10px;
    }
    .grid .grid-item .portfolio-content p {
        font-size: 15px;
    }
    .grid .grid-item .portfolio-content a {
        margin-bottom: 10px;
    }
}
@media screen and (max-width: 767px) {
    .grid .grid-item .portfolio-content h4 {
        font-size: 17px;
    }
    .grid .grid-item .portfolio-content p {
        font-size: 14px;
    }
}
@media screen and (max-width: 575px) {
    .grid .grid-item .portfolio-content h4 {
        font-size: 16px;
    }
    .grid .grid-item .portfolio-overlay:before {
        top: 10px;
        right: 10px;
        bottom: 10px;
        left: 10px;
    }
}

</style>
<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
  <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
 <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js" integrity="sha512-Zq2BOxyhvnRFXu0+WE6ojpZLOU2jdnqbrM1hmVdGzyeCa1DgM3X5Q4A/Is9xA1IkbUeDd7755dNNI/PzSf2Pew==" crossorigin="anonymous"></script>
</head>
 
<body>
<section>
    <div class="container">
        <div class="row no-gutters">
            <div class="filtering col-sm-12 text-center">
                <span data-filter="*" class="active">All</span> 
                <span data-filter=".architecture" class="">Architecture</span>
                <span data-filter=".decor" class="">Decor</span>
                <span data-filter=".interior" class="">Interior</span>
            </div>
            <div class="col-12 text-center w-100">
                <div class="form-row gallery">
                    <div class="col-sm-6 col-lg-4 mb-2 interior">
                        <div class="portfolio-wrapper">
                            <div class="portfolio-image">
                                <img src="/resources/images/uploadFiles/1361d3f6-ef05-424c-800c-f02fc1d02710_2.jfif" alt="..." />
                            </div>
                            <div class="portfolio-overlay">
                                <div class="portfolio-content">
                                    <a class="popimg ml-0" href="#">
                                        <i class="ti-zoom-in display-24 display-md-23 display-lg-22 display-xl-20"></i>
                                    </a>
                                    <h4>Stylish Family Appartment</h4>
                                    <p>[Interior]</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 mb-2 decor interior">
                        <div class="portfolio-wrapper">
                            <div class="portfolio-image">
                                <img src="/resources/images/uploadFiles/7c5f2ecb-6067-4f90-a8de-7233b83aa53c_14.jfif" alt="..." />
                            </div>
                            <div class="portfolio-overlay">
                                <div class="portfolio-content">
                                    <a class="popimg ml-0" href="#">
                                        <i class="ti-zoom-in display-24 display-md-23 display-lg-22 display-xl-20"></i>
                                    </a>
                                    <h4>Minimal Guests House</h4>
                                    <p>[Decor, Interior]</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 mb-2 architecture">
                        <div class="portfolio-wrapper">
                            <div class="portfolio-image">
                                <img src="/resources/images/uploadFiles/7ee2be2e-3d2d-40ee-8446-4bb54ad53d4a_t12.jfif" alt="..." />
                            </div>
                            <div class="portfolio-overlay">
                                <div class="portfolio-content">
                                    <a class="popimg ml-0" href="#">
                                        <i class="ti-zoom-in display-24 display-md-23 display-lg-22 display-xl-20"></i>
                                    </a>
                                    <h4>Kitchen for Small family</h4>
                                    <p>[Architecture]</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 mb-2 mb-lg-0 interior">
                        <div class="portfolio-wrapper">
                            <div class="portfolio-image">
                                <img src="/resources/images/uploadFiles/7e8d890c-a1b6-4850-90d4-5dbdff7b8667_10.jfif" alt="..." />
                            </div>
                            <div class="portfolio-overlay">
                                <div class="portfolio-content">
                                    <a class="popimg ml-0" href="#">
                                        <i class="ti-zoom-in display-24 display-md-23 display-lg-22 display-xl-20"></i>
                                    </a>
                                    <h4>Interior Design for Bathroom</h4>
                                    <p>[Interior]</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 mb-2 mb-sm-0 architecture">
                        <div class="portfolio-wrapper">
                            <div class="portfolio-image">
                                <img src="https://via.placeholder.com/350x350/FFA07A/000000" alt="..." />
                            </div>
                            <div class="portfolio-overlay">
                                <div class="portfolio-content">
                                    <a class="popimg ml-0" href="#">
                                        <i class="ti-zoom-in display-24 display-md-23 display-lg-22 display-xl-20"></i>
                                    </a>
                                    <h4>Art Family Residence</h4>
                                    <p>[Architecture]</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 decor">
                        <div class="portfolio-wrapper">
                            <div class="portfolio-image">
                                <img src="https://via.placeholder.com/350x350/9932CC/000000" alt="..." />
                            </div>
                            <div class="portfolio-overlay">
                                <div class="portfolio-content">
                                    <a class="popimg ml-0" href="#">
                                        <i class="ti-zoom-in display-24 display-md-23 display-lg-22 display-xl-20"></i>
                                    </a>
                                    <h4>Luxury Bathroom Interior</h4>
                                    <p>[Decor]</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">
/* window.onload = function(){

	var a = document.getElementById( 'hel' );

	a.style.color = "blue"

	} */
$(function(){
    $(".filtering").on("click", "span", function () {
        var a = $(".gallery").isotope({});
        alert(JSON.stringify($(this)));
        var e = $(this).attr("data-filter");
        a.isotope({ filter: e });
    });
    $(".filtering").on("click", "span", function () {
        $(this).addClass("active").siblings().removeClass("active");
    });
}) 
</script> 
</body>

</html>
