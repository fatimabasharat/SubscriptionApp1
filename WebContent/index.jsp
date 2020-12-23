<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create a Subscription</title>
</head>
<body>
	
	<h1>Enter Details:</h1>

        <form name="Subscription Action Form" action="response.jsp">
            Amount to Charge per Invoice:
            <input type="number" name="amount" id="amount" value="" min="1" required/>
            <br>
            Subscription Type:
            <input type="radio" id="daily" name="type" value="daily" onclick="DSelected()" required>
            <script>
				function DSelected() {
  				var x = document.getElementById("daily").checked;
  				if(x)
  					{
  					document.getElementById("date").disabled = true; 
  					document.getElementById("day").disabled = true;
  					}
  				else
  					{
  					document.getElementById("date").disabled = false; 
  					document.getElementById("day").disabled = false;
  					}
  					}
			</script>
  			<label for="daily">Daily</label>
  			
  			<input type="radio" id="weekly" name="type" value="weekly" onclick="WSelected()">
  			<label for="weekly">Weekly</label>
  			<script>
				function WSelected() {
  				var x = document.getElementById("weekly").checked;
  				if(x)
  					{
  					document.getElementById("date").disabled = true; 
  					document.getElementById("day").disabled = false;
  					}
				}
			</script>
  			<input type="radio" id="monthly" name="type" value="monthly" onclick="MSelected()">
  			<label for="monthly">Monthly</label>
  			<script>
				function MSelected() {
  				var x = document.getElementById("monthly").checked;
  				if(x)
  					{
  					document.getElementById("date").disabled = false; 
  					document.getElementById("day").disabled = true;
  					}
				}
			</script>
            <br>
            Date:
            <select name="date" id="date">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select>
			<br>
			Day:
			<select name="day" id="day" required>
				<option value="monday">Monday</option>
				<option value="tuesday">Tuesday</option>
				<option value="wednesday">Wednesday</option>
				<option value="thursday">Thursday</option>
				<option value="friday">Friday</option>
				<option value="saturday">Saturday</option>
				<option value="sunday">Sunday</option>
			</select>
 			<br>
 			<label for="sdate">Start Date:</label>
				<input type="date" id="sdate" name="sdate">
			<br>
			<label for="edate">End Date:</label>
				<input type="date" id="edate" name="edate" >
			<br>
			<script>
			var today = new Date();
			var dd = today.getDate();
			var mm = today.getMonth()+1; //January is 0!
			var yyyy = today.getFullYear();
 			if(dd<10){
        		dd='0'+dd
    		} 
    		if(mm<10){
        		mm='0'+mm
    		} 

			today = yyyy+'-'+mm+'-'+dd;
			document.getElementById("sdate").setAttribute("min", today);
			document.getElementById("edate").setAttribute("min", today);
			document.getElementById("sdate").setAttribute("value", today);
			document.getElementById("edate").setAttribute("value", today);
			</script>
            <input type="submit" value="Submit" onclick="dateDiffInDays()" />
            <script>
			const _MS_PER_DAY = 1000 * 60 * 60 * 24;

			// a and b are javascript Date objects
			function dateDiffInDays() {
			var a = new Date(document.getElementById("sdate").value);
		    var b = new Date(document.getElementById("edate").value);
			  // Discard the time and time-zone information.
			  const utc1 = Date.UTC(a.getFullYear(), a.getMonth(), a.getDate());
			  const utc2 = Date.UTC(b.getFullYear(), b.getMonth(), b.getDate());

			  diff =  Math.floor((utc2 - utc1) / _MS_PER_DAY);
			  if(diff>90)
				  {
				  alert("You can select 90 days maximum");
				  }
			}
			</script>
        </form>
</body>
</html>