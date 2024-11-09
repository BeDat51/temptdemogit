<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 2 Lab 2</title>
</head>
<body>	
	<div class="container my-4">
        <h2 class="text-center mb-4">Save Parameter</h2>
        
        <form action="/param/save/2021" method="post" class="mb-4">
            <div class="mb-3">
                <label for="y" class="form-label">Enter Y Value</label>
                <input type="number" id="y" name="y" class="form-control" value="2031">
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
        </form>

        <h4>Parameters:</h4>
        <ul class="list-group">
            <li class="list-group-item">X: ${x}</li>
            <li class="list-group-item">Y: ${y}</li>
        </ul>
    </div>
</body>
</html>