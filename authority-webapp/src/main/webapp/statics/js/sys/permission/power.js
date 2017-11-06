//----------------------------------------------------//
//----------------------> 菜单管理       @孟令杰  <--------------//
//----------------------------------------------------//
var powrer = {title:null,value:null,params:{},};
powrer.openDialogs=function(type, value){
	this.title=type;
	this.value = value;
	if(type == "delete"){
		powrer.toDelResource(this.value);
	}
	if(type == "add"){
		title="资源添加";
		powrer.AddWinOpen();
	}
	if(type == "edit"){
		title="资源修改";
		powrer.EditWinOpen();
	}if(type == "move"){
		title="资源移动";
	}
}
//----------------------> 打开  编辑资源界面      <--------------//
powrer.EditWinOpen=function(){
	powrer.getResourcebyId();
	$("#dialog").dialog({
		height:540,
		width:600,
		title:this.title,
		buttons : {
			"确定" : function() {
				powrer.toEditResource();
			},
			"取消" : function() {
				$(this).dialog('close');
			}
		}
	});
}
//---------------------->  获得一条资源信息     <--------------//
powrer.getResourcebyId=function(){
	//禁用缓存
	$.ajaxSetup ({cache:false });
	this.params = {id:this.value};
	$.ajax({
		url : "/power/edit",
		dataType : 'json',
		type : 'post',
		scriptCharset :'utf-8',
		data:this.params,
		success : function(data) {
			$("#name").val(data[0].name);
			$("#url").val(data[0].url);
			$("#description").val(data[0].description);
			$("#parentId").val(data[0].parentId);
		},error: function (data, status, e){
			alert(e);
		}
	});
}
//---------------------->  编辑保存资源实体     <--------------//
powrer.toEditResource=function(){
	this.params = {
		id:this.value,
		name:$("#name").val(),
		url:$("#url").val(),
		parentId:$("#parentId").val(),
		description:$("#description").val()
	};
	$.ajax({
		url : "/power/editsave",
		dataType :'json',
		type : 'post',
		scriptCharset :'utf-8',
		data:this.params,
		success : function(data) {
			if (data != '-1') {
				alert("修改成功！");
				location.href = "/power/list";
			} else {
				alert("修改失败！");
				location.href = "/power/list";
			}
		},error: function (data, status, e){
			alert(e);
		}
	});
}
//---------------------->  重置编辑界面     <--------------//
powrer.resetdiv=function(){
	$("#name").val("");
	$("#url").val("");
	$("#parentId").val(0);
	$("#description").val("");
}
//---------------------->  打开添加界面     <--------------//
powrer.AddWinOpen=function(){
	powrer.resetdiv();
	$("#dialog").dialog({
		height:540,
		width:600,
		title:this.title,
		buttons : {
			"确定" : function() {
				powrer.toAddResource(this.value);
			},
			"取消" : function() {
				$(this).dialog('close');
			}
		}
	});
}
//---------------------->  新增保存资源实体     <--------------//
powrer.toAddResource=function(){
	this.params = {
		name:$("#name").val(),
		url:$("#url").val(),
		parentId:this.value,
		description:$("#description").val()
	};
	$.ajax({
		url : "/power/addsave",
		dataType : 'json',
		type : 'post',
		scriptCharset :'utf-8',
		data:this.params,
		success : function(data) {
			if (data != '-1') {
				alert("保存成功！");
				location.href = "/power/list";
			} else {
				alert("保存失败！");
				location.href = "/power/list";
			}
		},error: function (data, status, e){
			alert(e);
		}
	});
}
//---------------------->  删除资源实体     <--------------//
powrer.toDelResource=function(){
	this.params = {id:this.value};
	$.ajax({
		url : "/power/del",
		dataType : 'json',
		type : 'post',
		scriptCharset :'utf-8',
		data:this.params,
		success : function(data) {
			if (data != '-1') {
				location.href = "/power/list";
			} else {
				location.href = "/power/list";
			}
		},error: function (data, status, e){
			alert(e);
		}
	});
}