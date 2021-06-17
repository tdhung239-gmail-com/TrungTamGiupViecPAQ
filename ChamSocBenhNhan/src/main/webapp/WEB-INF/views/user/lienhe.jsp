<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="row ">
	<div class="col-lg-12"
		style="box-shadow: 0 6px 12px 0 rgb(0 0 0/ 20%); margin-top:20px; bottom: 10px; background: linear-gradient(90deg, #69b7eb, #b3dbd3, #f4d6db);">
		<h1 class="display-8"
			style="margin: 20px; font-family: Times New Roman;">Liên hệ</h1>
	</div>
</div>
<div class="body-inner">


	<section id="main-container" class="main-container">
		<div class="container">

			<div class="row text-center">
				<div class="col-12">
					<h2 class="section-title">ĐẾN TRUNG TÂM CỦA CHÚNG TÔI</h2>
					<h3 class="section-sub-title">TÌM VỊ TRÍ CỦA CHÚNG TÔI</h3>
				</div>
			</div>
			<!--/ Title row end -->

			<div class="row">
				<div class="col-md-4">
					<div class="ts-service-box-bg text-center h-100">
						<span class="ts-service-icon icon-round"> <i
							class="fas fa-map-marker-alt mr-0"></i>
						</span>
						<div class="ts-service-box-content">
							<h4>GHÉ THĂM TRUNG TÂM</h4>
							<p>32 Nguyễn Thành Hãn - Đà Nẵng</p>
						</div>
					</div>
				</div>
				<!-- Col 1 end -->

				<div class="col-md-4">
					<div class="ts-service-box-bg text-center h-100">
						<span class="ts-service-icon icon-round"> <i
							class="fa fa-envelope mr-0"></i>
						</span>
						<div class="ts-service-box-content">
							<h4>GỬI EMAIL CHO CHÚNG TÔI</h4>
							<p>giupviecpaq@gmail.com</p>
						</div>
					</div>
				</div>
				<!-- Col 2 end -->

				<div class="col-md-4">
					<div class="ts-service-box-bg text-center h-100">
						<span class="ts-service-icon icon-round"> <i
							class="fa fa-phone-square mr-0"></i>
						</span>
						<div class="ts-service-box-content">
							<h4>GỌI CHO CHÚNG TÔI</h4>
							<p>(+84) 88-919-5752</p>
						</div>
					</div>
				</div>
				<!-- Col 3 end -->

			</div>
			<!-- 1st row end -->

			<div class="gap-60"></div>

			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.375643982139!2d108.20629091485824!3d16.04598518889525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x129010c43cc04091!2zQ2hvIFRodcOqIE5nxrDhu51pIEdpw7pwIFZp4buHYw!5e0!3m2!1svi!2s!4v1619006809614!5m2!1svi!2s"
				width="100%" height="500" style="border: 0;"></iframe>

			<div class="gap-40"></div>

			<div class="row">
				<div class="col-md-12">
					<h3 class="column-title">Gửi liên hệ cho chúng tôi</h3>
					<!-- contact form works with formspree.io  -->
					<!-- contact form activation doc: https://docs.themefisher.com/constra/contact-form/ -->
					<form:form id="contact-form" action="/ChamSocBenhNhan/home/lienhe/save" method="post" >
						<div class="error-container"></div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Name</label>

									<form:input class="form-control form-control-name" placeholder="Add Name" 
										path="tenLienHe" size="62"  pattern="^([a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+['-]?)+$" required="required" />

								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label>

									<form:input class="form-control form-control-email" placeholder="Add Email"  path="email"
									pattern="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"
										size="62" type="email" name="email" required="required" />
								</div>
							</div>
						</div>
						<div class="row">
							
							<div class="col-md-6">
								<div class="form-group">
									<label>Phone</label>

									<form:input class="form-control form-control-email"  path="sdt"
										size="62" placeholder="0273456789" type="tel" pattern="^(0[1-9][0-9]{8}|1[89]00[0-9]{4})$" required="required" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label>Message</label>
							<form:textarea class="form-control form-control-message" path="thongDiep"
								rows="10" name="message" placeholder="Add Message"   pattern="^([0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+[,.]?[ ]?|[0-9a-zA-ZÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂẾưăạảấầẩẫậắằẳẵặẹẻẽềềểếỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+['-]?)+$" required="required" />
						</div>
						<div class="text-right">
							<br>
							<button class="btn btn-primary solid blank" type="submit">Send
								Message</button>
						</div>
					</form:form>
				</div>

			</div>
			<!-- Content row -->
		</div>
		<!-- Conatiner end -->
	</section>
	
	${param.message}
	<!-- Main container end -->
</div>
<!-- Body inner end -->
