//----------------------------------------------------------------------//	  
//------------------------>	  后台登录界面     @孟令杰         <----------------------------//
//----------------------------------------------------------------------//
var sysLogin={params:{},username:null,pwssword:null};
sysLogin.toLogin=function(){
	this.username=$("#username").val();
	this.pwssword=$("#password1").val();
	var a=this.username.length; var b=this.pwssword.length;
	if(a==0||b==0){alert("用户名和密码不能为空 !");return;}
	this.params = {uname:this.username,password:this.pwssword};
	$.ajax({
		url : "/sysuser/findSysUser",
		dataType : 'json',
		type : 'post',
		scriptCharset :'utf-8',
		data : this.params,
		success : function(data) {
			if (data != '-1') {
				location.href = "index.htm";
			} else {
				alert("账号或秘密错误!");
			}
		},error: function (data, status, e){
			alert(e);
		}
	});
}
