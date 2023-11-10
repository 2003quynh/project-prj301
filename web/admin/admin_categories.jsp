<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head><link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet"></head>
    <jsp:include page="../component/admin_sidebar.jsp"></jsp:include>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">
        <jsp:include page="../component/admin_header.jsp"></jsp:include>



            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Categories</h1>


                <!-- DataTales Example -->
                <div class="card shadow mb-4">

                    <div class="card-body">
                        <div class="table-responsive">
                            <a href="#" class="btn btn-success btn-icon-split" style="float: right; margin-left:20px">
                                <span class="icon text-white-50">
                                    <i class="fas fa-plus"></i>
                                </span>
                                <span class="text">Add new</span>
                            </a>
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th style="width: 10%">ID&nbsp;</th>
                                        <th>Name</th>                                        
                                        <th style="width: 10%">Action</th>                                           
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>ID&nbsp;</th>
                                        <th>Name</th>
                                        <th>Action</th>   
                                    </tr>
                                </tfoot>
                                <tbody>
                                <c:forEach items="${listCategory}" var="o">
                                    <tr>
                                        <td>${o.id}</td>
                                        <td>${o.name}</td>
                                        
                                        <td style="display: flex">
                                            <a href="#" class="btn btn-secondary btn-icon-split" style="margin-right: 10px">
                                                <span class="text"><i class="fas fa-pen"></i></span>
                                            </a>
                                            <a href="#" class="btn btn-danger btn-icon-split">
                                                <span class="text"><i class="fas fa-trash"></i></span>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>

                        </table>
                    </div>
                </div>
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



<!-- Page level plugins -->
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/datatables-demo.js"></script>