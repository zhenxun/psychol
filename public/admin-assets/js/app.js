$(document).ready(function(){
var hostname ='http://' + window.location.hostname;
var pathname = '/psychol/public/admin';

	function callAjaxDelete(uri){
		$.ajax({
			  url: uri,
			  type: 'DELETE',
			  success: function(data) {
			     if(data == '1')
			     {
			     	 location.reload();
			     }
			     else
			     {
			     	alert('資料刪除失敗，請重新嘗試或聯絡管理人員！');
			     	location.reload();
			     }
			  }
		});
	}

    $('#dataTable').DataTable({
        "columnDefs": [
            {"className": "dt-center", "targets": "_all"}
        ]
    });

    $("form#newsForm").validate({
    	ignore: [],
		rules:{
			title:{
				required: true
			}
		},
		messages:{
			title:{
				required: "標題不能空白"
			}
		}    	
    });


    $(".btnNewsFileDelete").click(function(e){
    	e.preventDefault();
		if (confirm('確定刪除?')==true){ 
			var getid = $(this).attr('role');
			var uri = hostname + pathname + "/news/file/" + getid; ;
			callAjaxDelete(uri);
		}
    });


    $(".btnNewsDelete").click(function(e){
    	e.preventDefault();
    	if(confirm('確定刪除?')==true)
    	{
    		var getid = $(this).attr('role');
    		//var uri = hostname + pathname + "/news/" + getid; ;
            var uri = "news/" + getid;
    		callAjaxDelete(uri);
    	}
    });

    $(".btnAboutDelete").click(function(e){
    	e.preventDefault();
    	if(confirm('確定刪除?')==true)
    	{
    		var getid = $(this).attr('role');
    		var uri = hostname + pathname + "/about/" + getid; ;
    		callAjaxDelete(uri);
    	}
    });


    $(".btnCourseAboutDelete").click(function(e){
        e.preventDefault();
        if(confirm('確定刪除?')==true)
        {
            var getid = $(this).attr('role');
            var uri = "/admin/course/about/" + getid; ;
            callAjaxDelete(uri);
        }
    });


    $(".btnOrganizationDelete").click(function(e){
    	e.preventDefault();
    	if(confirm('確定刪除?')==true)
    	{
    		var getid = $(this).attr('role');
    		var uri = hostname + pathname + "/organization/" + getid; ;
    		callAjaxDelete(uri);
    	}
    });

    $(".btnLocationDelete").click(function(e){
        e.preventDefault();
        if(confirm('確定刪除?')==true)
        {
            var getid = $(this).attr('role');
            var uri = "/admin/location/" + getid; ;
            callAjaxDelete(uri);
        }
    });

    $(".btnBannerDelete").click(function(e){
        e.preventDefault();
        if(confirm('確定刪除?')==true)
        {
            var getid = $(this).attr('role');
            var uri = "/admin/banner/" + getid; ;
            callAjaxDelete(uri);
        }
    });


});