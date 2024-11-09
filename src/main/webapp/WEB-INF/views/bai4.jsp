<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bài 4 Lab 2</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container my-5">
    <h1 class="text-center mb-4">Quản Lý Sản Phẩm</h1>

    <div class="card p-4 mb-5">
        <h3>Thêm Sản Phẩm Mới</h3>
        <form action="/product/save4" method="post" class="row g-3">
            <div class="col-md-6">
                <label for="name" class="form-label">Tên sản phẩm</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Tên sản phẩm" required>
            </div>
            <div class="col-md-6">
                <label for="price" class="form-label">Giá sản phẩm</label>
                <input type="number" class="form-control" id="price" name="price" placeholder="Giá sản phẩm" required>
            </div>
            <div class="col-md-4">
                <label for="imageUrl" class="form-label">URL hình ảnh</label>
                <input type="url" class="form-control" id="imageUrl" name="imageUrl" placeholder="URL hình ảnh" required>
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary">Lưu</button>
            </div>
        </form>
    </div>

    <div class="card p-4 mb-5">
        <h3>Thông Tin Sản Phẩm</h3>
        <ul class="list-unstyled">
            <li><strong>Tên:</strong> ${product.name}</li>
            <li><strong>Giá:</strong> ${product.price}</li>
            <li><img src="${product.imageUrl}" alt="${product.name}" class="img-fluid rounded" width="200" height="200"/></li>
        </ul>
    </div>

    <div class="card p-4 mb-5">
        <h3>Thông Tin Sản Phẩm Đã Lưu</h3>
        <ul class="list-unstyled">
            <li><strong>Tên:</strong> ${product2.name}</li>
            <li><strong>Giá:</strong> ${product2.price}</li>
            <li><img src="${product2.imageUrl}" alt="${product2.name}" class="img-fluid rounded" width="200" height="200"/></li>
        </ul>
    </div>

    <div class="card p-4">
        <h3>Danh Sách Sản Phẩm</h3>
        <ul class="list-group list-group-flush">
            <c:forEach var="item" items="${productList}">
                <li class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-md-3">
                            <img src="${item.imageUrl}" alt="${item.name}" class="img-fluid rounded" width="100" height="100"/>
                        </div>
                        <div class="col-md-9">
                            <p><strong>Tên:</strong> ${item.name}</p>
                            <p><strong>Giá:</strong> ${item.price}</p>
                        </div>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
</body>
</html>
