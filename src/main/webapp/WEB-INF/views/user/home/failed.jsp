<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<mt:template_home title="Contact">
	<jsp:attribute name="content">
		    <style>
      .super_card_email {
        text-align: center;
        padding-top: 40px;
       	margin-bottom: 30px;
      
      }
        .titleemail {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        .txtp {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      #iconcheck {
        color: #404F5E;
        padding: 25px;
      }
      .card_email {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
        margin-bottom: 30px;

      }
    </style>
    <div class="super_card_email">
      <div class="card_email">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i id="iconcheck" class="fa fa-exclamation" style="font-size: 150px"></i>
      </div>
        <div>
        <h3 class="titleemail" > <b>Oops!</b> </h3> 
        <p class="txtp">Your message sent failed. <br> Please try again.</p>
      </div>
      <br>
	<a href="${pageContext.request.contextPath }/user/home" class="btn btn-primary" type="button">Continue Shopping</a>
 	</div>
       </div>

	</jsp:attribute>
</mt:template_home>