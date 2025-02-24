<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <div class="container mt-5">
            <div class="row">
                <div class="col-12 mx-auto">
                    <div class="d-flex justify-content-between">
                        <h3>User detail</h3>
                    </div>

                    <hr />

                    <div class="card" style="width: 60%">
                        <div class="card-header">
                            User information
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">ID: ${user.id}</li>
                            <li class="list-group-item">Email: ${user.email}</li>
                            <li class="list-group-item">FullName: ${user.fullName}</li>
                            <li class="list-group-item">Address: ${user.address}</li>
                        </ul>
                    </div>
                    <a href="/admin/user" class="btn btn-success mt-3">Back</a>

                </div>

            </div>

        </div>