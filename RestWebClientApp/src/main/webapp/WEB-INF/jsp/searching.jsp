<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Provinsi</title>
        <link href="<c:url value="/resources/css/bootstrap.css" /> " rel="stylesheet" />
        <link href="<c:url value="/resources/css/bootstrap.min.css" /> " rel="stylesheet" />
        <script src="<c:url value="/resources/js/jquery.js" />"></script>
        <script src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
        <script src="<c:url value="/resources/bootstrap.min.js" />"></script>
    </head>
    <body>
        <div class="container">
        <!-- menu -->
        <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="index">Spring Review</a>
          </div>
          <ul class="nav navbar-nav">
            <li><a href="index">Home</a></li>
            <li  class="active"><a href="provinces.php">Daftar Provinsi</a></li>
            <li><a href="regencies.php">Daftar Kabupaten</a></li>
          </ul>
        </div>
        </nav>

        <!-- end menu -->
        <h1>Data Provinsi</h1><hr>
        <c:choose>
            <c:when test="${provinces.size()>0}">
                <a href="insertRegencies">Tambah Provinsi</a> &nbsp; | &nbsp; <a href="index">Home</a><br><br>
        <table  class="table table-striped">
            <thead>
                <tr>
                    <th>Kode</th>
                    <th>Nama</th>
                    <th>Keterangan</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${provinces}" var="province">
                    <tr>
                        <td>${province.getId()}</td>
                        <td>${province.getName()}</td>
                        <td>
                            <a href="editProvince?id=${province.getId()}">Ubah</a>
                            |
                            <a href="deleteProvince?id=${province.getId()}">Hapus</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        </c:when>
        <c:otherwise>
            <font color="red">Data Barang masih kosong !</font> <a href="insertProvince">Tambah Provinsi</a>
        </c:otherwise>
        </c:choose>
        </div>
    </body>
</html>