# provided by professor for class

<a href="index.php?page=page1.html"><button>page1</button></a><br/>
<a href="index.php?page=page2.html"><button>page2</button></a><br/>
<a href="index.php?page=page3.html"><button>page3</button></a><br/>
<?php
$page = $_GET['page'];
echo "<div>";
if(isset($page))
{
 
  include("$page");
}
else
{
  echo "<p>select a page</p>";
}
echo "</div>";
?>
