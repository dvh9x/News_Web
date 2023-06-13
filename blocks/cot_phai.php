<div class="box-cat">
	<div class="cat">
    	<div class="main-cat">
        	<a href="#">TOP BÀI VIẾT XEM NHIỀU NHẤT</a>
        </div>
       
        <div class="clear"></div>
        <div class="cat-content">
        	<?php 
                $tinxemnhieu = tinxemnhieu($conn);
                while($row = mysqli_fetch_array($tinxemnhieu)){

            ?>
            
            <div class="col1">
            	<div class="news">
                <span> Số lượt xem: <?php  echo $row['SoLanXem'];?></span></h3>
                  <img class="images_news" src="upload/tintuc/<?php echo $row['urlHinh'];?>"  />
                    <h3 class="title" ><a href="index.php?p=chitiettin&idTin=<?php echo $row['idTin'];?>"><?php echo $row['TieuDe'];?></a>
                    <div class="clear"></div>
				</div>
            </div>
            <?php } ?>
            
            
            
            


            
        </div>
    </div>
</div>
<div class="clear"></div>

