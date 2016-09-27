<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
         <script src="script/bookingvalidation.js"></script>
        <title>BMS-Book My Show</title>
    </head>
    <body>
       <%@include file="Header.jsp" %>
<h1><div id="topdiv" align="center">Welcome To Book My Show
<img src="IMAGES/BMS_logo_new.png"width="50" height="30" align="right"/> 


</h1>
<br>
<br>
<br>
<br>
<form  action="Bookingregisterdetail"  method="post">
<h3 align="center"> PLEASE BOOK YOUR EVENTS</h3>
      
<ul style="list-style-type: disc">
 
    
    
    
    
    
    
  <h3 > <li> THEATERPLACE</li></h3> 


<select>
  <option value="HYDERABAD">HYDERABAD</option>
  <option value="MUMBAI">MUMBAI</option>
  <option value="BANGALORE">BANGALORE</option>

</select>
  
</body>
</html>


<h3 align="left"> <li> EVENT DATE</li></h3>
   
  
    
        Event date:
    <input type="date" name="event date">
     
    

      <h3> <li> EVENT TIME</li></h3>
    

<select>
  <option value="11:00AM to 1:30PM">11:00AM to 1:30PM</option>
  <option value="2:00PM to 4:30PM ">2:00PM to 4:30PM</option>
  <option value="4:30PM to 7:00PM">4:30PM to 7:00PM</option>
 <option value="7:00PM to 9:30PM">7:00PM to 9:30PM</option>
</select>
      
      
      <h3><li> Please select a seat</li></h3>
  <select>
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
</select>


     
      
      <h3> <li> MOVIES</li></h3>
      <select>
  <option value="Baar Baar Dekho">Baar Baar Dekho</option>
  <option value="Banjo">Banjo</option>
  <option value="M.S. Dhoni - The Untold Story">M.S. Dhoni - The Untold Story</option>
<option value="Akira">Akira</option>
<option value="A Flying Jatt">A Flying Jatt</option>
<option value="Pink">Pink</option>
</select>
      
      
      
      
      
      <h3> <li> PRICE</li></h3>
      <select>
          <option value="120">120</option>
      </select>
      
      
         <div align="left">
    <input type='submit'value='SUBMIT'/>
                         <input type='reset'value='RESET'/>
                         <button type="cancel"><a href="index.jsp"> CANCEL </a></button>

                         </div>
      
 
  
</form>    
      
      
      
<br>
<br>
<br>

        <%@include file="Footer.jsp" %>
    </body>
</html>
