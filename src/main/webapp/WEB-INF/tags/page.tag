<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" >

<%@tag import="java.util.Calendar"%>
<%@tag import="org.slf4j.Logger"%>
<%@tag import="org.slf4j.LoggerFactory"%>
<%@ tag body-content="scriptless"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spr" tagdir="/WEB-INF/tags"%>
<%@tag import="com.spring.entity.User"%>
<%@tag import="com.spring.util.Authorities"%>
<%@ attribute name="header1" required="true" type="java.lang.String"%>
<%
Logger logger = LoggerFactory.getLogger(this.getClass().getName());
User currentUser = (User) session.getAttribute("currentUser");
if (currentUser.getAuthority().contains(Authorities.ADMINISTRATOR)) {
%>
<c:set var="isAdmin" scope="page" value="true" />
<c:set var="isUser" scope="page" value="false" />
<c:set var="isAgent" scope="page" value="false" />
<%
} else if(currentUser.getAuthority().contains(Authorities.USER)) {
%>
<c:set var="isAdmin" scope="page" value="false" />
<c:set var="isUser" scope="page" value="true" />
<c:set var="isAgent" scope="page" value="false" />

<%
}
%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bharyang</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
<!--     <link rel="shortcut icon" href="favicon.ico"> -->
		<link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">
    <link href="assets/css/lib/vector-map/jqvmap.min.css" rel="stylesheet">
    <!-- dattable  -->
    <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>
   <%
   logger.info("iname is " + this.getClass().getName());
   %>
   <!-- Left Panel -->

   <aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-inverse">

        <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="./"><!-- <img src="images/logo.png" alt="Logo"> -->Bharyang App</a>
            <a class="navbar-brand hidden" href="./"><!-- <img src="images/logo2.png" alt="Logo"> --><b><i>B</i></b></a>
        </div>

        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="menu-title">
                    <a><i class="fa fa-user"></i> welcome,
                        <b>${currentUser.username}</b>
                    </a>
                </li>
                <li class="active">
                    <a href="/"> <i class="menu-icon fa fa-dashboard"></i>${currentUser.username}'s Dashboard </a>
                </li>
                <!-- /.menu-title -->

               <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-home"></i>Home</a>
                    <ul class="sub-menu children dropdown-menu">
                        <c:if test="${isAdmin}">
                        <li><i class="fa fa-id-card-o"></i><a href="#">My Profile</a></li>
                        <li><i class="fa fa-key"></i><a href="/adminChangePassword">Change Password</a></li>
                        </c:if>
                        <c:if test="${isUser}">
                        <li><i class="fa fa-id-card-o"></i><a href="#">View Details</a></li>
                        <li><i class="fa fa-key"></i><a href="/changeUserPassword">Change Password</a></li>
                        </c:if>
                        <c:if test="${isAgent}">
                        
                        <!-- <li><i class="fa fa-key"></i><a href="/adminChangePassword">Change Password</a></li> -->
                        </c:if>
                            
                    </ul>
                </li>

            <c:if test="${isAdmin}">
                <li class="menu-item-has-children dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-users"></i>Agents</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-user-plus"></i><a href="/addAgent">Add agent</a></li>
                            <li><i class="fa fa-list"></i><a href="/listAgent">List agent</a></li>
                        </ul>
                </li>
                <li class="menu-item-has-children dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-user"></i>Others</a>
                        <ul class="sub-menu children dropdown-menu">
                         <li><i class="fa fa-search"></i><a href="/getBalance">Balance Query</a></li>
<!--                             <li><i class="fa fa-list"></i><a href="/listUser">List User</a></li> -->
                            <li><i class="fa fa-search"></i><a href="/flight">Search Flight</a></li>
                        </ul>
                </li>
            </c:if>
                    
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->
    
    <!-- Right Panel -->
    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <!-- <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>

                        <button><i class="fa fa-home"></i> Home</button>
                        

                    </div> -->
                </div>

        <div class="col-sm-5">
            <div class="user-area dropdown float-right">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                </a>

                <div class="user-menu dropdown-menu">
                    <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>
                    <c:if test="${isAdmin}">
                    <a class="nav-link" href="/adminChangePassword"><i class="fa fa -cog"></i>Change Password</a>
                    </c:if>
                    <c:if test="${isUser}">
                    <a class="nav-link" href="/changeUserPassword"><i class="fa fa -cog"></i>Change Password</a>
                    </c:if>
                    <a class="nav-link" href="/logout"><i class="fa fa-power -off"></i>Logout</a>
                </div>
            </div>



        </div>
    </div>

</header><!-- /header -->
<!-- Header-->

<!-- <div class="breadcrumbs">
    <div class="col-sm-4">
        <div class="page-header float-left">
            <div class="page-title">
                <h1>${header1}</h1>
            </div>
        </div>
    </div>
    <div class="col-sm-8">
        <div class="page-header float-right">
            <div class="page-title">
                <ol class="breadcrumb text-right">
                    <li class="active">Dashboard</li>
                </ol>
            </div>
        </div>
    </div>
</div> -->


<jsp:doBody />



</div><!-- /#right-panel -->

<!-- Right Panel -->

<script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>

<script src="assets/js/lib/chart-js/Chart.bundle.js"></script>
<script src="assets/js/dashboard.js"></script>
<script src="assets/js/widgets.js"></script>

<!-- data tables -->
<script src="assets/js/lib/data-table/datatables.min.js"></script>
<script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
<script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
<script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
<script src="assets/js/lib/data-table/jszip.min.js"></script>
<script src="assets/js/lib/data-table/pdfmake.min.js"></script>
<script src="assets/js/lib/data-table/vfs_fonts.js"></script>
<script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
<script src="assets/js/lib/data-table/buttons.print.min.js"></script>
<script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
<script src="assets/js/lib/data-table/datatables-init.js"></script>


<script type="text/javascript">
    $(document).ready(function() {
      $('#bootstrap-data-table-export').DataTable();
  } );
    
</script>


</body>
</html>