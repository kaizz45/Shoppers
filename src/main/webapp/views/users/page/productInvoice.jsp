<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Invoice Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%-- <link rel="stylesheet" href="${ pageContext.request.contextPath }/css/bootstrap.min.css" ></link>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
 --%>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/fonts/icomoon/style.css">

    <link rel="stylesheet" href="${ pageContext.request.contextPath }/css2/bootstrap.min.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/css2/magnific-popup.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/css2/jquery-ui.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/css2/owl.carousel.min.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/css2/owl.theme.default.min.css">


    <link rel="stylesheet" href="${ pageContext.request.contextPath }/css2/aos.css">

    <link rel="stylesheet" href="${ pageContext.request.contextPath }/css2/style.css">
</head>
<body>
	<div class="site-wrap">
    <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

            <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
              <form action="" class="site-block-top-search">
                <span class="icon icon-search2"></span>
                <input type="text" class="form-control border-0" placeholder="Search">
              </form>
            </div>

            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
              <div class="site-logo">
                <a href="${ pageContext.request.contextPath }/users/home/index" class="js-logo-clone">Shoppers</a>
              </div>
            </div>

            <div class="col-6 col-md-4 order-3 order-md-3 text-right">
              <div class="site-top-icons">
                <ul>
                  <li><a href="${ pageContext.request.contextPath }/users/home/changePassword"><span class="icon icon-person"></span></a></li>
                  <li><a href="${ pageContext.request.contextPath }/users/home/productInvoice"><span class="icon icon-file-text"></span></a></li>
                  <li>
                    <a href="${ pageContext.request.contextPath }/users/home/cart/view" class="site-cart">
                      <span class="icon icon-shopping_cart"></span>
                      <span class="count">2</span>
                    </a>
                  </li>
                  <li><a href="${ pageContext.request.contextPath }/login"><span class="icon icon-sign-out"></span></a></li>
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>

          </div>
        </div>
      </div> 
      <nav class="site-navigation text-right text-md-center" role="navigation">
        <div class="container">
          <ul class="site-menu js-clone-nav d-none d-md-block">
            <li>
              <a href="${ pageContext.request.contextPath }/users/home/index">Home</a>
    
            </li>
            <li>
              <a href="${ pageContext.request.contextPath }/users/home/about">About</a>
            </li>
            <li><a href="${ pageContext.request.contextPath }/users/home">Shop</a></li>
            <li><a href="#">Catalogue</a></li>
            <li><a href="#">New Arrivals</a></li>
            <li><a href="${ pageContext.request.contextPath }/users/home/contact">Contact</a></li>
          </ul>
        </div>
      </nav>
    </header>

    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="${ pageContext.request.contextPath }/users/home/index">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Contact</strong></div>
        </div>
      </div>
    </div>  
    
    <div style="min-height: 610px" class="mb-5">
	<div class="col-10 offset-1 mt-4"  >
	<h2>Invoice Management</h2>
	</div>
	<div class="col-10 offset-1 mt-5 border border-gray p-2">
		<form method="GET" action="${ pageContext.request.contextPath }/users/home/productInvoice">
			<div class="row col-12 mt-2">
				<div class="col-6">
					<label>Sort By</label>
					<select name="sort_by" class="form-control">
						<option value="id">Default</option>
						<option value="address" >Address</option>
					</select>
				</div>
				<div class="col-6">
					<label>Sort order</label>
					<select name="sort_direction" class="form-control">
						<option value="asc">Ascending</option>
						<option value="desc">Decrease</option>
					</select>
				</div>
			</div>
			
			<div>
				<button class="btn btn-primary mt-4">Filter</button>
				<a href="${ pageContext.request.contextPath }/users/home/productInvoice"
					class="btn btn-danger mt-4" type="reset">
					Reset
				</a>
			</div>
		</form>
	</div>

	<div class="mt-5 col-10 offset-1 border border-gray p-2">
		  <table class="table table-strip table-dark mt-3">
			<thead>
				<tr>
					<td>Id</td>
					<td>UserName</td>
					<td>Create Date</td>
					<td>Address</td>
					<td>Phone</td>
					<td>Status</td>
					<td colspan="2">Actions</td>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach items="${ pageData.content }" var="order">
				<tr>
						<td>${ order.id }</td>
						<td>${ order.user.username }</td>
						<td>${ order.createDate }</td>
						<td>${ order.address}</td>
						<td>${ order.phone}</td>
						<td>
							<select name="activate" disabled="disabled" class="form-control">
								<option ${order.activate == 1 ? "selected" : "" }>Đang xử lý</option>
								<option ${order.activate == 2 ? "selected" : "" }>Đang giao</option>
								<option ${order.activate == 3 ? "selected" : "" }>Hoàn thành</option>
								<option ${order.activate == 4 ? "selected" : "" }>Đã hủy</option>
							</select>
						</td>
						
						<%-- <td>
							<form action="${ pageContext.request.contextPath }/users/home/productInvoice/delete/${order.id}" method="POST">
								<button class="btn btn-danger" onclick="confirmDelete(event)">Cancel</button>
							</form>
						</td> --%>
						<td>
							
							<a href="${ pageContext.request.contextPath }/users/home/productInvoice/${order.id}" class="btn btn-primary">
								Views
							</a>
						</td>
					</tr>
			</c:forEach>
			</tbody>
		</table>
		
		<div class="mx-auto text-white text-center" style="width: 200px;">
			<ul class="pagination">
				<c:forEach begin="0" end="${ pageData.totalPages > 0 ? pageData.totalPages-1 : 0}" varStatus="page">
					<li class="page-item">
						<a class="page-link" href="${ pageContext.request.contextPath }/users/home/productInvoice?page=${page.index}&limit=3&sort_direction=${sort}">${ page.index + 1 }</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	</div>
    
    

    <footer class="site-footer border-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="row">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Navigations</h3>
              </div>
              <div class="col-md-6 col-lg-4">
                <ul class="list-unstyled">
                  <li><a href="#">Sell online</a></li>
                  <li><a href="#">Features</a></li>
                  <li><a href="#">Shopping cart</a></li>
                  <li><a href="#">Store builder</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-4">
                <ul class="list-unstyled">
                  <li><a href="#">Mobile commerce</a></li>
                  <li><a href="#">Dropshipping</a></li>
                  <li><a href="#">Website development</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-4">
                <ul class="list-unstyled">
                  <li><a href="#">Point of sale</a></li>
                  <li><a href="#">Hardware</a></li>
                  <li><a href="#">Software</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
            <h3 class="footer-heading mb-4">Promo</h3>
            <a href="#" class="block-6">
              <img src="${ pageContext.request.contextPath }/images/hero_1.jpg" alt="Image placeholder" class="img-fluid rounded mb-4">
              <h3 class="font-weight-light  mb-0">Finding Your Perfect Shoes</h3>
              <p>Promo from  nuary 15 &mdash; 25, 2019</p>
            </a>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="block-5 mb-5">
              <h3 class="footer-heading mb-4">Contact Info</h3>
              <ul class="list-unstyled">
                <li class="address">203 Fake St. Mountain View, San Francisco, California, USA</li>
                <li class="phone"><a href="tel://23923929210">+2 392 3929 210</a></li>
                <li class="email">emailaddress@domain.com</li>
              </ul>
            </div>

            <div class="block-7">
              <form action="#" method="post">
                <label for="email_subscribe" class="footer-heading">Subscribe</label>
                <div class="form-group">
                  <input type="text" class="form-control py-4" id="email_subscribe" placeholder="Email">
                  <input type="submit" class="btn btn-sm btn-primary" value="Send">
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" class="text-primary">Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>
	
	
	<script src="${ pageContext.request.contextPath }/js2/jquery-3.3.1.min.js"></script>
  <script src="${ pageContext.request.contextPath }/js2/jquery-ui.js"></script>
  <script src="${ pageContext.request.contextPath }/js2/popper.min.js"></script>
  <script src="${ pageContext.request.contextPath }/js2/bootstrap.min.js"></script>
  <script src="${ pageContext.request.contextPath }/js2/owl.carousel.min.js"></script>
  <script src="${ pageContext.request.contextPath }/js2/jquery.magnific-popup.min.js"></script>
  <script src="${ pageContext.request.contextPath }/js2/aos.js"></script>

  <script src="${ pageContext.request.contextPath }/js2/main.js"></script>
  <script type="text/javascript">
		 function confirmDelete(event) {
			var x = confirm("Are you sure you want to delete ?");
			if(x){
				alert("Delete sucessfully !")
			}else{
				event.preventDefault()
			}

		} 
		
	</script>
</body>
</html>