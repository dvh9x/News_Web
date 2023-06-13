<?php 
    session_start();
    include("lib/dbCon.php");
    include("lib/trangchu.php");
    if(isset($_GET['p'])){
        $p = $_GET['p'];
    }else{
        $p = "";
    }
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trung tâm công nghệ thông tin và truyền thông Ngệ An</title>
<link rel="stylesheet" type="text/css" href="css/layout.css" />
</head>

<body>
<div id="wrap-vp">
    <div class="right"><a href="./admin/"><span><strong>ĐĂNG NHẬP</strong></span> </a></div>
    <br>
	<div id="header-vp">    
    	<div id="logo"><a href="./"><img src="images/logo.png" /></a></div>
    </div>
    <br><br><br><br><br><br><br><br><br>
    <div>
    	<?php 
            require "blocks/menu.php";
        ?>
    </div>
      
    <div id="midheader-vp">
    	<div id="left">
            <div class="txt_timer left" id="clockPC"><strong> Thứ bảy, 10/06/2023, 08:05</strong></div>	
        </div>

        <div id="right">
            <div class="block_search_web right">
            <form name="DateFilter" method="get">
Từ ngày
<input type="date" id="dateFrom" value="<?php echo date('Y-m-d'); ?>" />
<br/>
Đến ngày
<input type="date" id="dateTo" value="<?php echo date('Y-m-d'); ?>" />
</form>
                <form action="" method="get"  id="search">
                   <input name="search" value="" maxlength="80" class="txt_input" type="text">
                   <input value="" class="icon_search_web" type="submit">
                   <input type="hidden" name="p" value="timkiem"></input>
                </form>
            </div>
        </div>
    </div>
    <div class="clear"></div>

    <div id="slide-vp">
        <div id="thongtin", style="width: 100px;">
            <a href="https://thitructuyen.nghean.gov.vn"><img src="images/cuocthi.png" /></a>
        </div>

        <div >
            <a href="./"><img src="images/qc1.png" /></a>
        </div>
    </div>

    <div id="content-vp">
    	
        <div id="content-main">
			
			<!--PAGES-->
            <?php 
                switch ($p) {
                   case 'tintrongloai':
                        require "pages/tintrongloai.php";
                        break;
                    case 'chitiettin':              
                        require "pages/chitiettin.php";
                        break;
                    case 'timkiem':
                        require "pages/timkiem.php";
                        break;    
                    default:
                        require "pages/trangchu.php";
                        break;
                }
            ?>
            
        </div>
        <div id="content-right">
		<?php 
                switch ($p) {
                   case 'tintrongloai':
                        require "blocks/cot_phai.php";
                        break;
                    case 'chitiettin':
                        
                        break;
                    case 'timkiem':
                        require "blocks/cot_phai.php";
                        break;    
                    default:
                        require "blocks/cot_phai.php";
                        break;
                }
            ?>

        </div>

    <div class="clear"></div>
    <div id="thongtin">
     <a href="./"><img src="images/1.png" /></a>
    </div>
   
    </div>
    
    
<div class="col-md-24 text-center">                                
            <div style="text-align: center;"><strong>Trung tâm Công nghệ thông tin và Truyền thông Nghệ An</strong><br>Địa chỉ: Số 6, đường Trần Huy Liệu, phường Hưng Phúc, thành phố Vinh, Nghệ An<br>Điện thoại: 0238 3589 417<br>Chịu trách nhiệm nội dung: Ông Phan Bình Giang, Q.Giám đốc<br>Giấy phép thiết lập trang thông tin điện tử tổng hợp số 139/GP-TTĐT của Sở Thông tin và Truyền thông Nghệ An cấp ngày 05/12/2022</div>
        </div>
</body>
</html>