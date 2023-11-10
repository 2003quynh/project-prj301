<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <!-- include libraries(jQuery, bootstrap) -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>

    <!-- include summernote css/js -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>

</head>
<jsp:include page="../component/admin_sidebar.jsp"></jsp:include>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">
        <jsp:include page="../component/admin_header.jsp"></jsp:include>



            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Add New Product</h1>


                <div class="container mt-5">
                    <h2>Create Clothing Product</h2>
                    <form action="admin-editProduct" method="post">
                        <input type="hidden" name="productID" value="${productID}"/>
                        <div class="form-group">
                            <label for="category">Select Category</label>
                            <select class="form-control" id="category" name="category" value="${category}" required>
                            <option value="1">Váy</option>
                            <option value="2">Quần & Áo</option>
                            <option value="3">Giày</option>
                            <option value="4">Phụ kiện</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="productName">Product Name</label>
                        <input type="text" class="form-control" id="productName" name="productName"  value="${productName}">
                    </div>
                    <input type="hidden" name="image" value="${productImage}"/>
                    <div class="form-group">
                        <label for="productImage">Choose Image</label>
                        <input type="file" class="form-control-file" id="productImage" name="productImage" value="${productImage}" accept="image/*" >
                    </div>
                    <div class="form-group">
                        <label for="productImages">Choose Images (Multiple)</label>
                        <input type="file" class="form-control-file" id="productImages" name="productImages[]" accept="image/*" multiple>
                    </div>


                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="number" class="form-control" id="price" name="price" value="${price}" required>
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="summernote" class="form-control" name="description"   rows="5" required>${description}</textarea>
                    </div>

                    <div class="form-group">
                        <label for="descriptionSummary">Description Summary</label>
                        <textarea class="form-control" id="summernote2" name="descriptionSummary" rows="3" required>${descriptionSummary}</textarea>
                    </div>
                    <div class="form-group" >
                        <label for="sizeColorQuantity">Size, Color, Quantity</label>
                        <c:forEach items="${listVariant}" var="o" >
                            <div class="input-group">
                                <input  type="hidden" name="productVariantID[]" value="${o.id}">
                                <input  type="text" class="form-control" name="sizes[]" placeholder="Size" value="${o.size}">
                                <input type="text" class="form-control" name="colors[]" placeholder="Color" value="${o.color}">
                                <input type="number" class="form-control" name="quantities[]" placeholder="Quantity" value="${o.quantity}">
                                
                            </div>
                        </c:forEach>
                    </div>

                    <button type="button" class="btn btn-primary" id="moreFields">Add</button> 

                    <div class="form-group" id="sizeColorQuantity" >
                        <label for="sizeColorQuantity">Size, Color, Quantity</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="newsize[]" placeholder="Size">
                            <input type="text" class="form-control" name="newcolor[]" placeholder="Color">
                            <input type="number" class="form-control" name="newquantity[]" placeholder="Quantity">
                            <button type="button" class="btn btn-danger" onclick="removeGroup(this)" >Close</button>
                        </div>
                    </div>



                    <button type="submit" class="btn btn-primary">Update Product</button>
                    <p style="text-align: center; color: red">${message}</p>

                </form>
            </div>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; Your Website 2020</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>
<script> $('#summernote').summernote();
    $('#summernote2').summernote();</script>


<!-- Page level plugins -->
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/datatables-demo.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    function removeGroup(button) {
        // Remove the form group when the "Close" button is clicked
        $(button).closest('.form-group').remove();
    }

    $(document).ready(function () {
        $("#moreFields").click(function () {
            // Clone the size, color, quantity group and append it to the form
            var newGroup = $("#sizeColorQuantity").clone();
            newGroup.find("input").val(""); // Clear input values
            newGroup.find("button").show(); // Show the close button for cloned group
            $("#sizeColorQuantity").after(newGroup);
        });
    });

</script>