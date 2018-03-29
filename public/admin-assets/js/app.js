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


    var ownDep = $('.ownDep').val();
    $('#own-dep option').each(function(){
        var value = $(this).val()
        if(value === ownDep)
        {
            $(this).attr('selected','true');
        }

    });


    $(".btnNewsFileDelete").click(function(e){
    	e.preventDefault();
		if (confirm('確定刪除?')==true){ 
			var getid = $(this).attr('role');
			var uri = pathname + "/news/file/" + getid; ;
			callAjaxDelete(uri);
		}
    });


    $(".btnNewsDelete").click(function(e){
    	e.preventDefault();
    	if(confirm('確定刪除?')==true)
    	{
    		var getid = $(this).attr('role');
    		//var uri = hostname + pathname + "/news/" + getid; ;
            var uri = pathname +  "/news/" + getid;
    		callAjaxDelete(uri);
    	}
    });

    $(".btnAboutDelete").click(function(e){
    	e.preventDefault();
    	if(confirm('確定刪除?')==true)
    	{
    		var getid = $(this).attr('role');
    		var uri = pathname + "/about/" + getid; ;
    		callAjaxDelete(uri);
    	}
    });


    $(".btnCourseAboutDelete").click(function(e){
        e.preventDefault();
        if(confirm('確定刪除?')==true)
        {
            var getid = $(this).attr('role');
            var uri = pathname + "/course/about/" + getid; ;
            callAjaxDelete(uri);
        }
    });


    $(".btnOrganizationDelete").click(function(e){
    	e.preventDefault();
    	if(confirm('確定刪除?')==true)
    	{
    		var getid = $(this).attr('role');
    		var uri = pathname + "/organization/" + getid; ;
    		callAjaxDelete(uri);
    	}
    });

    $(".btnLocationDelete").click(function(e){
        e.preventDefault();
        if(confirm('確定刪除?')==true)
        {
            var getid = $(this).attr('role');
            var uri = pathname + "/location/" + getid; ;
            callAjaxDelete(uri);
        }
    });

    $(".btnBannerDelete").click(function(e){
        e.preventDefault();
        if(confirm('確定刪除?')==true)
        {
            var getid = $(this).attr('role');
            var uri = pathname + "/banner/" + getid; ;
            callAjaxDelete(uri);
        }
    });

    $(".btnCourseRulesDelete").click(function(e){
        e.preventDefault();
        if(confirm('確定刪除?')==true)
        {
            var getid = $(this).attr('role');
            var uri = pathname + "/course/rules/" + getid; ;
            callAjaxDelete(uri);
        }

    });

    $(".btnCommonProblemDelete").click(function(e){
        e.preventDefault();
        if(confirm('確定刪除?')==true)
        {
            var getid = $(this).attr('role');
            var uri = pathname + "/course/common-problem/" + getid; ;
            callAjaxDelete(uri);
        }
    });

    $(".btnLinkDelete").click(function(e){
        e.preventDefault();
        if(confirm('確定刪除?')==true)
        {
            var getid = $(this).attr('role');
            var uri = pathname + "/link/" + getid; ;
            callAjaxDelete(uri);
        }
    });

    $('.openUploader').click(function(e){
        e.preventDefault();
        $("#modal-uploader").modal('show');
    });

    $('.uploaderSave').click(function(e){
        e.preventDefault();

        var upload = $.ajax({
            url: pathname + '/gallery',
            type: 'POST',
            cache: false,
            data: new FormData($('#uploaderForm')[0]),
            processData: false,
            contentType: false
        });

        upload.success(function(res){
            console.log(res);
        });

        upload.fail(function(res){
            console.log("Request failed: " + res.toString());
        });

    });




});