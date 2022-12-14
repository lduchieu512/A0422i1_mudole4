<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>
        List
    </title>
    <style>
        table, tr, td, th{
            border: 1px solid black;
        }
        td, th {
            width: 200px;
            height: 20px;
        }
    </style>
</head>
<body>
<h3 th:text="${msg}">
</h3>
<h1>
    List of uploaded songs
</h1>
<table style="text-align: center;align-content: center">
    <thead>
    <tr>
        <th>
            Name of song
        </th>
        <th>
            Singer
        </th>
        <th>
            Type of song
        </th>
    </tr>
    </thead>
    <tbody th:if="${songs.size() == 0}">
    <tr>
        <td>
            Not info
        </td>
        <td>
            Not info
        </td>
        <td>
            Not info
        </td>
    </tr>
    </tbody>
    <tbody th:if="${songs.size()!=0}">
    <tr th:each="list: ${songs}">
        <td th:text="${list.name}">
        </td>
        <td th:text="${list.singer}">
        </td>
        <td th:text="${list.type}">
        </td>
    </tr>
    </tbody>
</table>
<a th:href="@{/showUpload}">
    <button type="submit">Upload new song</button>
</a>
</body>
</html>