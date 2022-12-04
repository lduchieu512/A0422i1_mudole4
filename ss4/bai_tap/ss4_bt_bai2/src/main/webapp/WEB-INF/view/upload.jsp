<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>
    Upload
  </title>
  <style>
    table, tr, td, th{
      border: 1px solid black;
    }
    td, th, input {
      width: 200px;
      height: 20px;
    }
  </style>
</head>
<body>
<h1> Upload new song</h1>
<table style="border: solid; text-align: right; align-content: center">
  <form th:action="@{/upload}" method="post" th:object="${musicForm}"  enctype="multipart/form-data" novalidate="novalidate">
    <tr>
      <td>
        Name of song:
      </td>
      <td>
        <input type="text" th:field="*{name}"/>
      </td>
    </tr>
    <tr>
      <td>
        Singer:
      </td>
      <td>
        <input type="text" th:field="*{singer}"/>
      </td>
    </tr>
    <tr>
      <td>
        Type of song:
      </td>
      <td>
        <input type="text" th:field="*{type}"/>
      </td>
    </tr>
    <tr>
      <td>
        Song:
      </td>
      <td>
        <input type="file" th:field="*{song}" required/>
      </td>
    </tr>
    <tr>
      <td>
        <button type="submit">Upload</button>
      </td>
  </form>
  <td>
    <a th:href="@{/}"><button type="submit">Cancel</button></a>
  </td>
  </tr>

</table>
</body>
</html>