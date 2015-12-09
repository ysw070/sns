<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset='UTF-8'>
  <title>SNS-새글</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="pen-title">
  <h1>새 글</h1>
</div>
<div class="container">
 <div class="card"></div>
  <div class="card">
    <h1 class="title">내 생각 올리기!</h1>
    <form action='add.do' method='post' enctype="multipart/form-data">
      <div class="input-container">
        <input type="text" id="Title" name="title" required="required" />
        <label for="Title">Title</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="text" id="Writer" name="writer" required="required" />
        <label for="Writer">Writer</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
      <h2>Content</h2>
        <textarea rows='10' id='Content' name='content' cols='46' style="font-size:14px; " placeholder="Content"></textarea>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="Password" name="password" required="required"/>
        <label for="Password">Password</label>
        <div class="bar"></div>
      </div>
      <br>
      <h1 style="align:center; font-size:20px;margin-left:60px;">File</h1>
      <div class="input-container">
      <input type='file' id='File' name="file" style="font-size:18px" />
      </div>
      <br>
      <h1 style="align:center; font-size:20px;margin-left:60px;">Photo</h1>
      <div class="input-container">
      <input type='file' id='Photo' name="photofile" style="font-size:18px" />
      </div>
      <div class="button-container">
        <button type="submit"><span>Go</span></button>
      </div>
      <div class="footer"><a href="#">   </a></div>
<br>
    </form>
 </div>
</div>

<jsp:include page="/Copyright.jsp"></jsp:include>

</body>
</html>
