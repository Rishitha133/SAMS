<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
	String rollNo=request.getParameter("rollNo");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from student inner join result where student.rollNo=result.rollNo and student.rollNo='"+rollNo+"'");
	if(rs.next()){
%>

<div>
	<div style="width:10%;float:right"><img src="logo.jpg"  align="left"width="100" height="100"></div>
	<div style="width:80%;float:left"><center><h2 style="margin-top:25px";><b>KL UNIVERSITY</h2></center></div>
    <div style="width:100%;float:left"><a href="dgiOneView.html">Back</a></div>
</div>
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 16px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Institution Name: KL UNIVERSITY</th>
          <th>Course Name:<%=rs.getString(1) %></th>
          <th>Branch Name:<%=rs.getString(2) %></th>
          <th><center>RollNo: <%=rs.getString(3) %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name:<%=rs.getString(4) %></th>
          <th>Father Name: <%=rs.getString(5) %></th>
          <th>Gender: <%=rs.getString(6) %></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        <td rowspan="2">Level</td>
        <td rowspan="2">Train Harder</td>
        
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>KL101</td>
        <td colspan="2">ESD</td>
        <td>Theory/Practical</td>
        <td>100</td>
        <td> 33 </td>
        <td><%=rs.getString(8) %></td>
        <td><%
              int obtainedMarks=0;
              obtainedMarks =Integer.parseInt(rs.getString(8));
              String level="";
              if (obtainedMarks >=75) {
                  level = "High";
                } else if (obtainedMarks<30) {
                  level = "Low";
                } else{
                  level = "Intermediate";
                } 
              out.println(level);
              %></td>
           <td colspan="1"><% 
           if(level.equals("High")) { %>
           <a href="https://www.coursera.org/browse/computer-science/software-development">Advanced</a>
         <% } else if (level.equals("Intermediate")) { %>
           <a href="https://www.codecademy.com/learn/learn-intermediate-java">Intermediate</a>
         <% } else { %>
           <a href="https://www.udemy.com/course/java-tutorial/">Beginner</a>
         <% } 
         %>
        	   
         </td>
      </tr>
      <tr>
        <td>KL102</td>
        <td colspan="2">Mathematical Programming</td>
        <td>Theory/Practical</td>
        <td>100</td>
        <td>33</td>
        <td><%=rs.getString(9) %> </td>
        <td><%
              obtainedMarks =Integer.parseInt(rs.getString(9));
              level="";
              if (obtainedMarks >=75) {
                  level = "High";
                } else if (obtainedMarks<30) {
                  level = "Low";
                } else{
                  level = "Intermediate";
                } 
              out.println(level);
              %></td>
         <td><%
         if(level.equals("High")) { %>
         <a href="https://www.udemy.com/course/mathematics-software-development/">Advanced</a>
       <% } else if (level.equals("Intermediate")) { %>
         <a href="https://www.geeksforgeeks.org/essential-maths-for-competitive-programming-course-by-geeksforgeeks/">Intermediate</a>
       <% } else { %>
         <a href="https://www.coursera.org/lecture/operations-research-modeling/1-3-mathematical-programming-flXkK">Beginner</a>
       <% } 
         %>
      </tr>
      <tr>
        <td>KL103</td>
        <td colspan="2">DWDM</td>
        <td>Theory/Practical</td>
        <td>100</td>
        <td> 33 </td>
        <td> <%=rs.getString(10) %></td>
        <td><%
              obtainedMarks =Integer.parseInt(rs.getString(10));
              level="";
              if (obtainedMarks >=75) {
                  level = "High";
                } else if (obtainedMarks<30) {
                  level = "Low";
                } else{
                  level = "Intermediate";
                } 
              out.println(level);
              %></td>
          <td><%
         if(level.equals("High")) { %>
         <a href="https://www.udemy.com/course/data-mining-with-r-go-from-beginner-to-advanced/">Advanced</a>
       <% } else if (level.equals("Intermediate")) { %>
         <a href="https://www.coursera.org/specializations/data-mining">Intermediate</a>
       <% } else { %>
         <a href="https://www.udemy.com/course/data-mining-fundamentals-for-beginners/?utm_source=adwords&utm_medium=udemyads&utm_campaign=DSA_Catchall_la.EN_cc.INDIA&utm_content=deal4584&utm_term=_._ag_82569850245_._ad_533220805577_._kw__._de_c_._dm__._pl__._ti_dsa-406594358574_._li_9040204_._pd__._&matchtype=&gclid=EAIaIQobChMIsdLG0aXl_gIV8pFLBR3b9AA4EAAYASAAEgLMIfD_BwE">Beginner</a>
       <% } 
         %>
       
      </tr>
      <tr>
        <td>KL201</td>
        <td colspan="2">Data Science</td>
        <td>theory/Practical</td>
        <td>100</td>
        <td> 33 </td>
        <td> <%=rs.getString(11) %></td>
        <td><%
              obtainedMarks =Integer.parseInt(rs.getString(11));
              level="";
              if (obtainedMarks >=75) {
                  level = "High";
                } else if (obtainedMarks<30) {
                  level = "Low";
                } else{
                  level = "Intermediate";
                } 
              out.println(level);
              %></td>
           <td><%
         if(level.equals("High")) { %>
         <a href="https://www.coursera.org/specializations/advanced-data-science-ibm">Advanced</a>
       <% } else if (level.equals("Intermediate")) { %>
         <a href="https://www.datacamp.com/courses/intermediate-python">Intermediate</a>
       <% } else { %>
         <a href="https://www.udacity.com/course/intro-to-data-science--ud359">Beginner</a>
       <% } 
         %>
      </tr>
      <tr>
        <td>KL508</td>
        <td colspan="2">Flask</td>
        <td>Practical</td>
        <td>100</td>
        <td> 33 </td>
        <td> <%=rs.getString(12) %> </td>
        <td><%
              obtainedMarks =Integer.parseInt(rs.getString(12));
              level="";
              if (obtainedMarks >=75) {
                  level = "High";
                } else if (obtainedMarks<30) {
                  level = "Low";
                } else{
                  level = "Intermediate";
                } 
              out.println(level);
              %></td>
            <td><%
         if(level.equals("High")) { %>
         <a href="https://www.coursera.org/specializations/django">Advanced</a>
       <% } else if (level.equals("Intermediate")) { %>
         <a href="https://www.edx.org/learn/flask">Intermediate</a>
       <% } else { %>
         <a href="https://www.codecademy.com/learn/learn-flask">Beginner</a>
       <% } 
         %>
      </tr>
      <tr>
        <td>KL152</td>
        <td colspan="2">C</td>
        <td>Theory</td>
        <td>100</td>
        <td>45</td>
        <td> <%=rs.getString(13) %> </td>
        <td><%
              obtainedMarks =Integer.parseInt(rs.getString(13));
              level="";
              if (obtainedMarks >=75) {
                  level = "High";
                } else if (obtainedMarks<30) {
                  level = "Low";
                } else{
                  level = "Intermediate";
                } 
              out.println(level);
              %></td>
           <td><%
         if(level.equals("High")) { %>
         <a href="https://www.udemy.com/course/advanced-c-programming-course/">Advanced</a>
       <% } else if (level.equals("Intermediate")) { %>
         <a href="https://www.sololearn.com/learn/courses/c-intermediate">Intermediate</a>
       <% } else { %>
         <a href="https://www.udemy.com/course/c-programming-for-beginners-/">Beginner</a>
       <% } 
         %>
      </tr>
      <tr>
        <td>KL151</td>
        <td colspan="2">Core Java</td>
        <td>Theory</td>
        <td>100</td>
        <td>45</td>
        <td> <%=rs.getString(14) %> </td>
        <td><%
              obtainedMarks =Integer.parseInt(rs.getString(14));
              level="";
              if (obtainedMarks >=75) {
                  level = "High";
                } else if (obtainedMarks<30) {
                  level = "Low";
                } else{
                  level = "Intermediate";
                } 
              out.println(level);
              %></td>
            <td><%
         if(level.equals("High")) { %>
         <a href="https://www.udemy.com/course/ocp11_from_oca8/">Advanced</a>
       <% } else if (level.equals("Intermediate")) { %>
         <a href="https://www.udemy.com/course/java-in-depth-become-a-complete-java-engineer/">Intermediate</a>
       <% } else { %>
         <a href="https://www.udemy.com/course/java-programming-tutorial-for-beginners/">Beginner</a>
       <% } 
         %>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>700</td>
        <td>180</td>
        <td><%int sum=rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14);
              out.println(sum); %> </td>
        <td colspan="2"><%int Total=0;
             Total=sum;
             String Feed="";
             if (Total<250) {
                 Feed = "LOw";
               } else if (Total<550 && Total>250) {
                 Feed= "Intermediate";
               } else{
                 Feed= "High";
               } 
             out.println(Feed);
              %> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="5"><%out.println((sum*100)/700	+"%"); %></td>
      </tr>
  </table>
    <hr class="new1">
  <center><h6>Note: Institution doesn't own for the errors or omissions, if any, in this statement.
Designed & Developed by Rishitha and Sreya</h6></center>
  <hr class="new1">
<center><h6>All Right Reserved @SR</h6></center> 
  <hr class="new1">
</body>

<%}
else
{
   response.sendRedirect("errorDgiOneView.html");
}
}
catch(Exception e){
	}%>
