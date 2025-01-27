<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html><head><title>회원가입</title>

<link href="mystyle.css" rel="stylesheet" type="text/css">
<style>
table {
  width: 60%;
  margin: auto;
  padding : 10px;     
} 
</style>
</head>

<body>


<h3 id="header">회원가입 정보 수정</h3>
<div id='menu'>
<%@ include file="mymenu.jsp" %>
</div>

<div id="main">
<h3 style="text-align : center;"> 회원 정보 수정</h3>
<form method='post' action='./member.do'  >
 <table >
      <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td></tr>
      <tr>
         <th style="width:100;text-align:left;"> 아이디 </th>
         <td><input type="text" name="userid" value="${user.userid}" read only></td>
      </tr>
      <tr>
         <th style="width:100;text-align:left;">이 름</th>
         <td><input type="text" name="username" value="${user.username}">  </td>
       </tr>        
       <tr>
         <th style="width:100;text-align:left;">비밀번호</th>
         <td><input type="password" name="userpwd" value="${user.userpwd}"> 영문/숫자포함 6자 이상</td>
       </tr>   
      
        <tr>
        </td>
           <th style="width:100;text-align:left;">연락처</th>
           <td><input type='text' name='phone' value="${user.phone}"></td>
        </tr>
        <tr>
          <th style="width:100;text-align:left;">이메일</th>
          <td>
            <input type='text' name="email" value="${user.email}">@
            <input type='text' name="email_dns">
              <select name="emailaddr">
                 <option value="">직접입력</option>
                 <option value="daum.net">daum.net</option>
                 <option value="empal.com">empal.com</option>
                 <option value="gmail.com">gmail.com</option>
                 <option value="hanmail.net">hanmail.net</option>
                 <option value="msn.com">msn.com</option>
                 <option value="naver.com">naver.com</option>
                 <option value="nate.com">nate.com</option>
              </select>
            </td>
         </tr>
         
         <tr>
           <th style="width:100;text-align:left;">직업</th>
           <td>
           <select name='job' size='1' value="${user.job}">
                 <option value=''>선택하세요</option>
                 <option value='39'>학생</option>
                 <option value='40'>컴퓨터/인터넷</option>
                 <option value='41'>언론</option>
                 <option value='42'>공무원</option>
                 <option value='43'>군인</option>
                 <option value='44'>서비스업</option>
                 <option value='45'>교육</option>
                 <option value='46'>금융/증권/보험업</option>
                 <option value='47'>유통업</option>
                 <option value='48'>예술</option>
                 <option value='49'>의료</option>
           </select>
          </td>
        </tr>
       <tr>
         <th style="width:100;text-align:left;">주소 </th>
           <td class="s">
               <input type="text" name="address" value="${user.address}">  
            </td>
         </tr>
         
 
           <tr height="2" bgcolor="#FFC8C3"><td colspan="2"></td></tr>
           <tr>
             <td colspan="2" align="center">
               <input type="submit" value="회원가입 수정">
               <input type="reset" value="취소">
            </td>
           </tr>
           </table>
</form>
</div>


</body>
</html>