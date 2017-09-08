<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*,java.lang.*,java.util.Date,java.io.*"%>
<%@ include file="connection.jsp"%> 

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="refresh" content="900; url=./logout.jsp" />

 <title>HPCL Courier Management System | Update Entry</title>
    
	<link rel="stylesheet" type="text/css" href="css/style-UpdateEntry.css" media="all"/>
	<link rel="stylesheet" type="text/css" href="css/fonts.css" media="all"/>
	<link rel="stylesheet" type="text/css" href="css/w3.css" media="all"/>
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</head>



<style type="text/css">
/* Remove margins from the 'html' and 'body' tags, and ensure the page takes up full screen height */
html, body {height:100%; margin:0; padding:0;}
/* Set the position and dimensions of the background image. */
#page-background {position:fixed; top:0; left:0; width:100%; height:100%;}
/* Specify the position and layering for the content that needs to appear in front of the background image. Must have a higher z-index value than the background image. Also add some padding to compensate for removing the margin from the 'html' and 'body' tags. */
#content {position:relative; z-index:1; padding:10px;}
</style>

<link type="text/css" rel="Stylesheet"href="jquery-ui-1.10.4.custom.css" />
<script type="text/javascript" language="JavaScript" src="suycCalendar.js"></script>
<script src="jquery-1.6.4.min.js" type="text/javascript"></script>
<script src="jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>



<%@ include file="javascript.jsp"%> 
<script language="Javascript">
       <!--
      function isNumberKey(obj,evt) { 
	  
	  //alert("hi");
         var charCode = (evt.charCode) ? evt.which : event.keyCode

         if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode != 46) 
             return false; 
         else { 
         var input = obj.value;
             var len = obj.value.length; 
             var index = obj.value.indexOf('.'); 
             if (index > 0 && charCode == 46) { 
                 return false; 
             } 
             if (index >0 || index==0) { 
                 var CharAfterdot = (len + 1) - index; 
                 if (CharAfterdot > 2) { 

                     return false; 
                 } 

        }

    if (charCode == 46 && input.split('.').length >1) {
        return false;
        }


         } 
         //return true; 
      } 


       //-->
    </script>

<script type="text/javascript" language="JavaScript"> 

function validateForm()
{

//var courierrecptdate = document.forms["form1"]["CourierReceiptDate"].value;  
//var d3 = new Date(courierrecptdate);
//var d3 = courierrecptdate.getDate();

//var d4 = new Date(deliverydate);
//var d4 = deliverydate.getDate();

//var deliverydate = document.forms["form1"]["DeliveryDate"].value;  
//alert("hi");
 
 var deliverydate = document.forms["form1"]["DeliveryDate"].value;  
 var len = deliverydate.length;
 
  if (len == "11") {
	var res = deliverydate.substring(0, 2);
	var mon = deliverydate.substring(3, 6);
	var yr = deliverydate.substring(7, 11);
	} else{
		var res = deliverydate.substring(0, 1);
		var mon = deliverydate.substring(2, 5);
		var yr = deliverydate.substring(6, 10);
	}

 var courierrecptdate = document.forms["form1"]["CourierReceiptDate"].value;  
 var len1 = courierrecptdate.length;
 
  if (len1 == "11") {
	var res1 = courierrecptdate.substring(0, 2);
	var mon1 = courierrecptdate.substring(3, 6);
	var yr1 = courierrecptdate.substring(7, 11);
	} else{
		var res1 = courierrecptdate.substring(0, 1);
		var mon1 = courierrecptdate.substring(2, 5);
		var yr1 = courierrecptdate.substring(6, 10);
	}

	
if (mon == "Jan")
{
	var mond = "01"

}

if (mon == "Feb")
{
	var mond = "02"

}
if (mon == "Mar")
{
	var mond = "03"

}
if (mon == "Apr")
{
	var mond = "04"

}
if (mon == "May")
{
	var mond = "05"

}
if (mon == "Jun")
{
	var mond = "06"

}
if (mon == "Jul")
{
	var mond = "07"

}
if (mon == "Aug")
{
	var mond = "08"

}

if (mon == "Sep")
{
	var mond = "09"

}
if (mon == "Oct")
{
	var mond = "10"

}
if (mon == "Nov")
{
	var mond = "11"

}
if (mon == "Dec")
{
	var mond = "12"

}


if (mon1 == "Jan")
{
	var mond1 = "01"

}

if (mon1 == "Feb")
{
	var mond1 = "02"

}
if (mon1 == "Mar")
{
	var mond1 = "03"

}
if (mon1 == "Apr")
{
	var mond1 = "04"

}
if (mon1 == "May")
{
	var mond1 = "05"

}
if (mon1 == "Jun")
{
	var mond1 = "06"

}
if (mon1 == "Jul")
{
	var mond1 = "07"

}
if (mon1 == "Aug")
{
	var mond1 = "08"

}

if (mon1 == "Sep")
{
	var mond1 = "09"

}
if (mon1 == "Oct")
{
	var mond1 = "10"

}
if (mon1 == "Nov")
{
	var mond1 = "11"

}
if (mon1 == "Dec")
{
	var mond1 = "12"

}



       var dateOne = new Date(yr, mond, res); //Year, Month, Date

       var dateTwo = new Date(yr1, mon1, res1); //Year, Month, Date

	   alert(res);
	   alert(mond);
	   alert(yr);
	   alert("bhavya");
	   alert(res1);
	   alert(mond1);
	   alert(yr1);
	   alert(dateOne);
	    alert(dateTwo);

       if (dateOne > dateTwo)
	   {

            alert("Date One is greater then Date Two.");

        }
		
       if (dateTwo > dateOne) 
	   {

            alert("Date Two is greather then Date One.");

        }

		 return false;
		
		
//var date1=document.forms["form1"]["DateOfDispatch"].value;
							
}
</script>				




<body style="background-image: url('images/bg.jpg'); background-size:cover; font-family: raleway;">
        <div id="content">
            <strong><center>
                <br><font size="7" color="maroon" style="text-shadow: 2px 2px grey;">Update Entry</font>
                </center>
                <hr style="border-color: black;">
            <%
                String x = request.getParameter("ID");
                session.setAttribute("UpdateID", x);
                //String dbURL = "jdbc:oracle:thin:@(DESCRIPTION =(LOAD_BALANCE = ON)(FAILOVER = ON)(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = oradevdb.hpcl.co.in)(PORT = 1551)))(CONNECT_DATA =(SERVICE_NAME = devora92)(FAILOVER_MODE = (TYPE = SELECT)(METHOD = BASIC)) ))";
                //String dbDriver = "oracle.jdbc.driver.OracleDriver"; 
                //Connection con;  
                Class.forName(dbDriver); 
                //con = DriverManager.getConnection(dbURL,"HSE_#SEF19##_ENV15","HS9#1_E#E_FN#SEV15"); 
                con = DriverManager.getConnection(dbURL,"ezis","ezis123");
                PreparedStatement stmt;
                stmt = con.prepareStatement("SELECT * FROM EZIS.COURIERMGMT_ENTRIES WHERE ENTRYID1=?");
                stmt.setString(1, x);
                ResultSet rs = stmt.executeQuery();
                if(rs.next())
                {
            %>
    


<form method="post" name="form1" action="UpdateEntryServlet.jsp">
                        <table class="w3-table-all w3-hoverable">
                            <thead><tr class="w3-blue-grey">
                                <th><strong>ID</strong></th>
                                <th><strong>Courier Type</strong></th>
                                <th><strong>Date of Dispatch</strong></th>
                                <th><strong>From City</strong></th>
                                <th><strong>To City</strong></th>
                                <th><strong>Special Services</strong></th>
                                <th><strong>Special Services Description</strong></th>
                            </tr></thead>
							  <tr>
                                <th><%= rs.getString("ENTRYID1") %></th>
                                <th><%= rs.getString("COURIERTYPE") %></th>
                                <th><%= rs.getString("DISPATCHDATE") %></th>
                                <th><%= rs.getString("FROMCITY") %></th>
                                <th><%= rs.getString("TOCITY") %></th>
                                <th><%= rs.getString("SPECIALSERVICES") %></th>
                    <% 
                            if(rs.getString("SPECIALSERVICESDESC")==null)
                            {
                    %>
                                <th> - </th>
                    <%      }
                            else{
                    %>            
                                <th><%= rs.getString("SPECIALSERVICESDESC") %></th>
                            </tr>
                    <%   
                            }
                    %>
                        </table>
						
						
						  <br><font size="4" color="black">Mode of Transport: </font>
            <%      if(rs.getString("TRANSPORTMODE")==null){    %>            
                        <select class="w3-input" name="ModeOfTransport" >
                            <option value="Metro to Metro cities" disabled>--Mode of Transport--</option>
                            <option value="Metro to Metro cities">Metro to Metro cities</option>
                            <option value="Metro to A/B class cities">Metro to A/B class cities</option>
                            <option value="A/B class cities to Metro cities">A/B class cities to Metro cities</option>
                            <option value="Between Air Connected cities">Between Air Connected cities (Daily)</option>
                            <option value="Within Kolkata Municipalities/Kolkata town">Within Kolkata Municipalities/Kolkata town</option>
                            <option value="Non Air Connected cities">Non Air Connected cities (If daily flights are not available)</option>
                            <option value="State Capital to Statue Capital">State Capital to Statue Capital</option>
                            <option value="Metro/A/B class of cities to Unclassified cities">Metro/A/B class of cities to Unclassified cities</option>
                            <option value="Urgent Letter - Metro to A or B class of cities">Urgent Letter - Metro to A or B class of cities</option>
                        </select>
            <%      } else{   %>
                        <select class="w3-input" name="ModeOfTransport" >
            <%          if(rs.getString("TRANSPORTMODE").equals("Metro to Metro cities")){    %>                
                            <option value="Metro to Metro cities" selected>Metro to Metro cities</option>
            <%          } else{   %> 
                            <option value="Metro to Metro cities">Metro to Metro cities</option>
            <%          } if(rs.getString("TRANSPORTMODE").equals("Metro to A/B class cities")){    %>                
                            <option value="Metro to A/B class cities" selected>Metro to A/B class cities</option>
            <%          } else{   %>
                            <option value="Metro to A/B class cities">Metro to A/B class cities</option>
            <%          } if(rs.getString("TRANSPORTMODE").equals("A/B class cities to Metro cities")){    %>                
                            <option value="A/B class cities to Metro cities" selected>A/B class cities to Metro cities</option>
            <%          } else{   %>
                            <option value="A/B class cities to Metro cities">A/B class cities to Metro cities</option>
            <%          } if(rs.getString("TRANSPORTMODE").equals("Between Air Connected cities")){    %>               
                            <option value="Between Air Connected cities" selected>Between Air Connected cities (Daily)</option>
            <%          } else{   %>  
                            <option value="Between Air Connected cities">Between Air Connected cities (Daily)</option>
            <%          } if(rs.getString("TRANSPORTMODE").equals("Within Kolkata Municipalities/Kolkata town")){    %>                
                            <option value="Within Kolkata Municipalities/Kolkata town" selected>Within Kolkata Municipalities/Kolkata town</option>
            <%          } else{   %>
                            <option value="Within Kolkata Municipalities/Kolkata town">Within Kolkata Municipalities/Kolkata town</option>
            <%          } if(rs.getString("TRANSPORTMODE").equals("Non Air Connected cities")){    %>                
                            <option value="Non Air Connected cities" selected>Non Air Connected cities (If daily flights are not available)</option>
            <%          } else{   %> 
                            <option value="Non Air Connected cities">Non Air Connected cities (If daily flights are not available)</option>
            <%          } if(rs.getString("TRANSPORTMODE").equals("State Capital to Statue Capital")){    %>                
                            <option value="State Capital to Statue Capital" selected>State Capital to Statue Capital</option>
            <%          } else{   %>   
                            <option value="State Capital to Statue Capital">State Capital to Statue Capital</option>
            <%          } if(rs.getString("TRANSPORTMODE").equals("Metro/A/B class of cities to Unclassified cities")){    %>                
                            <option value="Metro/A/B class of cities to Unclassified cities" selected>Metro/A/B class of cities to Unclassified cities</option>
            <%          } else{   %>
                            <option value="Metro/A/B class of cities to Unclassified cities">Metro/A/B class of cities to Unclassified cities</option>
            <%          } if(rs.getString("TRANSPORTMODE").equals("Urgent Letter - Metro to A or B class of cities")){    %>
                            <option value="Urgent Letter - Metro to A or B class of cities" selected>Urgent Letter - Metro to A or B class of cities</option>
            <%          } else{   %>
                            <option value="Urgent Letter - Metro to A or B class of cities">Urgent Letter - Metro to A or B class of cities</option>
            <%          }   %>           
                        </select>
            <%      }   %>
<br><font size="4" color="black">Weight of Courier(in Grams): </font>
            <%      if(rs.getString("COURIERWGHT")==null){    %>            
                        <input class="w3-input" type="text" name="WeightOfCourier" onkeypress="return isNumberKey(this,event)"/>
            <%      } else{ %>           
                        <input class="w3-input" type="text" name="WeightOfCourier" onkeypress="return isNumberKey(this,event)" value="<%= rs.getString("COURIERWGHT") %>"/>
            <%      }   %>            
                        <br><font size="4" color="black">POD No: </font>
            <%      if(rs.getString("PODNO")==null){    %>            
                        <input class="w3-input" type="text" name="PODNo"/>
            <%      } else{ %>
                        <input class="w3-input" type="text" name="PODNo" value="<%= rs.getString("PODNO") %>"/>
            <%      }   %>
			
			<br><font size="4" color="black">Courier Receipt Date: </font>
				
						
            <%      if(rs.getString("COURIERRECPT_DATE")==null){    %>            
                        <input type="text" name="CourierReceiptDate" class="datepicker"/>
            <%      } else{ %> 
                        <input type="text" name="CourierReceiptDate" class="datepicker" value="<%= rs.getString("COURIERRECPT_DATE") %>"/>
            <%      }   %>

                        <%
						}
						else
						{
						}
						
						%>
    
<script> 
                $(function() { 
                $( ".datepicker" ).datepicker({ 
                changeMonth: true, 
                changeYear: true, 
                dateFormat: "d-M-yy" 
                }); 
                });
</script>
   
			 <br><br><font size="4" color="black">Delivery Date: </font>
            <%      if(rs.getString("DELIVERY_DATE")==null){    %>            
                        <input class="datepicker" type="text" name="DeliveryDate"/>
            <%      } else{ %>
                        <input class="datepicker" type="text" name="DeliveryDate" value="<%= rs.getString("DELIVERY_DATE") %>"/>
            <%      }   %>
                        <br><input type="submit" value="Update" class="w3-btn w3-teal w3-hover-green w3-large w3-ripple w3-text-shadow" onClick="javascript: return validateForm(form1);"/>
                        
                    </form>
</body>

<hr>
</table>
</body>



  			
</center>
<br>
<table width=100% border="0" bgcolor="#cc0000" cellspacing="0" cellpadding="0">
                <tr >
							<td width=30% align="center"><Font face=verdana color=white size=1> <b> Developed by: ISD-HPCL</b></font>
							</td>
							
                </tr>
</table>
             
   
</body>
</html>  

