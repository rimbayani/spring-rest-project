<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Nusantara</title>
        <link href="<c:url value="/resources/css/bootstrap.css" /> " rel="stylesheet" />
        <link href="<c:url value="/resources/css/bootstrap.min.css" /> " rel="stylesheet" />
        <link href="<c:url value="/resources/css/jquery.dataTables.css" /> " rel="stylesheet" />
        <link href="<c:url value="/resources/css/jquery.dataTables.min.css" /> " rel="stylesheet" />

        <script src="<c:url value="/resources/js/jquery.js" />"></script>
        <script src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/resources/js/jquery.dataTables.js" />"></script>
    </head>
    <body>
        <div class="container">
        <!-- menu -->
        <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="home.php">Spring Review</a>
          </div>
          <ul class="nav navbar-nav">
            <li class="active"><a href="home.php">Home</a></li>
            <li><a href="provinces.php">Daftar Provinsi</a></li>
            <li><a href="regencies.php">Daftar Kabupaten</a></li>
            <li><a href="districts.php">Daftar Kecamatan</a></li>
          </ul>
        </div>
        </nav>

        <!-- end menu -->
            <div align="center">
                <h3>Selamat Datang</h3><hr>
            </div>
        </div>
    </body>
</html>

<script type="text/javascript">
    $(document).ready(function() {
        $('#id_js_provinces').DataTable();
    });
</script>