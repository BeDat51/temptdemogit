<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài 1 Lab2</title>
</head>
<body>
	<div class="container my-4">
        <h2 class="text-center mb-4">Form OK</h2>
        
        <form action="/ctrl/oke" method="post">
            <div class="row g-3">
                <div class="col">
                    <button type="submit" class="btn btn-primary w-100">OK 1</button>
                </div>
                <div class="col">
                    <button type="submit" formmethod="get" class="btn btn-secondary w-100">OK 2</button>
                </div>
                <div class="col">
                    <button type="submit" formaction="/ctrl/oke?x=10" class="btn btn-success w-100">OK 3</button>
                </div>
            </div>
        </form>

        <p class="mt-4 text-center">Kết quả: <strong>${message}</strong></p>
    </div>
</body>
</html>