<?php 
session_start();
include('includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{

if($_GET['action']='del' && $_GET['pid'])
{
$id=intval($_GET['pid']);
$query=mysqli_query($con,"update tin set AnHien='0' where idTin='$id'");
if($query)
{
$msg="Đã Xóa Bài Viết!! ";
}
else{
$error="Thất Bại !!";    
} 
}
if($_GET['retid'])
{
	$id=intval($_GET['retid']);
	$query=mysqli_query($con,"update tin set AnHien='1'  where idTin='$id'");
	$msg="Phục Hồi Thành Công !!";
}
if($_GET['action']=='piedel' && $_GET['pid'])
{
	$id=intval($_GET['pid']);
	$query=mysqli_query($con,"delete from  tin  where idTin='$id'");
	$delmsg="Đã Xóa Vĩnh Viễn !!";
}
?>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App title -->
        <title>Quản Lý Bài Viết</title>

        
        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
		


      

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
           <?php include('includes/topheader.php');?>

            <!-- ========== Left Sidebar Start ========== -->
           <?php include('includes/leftsidebar.php');?>


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">


                        <div class="row">
							<div class="col-xs-12">
								<div class="page-title-box">
                                    <h4 class="page-title">Quản Lý Bài Viết </h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">Admin</a>
                                        </li>
                                        <li>
                                            <a href="#">Bài viết</a>
                                        </li>
                                        <li class="active">
                                        Quản Lý Bài Viết 
                                        </li>
                                    </ol>
                                    <div class="clearfix"></div>
                                </div>
							</div>
						</div>
                        <!-- end row -->




                        <div class="row">
                            <div class="col-sm-12">
                                
                                <div class="demo-box m-t-20">
<a href="ThemBV.php">
<button id="addToTable" class="btn btn-success waves-effect waves-light">Thêm <i class="mdi mdi-plus-circle-outline" ></i></button>
</a>
 </div>

                                    <div class="table-responsive">
<table class="table table-colored table-centered table-inverse m-0">
<thead>
<tr>
<th>#</th>                                           
<th>Tiêu Đề</th>
<th>Thể Loại</th>
<th>Loại Tin</th>
<th>Chức Năng</th>
</tr>
</thead>
<tbody>

<?php

$query=mysqli_query($con,"select tin.idTin as postid,tin.TieuDe as title,theloai.TenTL as category,loaitin.Ten as subcategory from tin left join theloai on theloai.idTL=tin.idTL left join loaitin on loaitin.idLT=tin.idLT where tin.AnHien=1 ");
$cnt=1;
$rowcount=mysqli_num_rows($query);
if($rowcount==0)
{
?>
<tr>

<td colspan="4" align="center"><h3 style="color:red">Không có dữ liệu</h3></td>
<tr>
<?php 
} else {
while($row=mysqli_fetch_array($query))
{
?>
 <tr>
 <th scope="row"><?php echo htmlentities($cnt);?></th>
<td><b><?php echo htmlentities($row['title']);?></b></td>
<td><?php echo htmlentities($row['category']);?></td>
<td><?php echo htmlentities($row['subcategory']);?></td>

<td><a href="SuaBV.php?pid=<?php echo htmlentities($row['postid']);?>"><i class="fa fa-pencil" style="color: #29b6f6;"></i></a> 
    &nbsp;<a href="manage-posts.php?pid=<?php echo htmlentities($row['postid']);?>&&action=del" onclick="return confirm('Bạn có muốn xóa không ?')"> <i class="fa fa-trash-o" style="color: #f05050"></i></a> </td>
 </tr>
<?php
$cnt++;
 } }?>
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                
                            </div>
                        </div>

                        <div class="row">
<div class="col-md-12">
<div class="demo-box m-t-20">
<div class="m-b-30">

 <h4><i class="fa fa-trash-o" ></i> Loại Tin Đã Xóa</h4>

 </div>

<div class="table-responsive">
   <table class="table m-0 table-colored-bordered table-bordered-danger">
                                                        <thead>
                                                            <tr>
                                                                <th>#</th>
                                                                <th> Thể loại</th>
                                                                <th>Loại tin</th>
                                                                
                                                                <th>Chức năng</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
<?php 
$query=mysqli_query($con,"select tin.idTin as postid,tin.TieuDe as title,theloai.TenTL as category,loaitin.Ten as subcategory from tin left join theloai on theloai.idTL=tin.idTL left join loaitin on loaitin.idLT=tin.idLT where tin.AnHien=0");
$cnt=1;
$rowcount=mysqli_num_rows($query);
if($rowcount==0)
{
?>
<tr>

<td colspan="7" align="center"><h3 style="color:red">Không có dữ liệu</h3></td>
<tr>
<?php 
} else {

while($row=mysqli_fetch_array($query))
{
?>

 <tr>
<th scope="row"><?php echo htmlentities($cnt);?></th>
<td><b><?php echo htmlentities($row['title']);?></td>
<td><?php echo htmlentities($row['category'])?></td>
<td><?php echo htmlentities($row['subcategory'])?></td>

<td><a href="manage-posts.php?retid=<?php echo htmlentities($row['postid']);?>"><i class="ion-arrow-return-right" title="Phục hồi bài viết"></i></a>
    &nbsp;<a href="manage-posts.php?pid=<?php echo htmlentities($row['postid']);?>&&action=piedel"> <i class="fa fa-trash-o" style="color: #f05050"></i></a> </td>
</tr>
<?php
$cnt++;
 } }?>
</tbody>
                                                  
                                                    </table>
                                                </div>



                                                
											</div>

										</div>

							
									</div>                  
                                  



                    </div> <!-- container -->

                </div> <!-- content -->

       <?php include('includes/footer.php');?>

            </div>


         

        </div>
      


        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
       

       

        


        

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
</html>
<?php } ?>