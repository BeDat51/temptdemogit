<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h2 class="mt-5">Product Form</h2>
    <form action="/product/save" method="post" class="mb-4">
        <div class="mb-3">
            <label for="name" class="form-label">Product Name</label>
            <input type="text" id="name" name="name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Product Price</label>
            <input type="number" id="price" name="price" class="form-control" step="0.01" required>
        </div>

        <button type="submit" class="btn btn-primary">Save</button>
    </form>

    <h4>Product Details:</h4>
    <ul class="list-group">
        <li class="list-group-item">Name: ${product.name}</li>
        <li class="list-group-item">Price: ${product.price}</li>

    </ul>
</div>
</body>
</html>
