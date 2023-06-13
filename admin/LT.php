<?php
include('includes/config.php');
if(!empty($_POST["catid"])) 
{
 $id=intval($_POST['catid']);
$query=mysqli_query($con,"SELECT * FROM loaitin WHERE idTL=$id and AnHien=1");
?>
<option value="">Chọn Loại Tin</option>
<?php
 while($row=mysqli_fetch_array($query))
 {
  ?>
  <option value="<?php echo htmlentities($row['idLT']); ?>"><?php echo htmlentities($row['Ten']); ?></option>
  <?php
 }
}
?>