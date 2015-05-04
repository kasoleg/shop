<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="search">
		<div id="search-container" class="row">
			<div>
				<div class="facetss">
					<div class="facet-container">
						<form class="filter-sec facets search filters" action="#" method="post">
							<p class="show-all">
								<a href="#">Show All Products</a>
							</p>
							<div class="browsenodefacet">
								<div class="row">
									<h4 class="facet-title" onclick="facetToggle(this, 'bn')">Browse Categories
										<span class="plus"></span>
									</h4>
									<ul class="bn_facet facet_panel" id="bn_facet_panel">
										<li class="level-1 current_node">
											<a href="#">
												<span class="minus"></span>
												<span class="width1">Electronics</span>
											</a>
										</li>
										<p class="level-2">
											<a href="#">
												<span class="width2">Electronics Combo Offers</span>
												<span class="count">(14)</span>
											</a>
										</p>
										<p class="level-2">
											<a href="#">
												<span class="width2">Electronics Under 299</span>
												<span class="count">(113)</span>
											</a>
										</p>
										<p class="level-2">
											<a href="#">
												<span class="width2">Bundle Offers</span>
												<span class="count">(25)</span>
											</a>
										</p>
										<p class="level-2">
											<a href="#">
												<span class="width2">Latest Electronics</span>
												<span class="count">(50)</span>
											</a>
										</p>
										<p class="level-2">
											<a href="#">
												<span class="width2">Gadget Care</span>
												<span class="count">(196)</span>
											</a>
										</p>
									</ul>
								</div>
							</div>
							<div class="MS-or-facet">
								<h4 class="facet-title" onclick="facetToggle(this, 'make')">
									Brand
									<span class="plus"></span>
								</h4>
								<div id="make_facet_panel" class="facet_panel">
									<div class="facet-input-search">
										<input id="make_serach" type="text" placeholder="Search Brand">
										<span class="facet-search-icon glyphicon glyphicon-search"></span>
									</div>
									<div id="make-input-control" class="input-control contentHolder always-visible ps-container ps-active-y">
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">Acer</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">ADATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">Alcatel</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">Apple</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										<div class="content nav enabled unselected noajax">
											<input class="nav checkbox" type="checkbox">
											<a href="#">A-DATA</a>
										</div>
										
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div id="searchCont">
					<form class="summary-facets search-filters">
						<div class="search-summary">
							<h1 id=search-cata-gtm>
								<span class="cat">Electronics</span>
							</h1>
							<p class="summary">Showing 8&nbsp;052 results</p>
							<ul class="selected-facets breadcrumb">
							
							</ul>
							<ul class="nav nav-tabs">
								<span>Sort By</span>
								<li class="active" onclick="activeLi(this)">
									<a href="#">Best Match</a>
								</li>
								<li onclick="activeLi(this)">
									<a href="#">Low Price</a>
								</li>
								<li onclick="activeLi(this)">
									<a href="#">High Price</a>
								</li>
							</ul>
						</div>
					</form>
					<div id="results-wrapper">
						<div id="resultPane">
							<div class="resultsrow row">
								<!-- div class="page_no">Page no: 2</div-->
								<div class="search-icon">
									<div class="thumbnail">
										<div class="product-img">
											<a href="#">
												<img src="<%=request.getContextPath()%>/resources/common/img/products/mobi/12.jpg.d9078f043e.999x165x220.jpg" title="Micromax Canvas Juice 2 AQ5001 (Silver)" alt="Micromax Canvas Juice 2 AQ5001 (Silver)" class="img-responsive">
											</a>
										</div>
										<div class="product-content">
											<div class="p-tag">
												
											</div>
											<div class="title">
												<a href="#" title="Micromax Canvas Juice 2 AQ5001 (Silver)">Micromax Canvas Juice 2 AQ5001 (Silver)</a>
											</div>
											<div class="price">
												<span class="final-price">
													<span class="c-inr">Rs.</span>
													 8&nbsp;399
												</span>
												<span class="scratch">9&nbsp;999</span>
												<span class="discount">11% OFF</span>
											</div>
										</div>
									</div>
								</div>
								<div class="search-icon">
									<div class="thumbnail">
										<div class="product-img">
											<a href="#">
												<img src="<%=request.getContextPath()%>/resources/common/img/products/mobi/12.jpg.d9078f043e.999x165x220.jpg" title="Micromax Canvas Juice 2 AQ5001 (Silver)" title="Micromax Canvas Juice 2 AQ5001 (Silver)" alt="Micromax Canvas Juice 2 AQ5001 (Silver)" class="img-responsive">
											</a>
										</div>
										<div class="product-content">
											<div class="p-tag">
												
											</div>
											<div class="title">
												<a href="#" title="Micromax Canvas Juice 2 AQ5001 (Silver)">Micromax Canvas Juice 2 AQ5001 (Silver)</a>
											</div>
											<div class="price">
												<span class="final-price">
													<span class="c-inr">Rs.</span>
													 8&nbsp;399
												</span>
												<span class="scratch">9&nbsp;999</span>
												<span class="discount">11% OFF</span>
											</div>
										</div>
									</div>
								</div>
								<div class="search-icon">
									<div class="thumbnail">
										<div class="product-img">
											<a href="#">
												<img src="<%=request.getContextPath()%>/resources/common/img/products/mobi/12.jpg.d9078f043e.999x165x220.jpg" title="Micromax Canvas Juice 2 AQ5001 (Silver)" title="Micromax Canvas Juice 2 AQ5001 (Silver)" alt="Micromax Canvas Juice 2 AQ5001 (Silver)" class="img-responsive">
											</a>
										</div>
										<div class="product-content">
											<div class="p-tag">
												
											</div>
											<div class="title">
												<a href="#" title="Micromax Canvas Juice 2 AQ5001 (Silver)">Micromax Canvas Juice 2 AQ5001 (Silver)</a>
											</div>
											<div class="price">
												<span class="final-price">
													<span class="c-inr">Rs.</span>
													 8&nbsp;399
												</span>
												<span class="scratch">9&nbsp;999</span>
												<span class="discount">11% OFF</span>
											</div>
										</div>
									</div>
								</div>
								<div class="search-icon">
									<div class="thumbnail">
										<div class="product-img">
											<a href="#">
												<img src="<%=request.getContextPath()%>/resources/common/img/products/mobi/12.jpg.d9078f043e.999x165x220.jpg" title="Micromax Canvas Juice 2 AQ5001 (Silver)" title="Micromax Canvas Juice 2 AQ5001 (Silver)" alt="Micromax Canvas Juice 2 AQ5001 (Silver)" class="img-responsive">
											</a>
										</div>
										<div class="product-content">
											<div class="p-tag">
												
											</div>
											<div class="title">
												<a href="#" title="Micromax Canvas Juice 2 AQ5001 (Silver)">Micromax Canvas Juice 2 AQ5001 (Silver)</a>
											</div>
											<div class="price">
												<span class="final-price">
													<span class="c-inr">Rs.</span>
													 8&nbsp;399
												</span>
												<span class="scratch">9&nbsp;999</span>
												<span class="discount">11% OFF</span>
											</div>
										</div>
									</div>
								</div>
								<div class="search-icon">
									<div class="thumbnail">
										<div class="product-img">
											<a href="#">
												<img src="<%=request.getContextPath()%>/resources/common/img/products/mobi/12.jpg.d9078f043e.999x165x220.jpg" title="Micromax Canvas Juice 2 AQ5001 (Silver)" title="Micromax Canvas Juice 2 AQ5001 (Silver)" alt="Micromax Canvas Juice 2 AQ5001 (Silver)" class="img-responsive">
											</a>
										</div>
										<div class="product-content">
											<div class="p-tag">
												
											</div>
											<div class="title">
												<a href="#" title="Micromax Canvas Juice 2 AQ5001 (Silver)">Micromax Canvas Juice 2 AQ5001 (Silver)</a>
											</div>
											<div class="price">
												<span class="final-price">
													<span class="c-inr">Rs.</span>
													 8&nbsp;399
												</span>
												<span class="scratch">9&nbsp;999</span>
												<span class="discount">11% OFF</span>
											</div>
										</div>
									</div>
								</div>
								<div class="search-icon">
									<div class="thumbnail">
										<div class="product-img">
											<a href="#">
												<img src="<%=request.getContextPath()%>/resources/common/img/products/mobi/12.jpg.d9078f043e.999x165x220.jpg" title="Micromax Canvas Juice 2 AQ5001 (Silver)" title="Micromax Canvas Juice 2 AQ5001 (Silver)" alt="Micromax Canvas Juice 2 AQ5001 (Silver)" class="img-responsive">
											</a>
										</div>
										<div class="product-content">
											<div class="p-tag">
												
											</div>
											<div class="title">
												<a href="#" title="Micromax Canvas Juice 2 AQ5001 (Silver)">Micromax Canvas Juice 2 AQ5001 (Silver)</a>
											</div>
											<div class="price">
												<span class="final-price">
													<span class="c-inr">Rs.</span>
													 8&nbsp;399
												</span>
												<span class="scratch">9&nbsp;999</span>
												<span class="discount">11% OFF</span>
											</div>
										</div>
									</div>
								</div>
								<div class="search-icon">
									<div class="thumbnail">
										<div class="product-img">
											<a href="#">
												<img src="<%=request.getContextPath()%>/resources/common/img/products/mobi/12.jpg.d9078f043e.999x165x220.jpg" title="Micromax Canvas Juice 2 AQ5001 (Silver)" title="Micromax Canvas Juice 2 AQ5001 (Silver)" alt="Micromax Canvas Juice 2 AQ5001 (Silver)" class="img-responsive">
											</a>
										</div>
										<div class="product-content">
											<div class="p-tag">
												
											</div>
											<div class="title">
												<a href="#" title="Micromax Canvas Juice 2 AQ5001 (Silver)">Micromax Canvas Juice 2 AQ5001 (Silver)</a>
											</div>
											<div class="price">
												<span class="final-price">
													<span class="c-inr">Rs.</span>
													 8&nbsp;399
												</span>
												<span class="scratch">9&nbsp;999</span>
												<span class="discount">11% OFF</span>
											</div>
										</div>
									</div>
								</div>
								<div class="search-icon">
									<div class="thumbnail">
										<div class="product-img">
											<a href="#">
												<img src="<%=request.getContextPath()%>/resources/common/img/products/mobi/12.jpg.d9078f043e.999x165x220.jpg" title="Micromax Canvas Juice 2 AQ5001 (Silver)" title="Micromax Canvas Juice 2 AQ5001 (Silver)" alt="Micromax Canvas Juice 2 AQ5001 (Silver)" class="img-responsive">
											</a>
										</div>
										<div class="product-content">
											<div class="p-tag">
												
											</div>
											<div class="title">
												<a href="#" title="Micromax Canvas Juice 2 AQ5001 (Silver)">Micromax Canvas Juice 2 AQ5001 (Silver)</a>
											</div>
											<div class="price">
												<span class="final-price">
													<span class="c-inr">Rs.</span>
													 8&nbsp;399
												</span>
												<span class="scratch">9&nbsp;999</span>
												<span class="discount">11% OFF</span>
											</div>
										</div>
									</div>
								</div>
								<div class="search-icon">
									<div class="thumbnail">
										<div class="product-img">
											<a href="#">
												<img src="<%=request.getContextPath()%>/resources/common/img/products/mobi/12.jpg.d9078f043e.999x165x220.jpg" title="Micromax Canvas Juice 2 AQ5001 (Silver)" title="Micromax Canvas Juice 2 AQ5001 (Silver)" alt="Micromax Canvas Juice 2 AQ5001 (Silver)" class="img-responsive">
											</a>
										</div>
										<div class="product-content">
											<div class="p-tag">
												
											</div>
											<div class="title">
												<a href="#" title="Micromax Canvas Juice 2 AQ5001 (Silver)">Micromax Canvas Juice 2 AQ5001 (Silver)</a>
											</div>
											<div class="price">
												<span class="final-price">
													<span class="c-inr">Rs.</span>
													 8&nbsp;399
												</span>
												<span class="scratch">9&nbsp;999</span>
												<span class="discount">11% OFF</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="shop-wrapper">
							<a id="load-next-set" class="scroll-load">Load more products</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a href="" class="scrollup" style="display: block;"></a>
	</div>
</body>
<script>	       
$(document).ready(function(){
$('.contentHolder').perfectScrollbar({suppressScrollX: true});
	if ((width <= 480)) {
		$(".facet_panel").hide();
	}		
	if (width <= 480) {
		$(".facets").hide();
	}
	else{
		$('.facetss').stick_in_parent();
	}
});
</script>
</html>