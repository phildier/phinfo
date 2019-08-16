<pre>
<?php 

if($_GET['show_info'] == 1) {
	print_r($_SERVER);
} else {
	echo "<h1>Hello from {$_SERVER['HTTP_HOST']}</h1>";
}
