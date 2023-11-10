<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="component/header.jsp"></jsp:include>

    <h1 >Order History</h1>
    <table>
        <thead>
            <tr>
                <th>ID&nbsp;</th>
                <th>Image</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Action</th>                                           
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>ID</th>
                <th>Image</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Action</th> 
            </tr>
        </tfoot>
        <tbody>
        

    </tbody>
    </table>
    <jsp:include page="component/footer.jsp"></jsp:include>