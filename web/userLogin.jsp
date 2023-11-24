<%--
  Created by IntelliJ IDEA.
  User: 张san
  Date: 2023/11/8
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>login page</title>

    <style>
      #loginFrame{
        width: 500px;
        height: 400px;
        margin-left: 600px;
        margin-top: 260px;
      }
      #innerLoginFrame{
        width: 360px;
        margin-left: 90px;
        margin-top: 45px;
        color: grey;
        font-size: 20px;
      }
      input{
        width: 220px;
        height: 30px;
      }
    </style>
  </head>
  <body>
  <div id="loginFrame" style="border: grey 2px solid">
<%--    <span style="position: center"></span>--%>
    <h1 style="margin-top: 40px;text-align: center">B&nbsp;u&nbsp;l&nbsp;a</h1>
    <div id="innerLoginFrame" style="font-size: 28px">
      <form action="userLogin" method="post" onclick="return checkLogin()">
      User <label for="userAc"></label><input style="font-size: 28px" type="text" id="userAc" name="ayaka" class="myText"><br><br>
      Pwd <label for="userPw"></label><input style="font-size: 28px" type="password" id="userPw" name="6" class="myText"><br><br>
      <input style="width: 140px;margin-left: 30px" type="submit" value="submit">
      <a href="register.jsp" style="width: 140px;margin-left: 15px">register</a><br>
      <span style="color: red;font-size: 15px" id="tip">${tip}</span>
      </form>
    </div>
  </div>

  </body>
</html>

<script>
  function checkLogin(){
    let userAccount=document.getElementById("userAc").value;
    let userPwd=document.getElementById("userPw").value;
    if(userAccount==null||userAccount.trim()===""){
      document.getElementById("tip").innerHTML="blank account";
      return false;
    }if (userPwd==null||userPwd.trim()===""){
      document.getElementById("tip").innerHTML="pwd can not be null";
      return false;
    }


  }

</script>
