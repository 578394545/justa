$().ready(function() {

	$('.summernote').summernote({
		height : '220px',
		lang : 'zh-CN',
		callbacks: {
            onImageUpload: function(files, editor, $editable) {
                sendFile(files);
            }
        }
	});
	validateRule();
	loadWechatid();
});


$.validator.setDefaults({
	submitHandler : function() {
		save(1);
	}
});
function save(status) {
	$("#status").val(status);
	var content_sn = $("#content_sn").summernote('code');
	$("#content").val(content_sn);
	$.ajax({
		cache : true,
		type : "POST",
		url : "/blog/bContent/save",
		data : $('#signupForm').serialize(),// 你的formid
		async : false,
		error : function(request) {
			parent.layer.alert("Connection error");
		},
		success : function(r) {
			if (r.code == 0) {
				parent.layer.msg(r.msg);
				parent.reLoad();
				$("#cid").val(r.cid);

			} else {
				parent.layer.alert(r.msg)
			}
		}
	});
}
function validateRule() {
	var icon = "<i class='fa fa-times-circle'></i> ";
	$("#signupForm").validate({
		rules : {
			title : "required",
			author : "required",
			content : "required",
			wechatid : "required"
		},
		messages : {
			title : "请填写文章标题",
			author : "请填写文章作者",
			content : "请填写文章内容",
			wechatid : "请选择公众号"
		}
	});
}

function loadWechatid(){
	var html = "";
	$.ajax({
		url : '/sys/wechatOfficialAccounts/idlist/wechatid',
		success : function(data) {
			console.log("==="+data)
			//加载数据
			for (var i = 0; i < data.length; i++) {
				html += '<option value="' + data[i].wechatid + '">' + data[i].name + '</option>'
			}
			$(".chosen-select").append(html);
			$(".chosen-select").chosen({
				maxHeight : 200
			});
			//点击事件
			$('.chosen-select').on('change', function(e, params) {
				console.log(params);
				var opt = {
					query : {
						wechatid : params.selected,
					}
				}
				$('#exampleTable').bootstrapTable('refresh', opt);
			});
		}
	});
}

function returnList() {
	var index = parent.layer.getFrameIndex(window.name); // 获取窗口索引
	parent.layer.close(index);
}