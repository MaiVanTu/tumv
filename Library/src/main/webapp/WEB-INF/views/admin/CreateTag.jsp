<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description"
    content="responsive photo gallery using colorbox" />
<meta name="viewport"
    content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel="stylesheet" href="/Library/css/bootstrap.min.css" />
<link rel="stylesheet" href="/Library/font-awesome/4.5.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="/Library/css/colorbox.min.css" />
<link rel="stylesheet" href="/Library/css/fonts.googleapis.com.css" />
<link rel="stylesheet" href="/Library/font/font-awesome.min.css" />
<link rel="stylesheet" href="/Library/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
<link rel="stylesheet" href="/Library/css/ace-skins.min.css" />
<link rel="stylesheet" href="/Library/css/ace-rtl.min.css" />
<link rel="stylesheet" href="/Library/css/style.css" />
<script src="/Library/js/ace-extra.min.js"></script>
<style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}</style>
<title>Trang Quản Trị</title>
</head>
<body class="no-skin">
    <!-- Add Header -->
    <jsp:include page="../Header.jsp"></jsp:include>
    <!-- Add Menu -->
    <div class="main-container ace-save-state" id="main-container">
        <script type="text/javascript">
                try{ace.settings.loadState('main-container')}catch(e){}
            </script>
        <jsp:include page="../Menu.jsp"></jsp:include>
        <!-- Main -->
        <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                    <ul class="breadcrumb">
                        <li><i class="ace-icon fa fa-home home-icon"></i> <a href="/Library/Home">Home</a>
                        </li>
                    </ul>
                    <!-- /.breadcrumb -->
                </div>

                <div class="page-content">
                    <div class="row">
                        <div class="col-xs-12">
                            <!-- PAGE CONTENT BEGINS -->
                            <div class="container">
                                <h2>Thẻ Độc Giả</h2>
                                <form:form action="/Library/service/createTag" method="POST" modelAttribute="createTag">
                                    <form:hidden path="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    <div class="form-group">
                                        <label for="name">Họ Và Tên:</label>
                                        <form:input path="name" class="form-control" id="name" placeholder="Họ Và Tên"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="typeperon">Loại Độc Giả:</label>
                                        <form:select class="form-control" id="sel1" path="typeReader">
                                            <form:option value="X"/>
                                            <form:option value="Y"/>
                                        </form:select>
                                    </div>
                                    <div class="form-group"> <!-- Date input -->
                                        <label class="control-label" for="dateBorn">Ngày Sinh:</label>
                                        <form:input class="form-control date" id="dateBorn" path="dateBorn" placeholder="MM/DD/YYY" type="text"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="address">Địa Chỉ:</label> <form:input
                                            class="form-control" id="address" path="address" placeholder="Địa Chỉ"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email:</label> <form:input type="email"
                                            class="form-control" id="email" path="email" placeholder="Email"/>
                                    </div>
                                    <div class="form-group"> <!-- Date input -->
                                        <label class="control-label" for="dateCreate">Ngày Lập Thẻ:</label>
                                        <form:input class="form-control date" id="dateCreate" path="dateCreate" placeholder="MM/DD/YYY" type="text"/>
                                    </div>
                                    <button type="submit" class="btn btn-default">Lập Thẻ</button>
                                </form:form>
                            </div>
                            <!-- PAGE CONTENT ENDS -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.page-content -->
            </div>
        </div>
        <!-- /.main-content -->
        <!-- Add Footer -->
        <jsp:include page="../Footer.jsp"></jsp:include>

        <a href="#" id="btn-scroll-up"
            class="btn-scroll-up btn btn-sm btn-inverse"> <i
            class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
        </a>
    </div>
    <!-- /.main-container -->
    <!-- basic scripts -->

    <!--[if !IE]> -->
    <script src="/Library/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->

    <script type="text/javascript">
            if('ontouchstart' in document.documentElement) document.write("<script src='/Library/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
        </script>
    <script src="/Library/js/bootstrap.min.js"></script>

    <!-- page specific plugin scripts -->
    <script src="/Library/js/jquery.colorbox.min.js"></script>

    <!-- ace scripts -->
    <script src="/Library/js/ace-elements.min.js"></script>
    <script src="/Library/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
            jQuery(function($) {
    var $overflow = '';
    var colorbox_params = {
        rel: 'colorbox',
        reposition:true,
        scalePhotos:true,
        scrolling:false,
        previous:'<i class="ace-icon fa fa-arrow-left"></i>',
        next:'<i class="ace-icon fa fa-arrow-right"></i>',
        close:'&times;',
        current:'{current} of {total}',
        maxWidth:'100%',
        maxHeight:'100%',
        onOpen:function(){
            $overflow = document.body.style.overflow;
            document.body.style.overflow = 'hidden';
        },
        onClosed:function(){
            document.body.style.overflow = $overflow;
        },
        onComplete:function(){
            $.colorbox.resize();
        }
    };

    $('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
    $( ".datepicker" ).datepicker({
           format: 'dd/mm/yyyy'
        });
    $("#cboxLoadingGraphic").html("<i class='ace-icon fa fa-spinner orange fa-spin'></i>");//let's add a custom loading icon


    $(document).one('ajaxloadstart.page', function(e) {
        $('#colorbox, #cboxOverlay').remove();
       });
})
</script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
    $(document).ready(function(){
        var date_dateBorn=$('input[name="dateBorn"]'); //our date input has the name "date"
        var date_dateCreate=$('input[name="dateCreate"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_dateBorn.datepicker({
            format: 'mm/dd/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        });
        date_dateCreate.datepicker({
            format: 'mm/dd/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
</script>
</body>
</html>