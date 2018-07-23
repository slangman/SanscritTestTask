<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: AttenCHUN
  Date: 16.07.2018
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hustle Planner | Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="/css/bootstrap.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="/css/style.css" rel='stylesheet' type='text/css'/>
    <!-- font CSS -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="/css/font.css" type="text/css"/>
    <link href="/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->


    <script src="/js/jquery2.0.3.min.js"></script>
    <script src="/js/modernizr.js"></script>
    <script src="/js/jquery.cookie.js"></script>
    <script src="/js/screenfull.js"></script>
    <script>
        $(function () {
            $('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

            if (!screenfull.enabled) {
                return false;
            }


            $('#toggle').click(function () {
                screenfull.toggle($('#container')[0]);
            });
        });
    </script>
    <!-- calendar -->
    <link rel="stylesheet" href="/css/monthly.css">
    <!-- //calendar -->

</head>
<body class="dashboard-page">

<nav class="main-menu">
    <ul>
        <li>
            <a href="maps.html">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span class="nav-text">
					Maps
					</span>
            </a>
        </li>
        <li>
            <a href="error.html">
                <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                <span class="nav-text">
					Error Page
					</span>
            </a>
        </li>
        <li class="has-subnav">
            <a href="javascript:;">
                <i class="fa fa-list-ul" aria-hidden="true"></i>
                <span class="nav-text">Extras</span>
                <i class="icon-angle-right"></i><i class="icon-angle-down"></i>
            </a>
            <ul>
                <li>
                    <a class="subnav-text" href="faq.html">FAQ</a>
                </li>
                <li>
                    <a class="subnav-text" href="blank.html">Blank Page</a>
                </li>
            </ul>
        </li>
    </ul>
    <ul class="logout">
        <li>
            <a href="/logout">
                <i class="icon-off nav-icon"></i>
                <span class="nav-text">
			Logout
			</span>
            </a>
        </li>
    </ul>
</nav>
<section class="wrapper scrollable">
    <nav class="user-menu">
        <a href="javascript:;" class="main-menu-access">
            <i class="icon-proton-logo"></i>
            <i class="icon-reorder"></i>
        </a>
    </nav>
    <section class="title-bar">
        <div class="logo">
            <h1><a href="index.html"><img src="images/logo.png" alt=""/>HSLPlanner</a></h1>
        </div>
        <div class="full-screen">
            <section class="full-top">
                <button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>
            </section>
        </div>
        <div class="w3l_search">
            <form action="#" method="post">
                <input type="text" name="search" value="Search" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Search';}" required="">
                <button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
            </form>
        </div>
        <div class="header-right">
            <div class="profile_details_left">
                <div class="header-right-left">
                    <!--notifications of menu start -->
                    <ul class="nofitications-dropdown">
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                    class="fa fa-envelope"></i><span class="badge">3</span></a>
                            <ul class="dropdown-menu anti-dropdown-menu w3l-msg">
                                <li>
                                    <div class="notification_header">
                                        <h3>You have 3 new messages</h3>
                                    </div>
                                </li>
                                <li><a href="#">
                                    <div class="user_img"><img src="images/1.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet</p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li class="odd"><a href="#">
                                    <div class="user_img"><img src="images/2.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet </p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li><a href="#">
                                    <div class="user_img"><img src="images/3.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet </p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li>
                                    <div class="notification_bottom">
                                        <a href="#">See all messages</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i
                                    class="fa fa-bell"></i><span class="badge blue">3</span></a>
                            <ul class="dropdown-menu anti-dropdown-menu agile-notification">
                                <li>
                                    <div class="notification_header">
                                        <h3>You have 3 new notifications</h3>
                                    </div>
                                </li>
                                <li><a href="#">
                                    <div class="user_img"><img src="images/2.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet</p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li class="odd"><a href="#">
                                    <div class="user_img"><img src="images/1.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet </p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li><a href="#">
                                    <div class="user_img"><img src="images/3.png" alt=""></div>
                                    <div class="notification_desc">
                                        <p>Lorem ipsum dolor amet </p>
                                        <p><span>1 hour ago</span></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </a></li>
                                <li>
                                    <div class="notification_bottom">
                                        <a href="#">See all notifications</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i
                                    class="fa fa-tasks"></i><span class="badge blue1">15</span></a>
                            <ul class="dropdown-menu anti-dropdown-menu agile-task">
                                <li>
                                    <div class="notification_header">
                                        <h3>You have 8 pending tasks</h3>
                                    </div>
                                </li>
                                <li><a href="#">
                                    <div class="task-info">
                                        <span class="task-desc">Database update</span><span
                                            class="percentage">40%</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="bar yellow" style="width:40%;"></div>
                                    </div>
                                </a></li>
                                <li><a href="#">
                                    <div class="task-info">
                                        <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="bar green" style="width:90%;"></div>
                                    </div>
                                </a></li>
                                <li><a href="#">
                                    <div class="task-info">
                                        <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="bar red" style="width: 33%;"></div>
                                    </div>
                                </a></li>
                                <li><a href="#">
                                    <div class="task-info">
                                        <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="bar  blue" style="width: 80%;"></div>
                                    </div>
                                </a></li>
                                <li>
                                    <div class="notification_bottom">
                                        <a href="#">See all pending tasks</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
                <div class="profile_details">
                    <ul>
                        <li class="dropdown profile_details_drop">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <div class="profile_img">
                                    <span class="prfil-img"><i class="fa fa-user" aria-hidden="true"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                            <ul class="dropdown-menu drp-mnu">
                                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                                <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                                <li><a href="/logout"><i class="fa fa-sign-out"></i> Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </section>
    <div class="main-grid">
        <div class="agile-grids">
            <!-- grids -->
            <div class="grids">

                <div class="progressbar-heading grids-heading">
                    <h2>Dashboard</h2>
                </div>

                <div class="agile-calendar-grid">
                    <div class="page">

                        <div class="col-md-3 w3l-calendar-right">
                            <div class="row">
                            </div>
                            <div class="row">
                                <div class="calendar-heading">
                                    <h3>Add/Edit task</h3>
                                </div>
                                <c:set var="taskSelected" value="${requestScope.get('taskSelected')}"/>

                                <c:choose>
                                    <c:when test="${taskSelected!=null}">
                                        <form id="editTask" method="post"
                                              action="${pageContext.request.contextPath}/dashboard/editTask">

                                            <input type="hidden" value="${taskSelected.id}" name="taskId">

                                            <c:set var="startTimeHour"
                                                   value="${taskSelected.getStartTime().getHour()}"/>
                                            <c:set var="startTimeMinute"
                                                   value="${taskSelected.getStartTime().getMinute()}"/>
                                            <c:set var="endTimeHour" value="${taskSelected.getEndTime().getHour()}"/>
                                            <c:set var="endTimeMinute"
                                                   value="${taskSelected.getEndTime().getMinute()}"/>

                                            <div class="form-group">
                                                <label for="taskDate">Select date</label>
                                                <input type="date" class="form-control" name="taskDate" id="taskDate"
                                                       value="${taskSelected.date}">
                                            </div>

                                            <div class="form-group">
                                                <label for="taskStartTime">Start time</label>
                                                <input type="time" class="form-control" name="taskStartTime"
                                                       id="taskStartTime" value="${startTimeHour}:${startTimeMinute}">
                                            </div>

                                            <div class="form-group">
                                                <label for="taskEndTime">End time</label>
                                                <input type="time" class="form-control" name="taskEndTime"
                                                       id="taskEndTime" value="${endTimeHour}:${endTimeMinute}">
                                            </div>

                                            <div class="form-group">
                                                <label for="taskDescription">Task description</label>
                                                <textarea class="form-control" id="taskDescription"
                                                          name="taskDescription"
                                                          rows="3">${taskSelected.description}</textarea>
                                            </div>

                                            <div class="form-group">
                                                <label for="taskCompleted">Completed</label>
                                                <input type="checkbox" name="taskCompleted" id="taskCompleted"
                                                       <c:if test="${taskSelected.isCompleted()==true}">checked</c:if>
                                                       }>
                                            </div>

                                            <button type="submit" class="btn btn-info btn-flat">OK</button>
                                        </form>
                                    </c:when>

                                    <c:otherwise>
                                        <form id="addTask" method="post"
                                              action="${pageContext.request.contextPath}/dashboard/addTask">

                                            <div class="form-group">
                                                <label for="addTaskDate">Select date</label>
                                                <input type="date" class="form-control" name="addTaskDate"
                                                       id="addTaskDate">
                                            </div>

                                            <div class="form-group">
                                                <label for="addTaskStartTime">Start time</label>
                                                <input type="time" class="form-control" name="addTaskStartTime"
                                                       id="addTaskStartTime">
                                            </div>

                                            <div class="form-group">
                                                <label for="addTaskEndTime">End time</label>
                                                <input type="time" class="form-control" name="addTaskEndTime"
                                                       id="addTaskEndTime">
                                            </div>

                                            <div class="form-group">
                                                <label for="addTaskDescription">Task description</label>
                                                <textarea class="form-control" id="addTaskDescription"
                                                          name="addTaskDescription" rows="3"></textarea>
                                            </div>

                                            <button type="submit" class="btn btn-info btn-flat">OK</button>
                                        </form>
                                    </c:otherwise>

                                </c:choose>


                                <c:if test="${taskSelected!=null}">


                                </c:if>
                            </div>
                        </div>

                        <%-- <div class="col-md-9 w3l-calendar-left">
                             <div class="calendar-heading">
                                 <h3>Date Picker</h3>
                             </div>
                             <input type="text" id="mytarget" value="Select Date">
                             <div class="monthly" id="mycalendar2"></div>
                         </div>--%>


                        <div class="col-md-9 w3l-calendar-left">
                            <div class="row">
                                <div class="calendar-heading">
                                    <h3>Date Picker</h3>
                                </div>
                                <form id="selectDate" action="${pageContext.request.contextPath}/dashboard/selectDate"
                                      method="post">
                                    <input type="text" id="mytarget" name="dateSelected" placeholder="Select date">
                                    <div class="monthly" id="mycalendar2"></div>
                                    <button type="submit">OK</button>
                                </form>
                                <div class="error-body">
                                    <c:set var="noDateSelected" value="${requestScope.get('noDateSelected')}"/>
                                    <c:if test="${noDateSelected!=null}">${noDateSelected}</c:if>
                                    <c:set var="taskMessage" value="${requestScope.get('taskMessage')}"/>
                                    <c:if test="${taskMessage!=null}">${taskMessage}</c:if>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <c:set var="tasksByDate" value="${requestScope.get('tasksByDate')}"/>
                                    <c:if test="${tasksByDate!=null}">
                                        <div class="row">
                                            <b>Tasks list for ${requestScope.get("dateSelected")}</b>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-1">Start time</div>
                                            <div class="col-md-1">End time</div>
                                            <div class="col-md-6">Description</div>
                                            <div class="col-md-2">Completed</div>
                                            <div class="col-md-1">Action</div>
                                            <div class="col-md-1">Delete</div>
                                        </div>
                                        <c:forEach items="${tasksByDate}" var="task">
                                            <div class="row">
                                                <div class="col-md-1">
                                                    <c:set var="startTimeHours" value="${task.startTime.getHour()}"/>
                                                    <c:set var="startTimeMinutes"
                                                           value="${task.startTime.getMinute()}"/>
                                                    <c:choose><c:when
                                                            test="${startTimeHours.toString().length()==1}">0${startTimeHours}</c:when><c:otherwise>${startTimeHours}</c:otherwise></c:choose>:<c:choose><c:when
                                                        test="${startTimeMinutes.toString().length()==1}">0${startTimeMinutes}</c:when><c:otherwise>${startTimeMinutes}</c:otherwise></c:choose>
                                                </div>
                                                <div class="col-md-1">
                                                    <c:set var="endTimeHours" value="${task.endTime.getHour()}"/>
                                                    <c:set var="endTimeMinutes" value="${task.endTime.getMinute()}"/>
                                                    <c:choose><c:when
                                                            test="${endTimeHours.toString().length()==1}">0${endTimeHours}</c:when><c:otherwise>${endTimeHours}</c:otherwise></c:choose>:<c:choose><c:when
                                                        test="${endTimeMinutes.toString().length()==1}">0${endTimeMinutes}</c:when><c:otherwise>${endTimeMinutes}</c:otherwise></c:choose>
                                                </div>
                                                <div class="col-md-6">${task.description}</div>
                                                <div class="col-md-2">${task.isCompleted()}</div>
                                                <div class="col-md-1">
                                                    <form action="${pageContext.request.contextPath}/dashboard/selectTask">
                                                        <input type="hidden" value="${requestScope.get("dateSelected")}"
                                                               name="dateSelected">
                                                        <input type="hidden" value="${task.id}" name="taskId">
                                                        <button type="submit">Edit</button>
                                                    </form>
                                                </div>
                                                <div class="col-md-1">
                                                    <a href="${pageContext.request.contextPath}/dashboard/deleteTask?id=${task.id}">Del</a>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>

                            <%--<div class="calendar-heading">
                                <h3>Event Calendar</h3>
                            </div>
                            <div class="monthly" id="mycalendar"></div>--%>
                        </div>

                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- //grids -->
        </div>
    </div>

    <!-- footer -->
    <div class="footer">
        <p>© 2018 Hustle Industry</p>
    </div>
    <!-- //footer -->
</section>
<script src="/js/bootstrap.js"></script>


<!-- calendar -->
<script type="text/javascript" src="/js/monthly.js"></script>
<script type="text/javascript">
    $(window).load(function () {

        $('#mycalendar').monthly({
            mode: 'event',
            xmlUrl: 'events.xml'
        });

        $('#mycalendar2').monthly({
            mode: 'picker',
            target: '#mytarget',
            setWidth: '250px',
            startHidden: true,
            showTrigger: '#mytarget',
            stylePast: true,
            disablePast: true
        });

        switch (window.location.protocol) {
            case 'http:':
            case 'https:':
                // running on a server, should be good.
                break;
            case 'file:':
                alert('Just a heads-up, events will not work when run locally.');
        }

    });
</script>
<!-- //calendar -->
</body>
</html>
