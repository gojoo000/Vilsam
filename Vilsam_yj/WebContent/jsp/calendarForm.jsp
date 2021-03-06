<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%
   String id = null;
   if(session.getAttribute("id")==null){
      out.println("<script>");
      out.println("alert('로그인이 필요한 서비스입니다.')");
      out.println("location.href='loginForm.jsp'");
      out.println("</script>");
   }else{
      id = (String)session.getAttribute("id");
   }
%> --%>
<!DOCTYPE html>


<html>
<head>
<meta charset='utf-8' />
<link rel='stylesheet' href='/Vilsam_yj/fullcalendar/fullcalendar.css'>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="${pageContext.request.contextPath }/js/fullcal/moment.min.js"></script>
<script src='/Vilsam_yj/fullcalendar/fullcalendar.js' charset="euc-kr"></script>
<script>
$(document).ready(function() {
	 var test = $("#room_num").val();
	
	$('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,listMonth'
        },
        defaultDate: moment().format('YYYY-MM-DD'),
        editable: true,
        navLinks: true,
        eventLimit: true,
        events: function(start, end, timezone, callback) {
            $.ajax({
                url: '/Vilsam_yj/rsv/calendar.do',
                type : 'post',
                data: 'room_num='+test,
                dataType: 'json',
                success: function(data) {//5.map이 일로들어옴
                   var json = data.calendarList;
                   //alert(json);
                   //alert(data);
                    var events = [];
                    $.each(json, function(i, obj) { //i(json에 담긴크기만큼(인덱스)) 반복
                       events.push({
                          id: i+1, 
                          title: obj.room_name,
                          start: obj.reser_date, //시작날짜 
                          allDay: true});
                    });
                    callback(events); //뿌려주기
                }
            });
 
        }
       
    });

});
</script>
<title>예약 리스트</title>
    
</head>

<body>
<jsp:include page="/jsp/common/header.jsp" flush="true"></jsp:include>
<div id="calendar" style=" display: inline-block; padding-left:15%; padding-right:15%; padding-top:3%; margin:2% auto; background-color:white;"></div>
	<jsp:include page="/jsp/common/footer.jsp" flush="true"></jsp:include>
</body>
</html>