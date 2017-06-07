This file used html scripts from the charts.html in order to maintain the look and feel of the Siyaleader site. However the script from the charts was coded from scratch. The script is divided into three parts. 1. DATABASE CONNECTION >>>> <?php
	$con = mysqli_connect('localhost','root','','ports_database_db') or Die();
?>

****Ensure that you configure the import database script in accordance with the set up on your system. 


2. : Below is the google chart code. The following script requires internet connecton 
		            "<script type="text/javascript" src="https://www.google.com/jsapi">, however the
					rest of the script is stored within the mtimuni.php file-->	
		
	
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
     
2. Below is the column chart which displays the cases that are due and the due date -->	
					
	 <script type="text/javascript">
    google.load("visualization", "1", {packages:["corechart"]});
    google.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([

          ['Date', 'Due Cases'],
            <?php 
	        	$query = "SELECT count(id) AS count, due_date FROM cases GROUP BY due_date ORDER BY due_date";

	        	$exec = mysqli_query($con,$query);
	        	while($row = mysqli_fetch_array($exec)){

	        		echo "['".$row['due_date']."',".$row['count']."],";
	        	}
	   ?>
         
        ]);

        var options = {
        	title: 'Cases Due'
        };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart"));
      chart.draw(data, options);
  }
  </script>

3.  This is where the charts are displayed. 
	           COMMENT  : Charts-->					 
                           <h3>Column Chart</h3>
   <div id="columnchart" style="width: 900px; height: 500px;"></div>

