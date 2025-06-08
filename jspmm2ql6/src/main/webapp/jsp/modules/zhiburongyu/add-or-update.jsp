<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
	</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="content">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul id="navUl" class="navbar-nav mr-auto">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑支部荣誉</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item">支部荣誉管理</li>
								<li class="breadcrumb-item active">编辑支部荣誉</li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">支部荣誉信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
										<div class="form-group col-md-6">
										<label>账号</label>
										<select  class="form-control"  name="zhanghao" id="zhanghaoSelect" onchange="zhanghaoSelect2Change()">
										</select>
									</div>
											<div class="form-group col-md-6">
										<label>党支部</label>
										<input id="dangzhibu" name="dangzhibu" class="form-control"  value="" readonly>
									</div>
											<div class="form-group col-md-6">
										<label>成果</label>
										<input id="chengguo" name="chengguo" class="form-control" placeholder="成果">
									</div>
											<div class="form-group col-md-6">
																				<label>证书</label>
																				<img id="zhengshuImg" src="" width="100" height="100">
										<input name="file" type="file" id="zhengshuupload" class="form-control-file">
										<input name="zhengshu" id="zhengshu-input" type="hidden">
									</div>
											<div class="form-group col-md-6">
										<label>文件</label>	
										<input name="file" type="file" class="form-control-file" id="wenjianupload">
										<label id="wenjianFileName"></label>
										<input name="wenjian" id="wenjian-input" type="hidden">
									</div>
															
																																																																																																																																																																																																																													<div class="form-group  col-md-12">
																							<label>荣誉</label>
																							<input id="rongyuupload" name="file" type="file">
												<script id="rongyuEditor" type="text/plain" style="width:800px;height:230px;"></script>
												<script type="text/javascript">
												    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
												   //相见文档配置属于你自己的编译器
												 var rongyuUe = UE.getEditor('rongyuEditor', {
													toolbars: [
														[
															'undo', //撤销
															'bold', //加粗
															'redo', //重做
															'underline', //下划线
															'horizontal', //分隔线
															'inserttitle', //插入标题
															'cleardoc', //清空文档
															'fontfamily', //字体
															'fontsize', //字号
															'paragraph', //段落格式
															'inserttable', //插入表格
															'justifyleft', //居左对齐
															'justifyright', //居右对齐
															'justifycenter', //居中对
															'justifyjustify', //两端对齐
															'forecolor', //字体颜色
															'fullscreen', //全屏
															'edittip ', //编辑提示
															'customstyle', //自定义标题
															 ]
														]
													});
												</script>
												<input type="hidden" name="rongyu" id="rongyu-input">
											</div>	
																																							<div class="form-group col-md-6 mb-3">
										<button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
		<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "zhiburongyu";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};
																																
					      				      				      				      				      				      	
								function zhanghaoSelect2(){
				http("option/zhibu/zhanghao","GET",{
					tableName: "zhibu",
					columnName: "zhanghao"
				},(res)=>{
					if(res.code == 0){
						var options = res.data;
						var option = document.createElement("option");
						$("#zhanghaoSelect").append(option)
						for(var i=0;i<options.length;i++){
							var zhanghaoOption = document.createElement("option");
							zhanghaoOption.setAttribute("value",options[i]);
							zhanghaoOption.setAttribute("class","zhanghaoOption");
							if(ruleForm.zhanghao == options[i]){
								zhanghaoOption.setAttribute("selected","selected");
							}
							zhanghaoOption.innerHTML = options[i];
							//修改 回显
							if(ruleForm.zhanghao != null && ruleForm.zhanghao != '' && options[i] == ruleForm.zhanghao){
								zhanghaoOption.setAttribute("selected","selected");
							}
							$("#zhanghaoSelect").append(zhanghaoOption);
						}
					}
				});
			}		
			function zhanghaoSelect2Change(){
				var options = document.getElementById("zhanghaoSelect").options;
				var index = document.getElementById("zhanghaoSelect").selectedIndex;
				var colVal = options[index].value;
				http("follow/zhibu/zhanghao","GET",{
					tableName: "zhibu",
					columnName: "zhanghao",
					columnValue: colVal
				},(res)=>{
					if(res.code == 0){
																																		if(res.data != null && res.data.dangzhibu != null){
									$("#dangzhibu").val(res.data.dangzhibu);
								}
																																																																						}
				});
				
			}			
																														
		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "zhiburongyu/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
																																	$('#zhengshuupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {				
							document.getElementById('zhengshu-input').setAttribute('value',baseUrl+"upload/"+data.result.file);
							if(document.getElementById('zhengshuFileName') != null){
								document.getElementById('zhengshuFileName').innerHTML = "上传成功!";
							}				
							$("#zhengshuImg").attr("src",baseUrl+"upload/"+data.result.file);								
						}
					});
																$('#wenjianupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {							
							document.getElementById('wenjian-input').setAttribute('value',baseUrl+'file/download?fileName='+data.result.file);
							if(document.getElementById('wenjianFileName') != null){
								document.getElementById('wenjianFileName').innerHTML = "上传成功!";
							}		
							$("#wenjianImg").attr("src",data.result.file);												
						}
					});
																$('#rongyuupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {	
							UE.getEditor('rongyuEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560>');					
						}
					});
									}  

		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("zhiburongyu/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
						let flag = true;
																																																																																										if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.parent.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
						
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
																																								if(ruleForm.rongyu != null && ruleForm.rongyu != 'null' && ruleForm.rongyu != ''){
					var rongyuMes = '' + ruleForm.rongyu;
					var rongyuUeditor = UE.getEditor('rongyuEditor');
					rongyuUeditor.ready(function() {
						rongyuUeditor.setContent(rongyuMes);
					});
				}
								}  

		// 获取富文本框内容
		function getContent(){
																																								if(UE.getEditor('rongyuEditor').hasContents()){
					$('#rongyu-input').attr('value',UE.getEditor('rongyuEditor').getPlainTxt());
				}
								}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
					           				       			 	           										    dangzhibu: {
														},
						       			 	           										    chengguo: {
														},
						       			 	           										    zhengshu: {
														},
						       			 	           										    wenjian: {
														},
						       			 	           										    rongyu: {
														},
						       			 					},
				messages: {
																													dangzhibu: {
														},
																								chengguo: {
														},
																								zhengshu: {
														},
																								wenjian: {
														},
																								rongyu: {
														},
															}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("zhiburongyu/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
																											zhanghaoSelect2();
																																																																																				//注册表单验证
						$(validform());	
					}
				});
			}else{
															zhanghaoSelect2();	
																																																						
							 		fill()
								//注册表单验证
		    	$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
																																															}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
																																																
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
																																													
		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
																																															}		
		function calculationSE(colName){
			//单列求和接口
			http("zhiburongyu"+colName,"GET",{
				tableName: "zhiburongyu",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
																																															}			
		
		
			//新增时填充字段
			function fill(){

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
												$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
											
																				$("#dangzhibu").val(ruleForm.dangzhibu);	
																$("#chengguo").val(ruleForm.chengguo);	
																$("#zhengshu-input").val(ruleForm.zhengshu);
																$("#wenjian-input").val(ruleForm.wenjian);
					$("#wenjianFileName").html(ruleForm.wenjian);
																$("#rongyu").val(ruleForm.rongyu);	
									}		
		//图片显示
		function showImg(){
																																	var zhengshuFileName = "\"" + ruleForm.zhengshu + "\"";
					$("#zhengshuImg").attr("src",ruleForm.zhengshu);
																							}		
		//跨表

        //跨表
        function crossTable(){
            crossTableName = window.sessionStorage.getItem('crossTableName');
			crossTableId = window.sessionStorage.getItem('crossTableId');
            if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
				http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
					if(res.code == 0){
						crossRuleForm = res.data;
						$('#updateId').val(crossTableId);
												if(res.data != null && res.data != '' && res.data.zhanghao != null && res.data.zhanghao != ''){

							
																				}
												if(res.data != null && res.data != '' && res.data.dangzhibu != null && res.data.dangzhibu != ''){

															$("#dangzhibu").val(res.data.dangzhibu);
													}
												if(res.data != null && res.data != '' && res.data.chengguo != null && res.data.chengguo != ''){

															$("#chengguo").val(res.data.chengguo);
													}
												if(res.data != null && res.data != '' && res.data.zhengshu != null && res.data.zhengshu != ''){

															$("#zhengshuImg").attr("src",res.data.zhengshu);
								$("#zhengshu-input").val(res.data.zhengshu);
													}
												if(res.data != null && res.data != '' && res.data.wenjian != null && res.data.wenjian != ''){

															$("#wenjian-input").val(res.data.wenjian);
								$('#wenjianFileName').val(res.data.wenjian)
													}
												if(res.data != null && res.data != '' && res.data.rongyu != null && res.data.rongyu != ''){

															$("#rongyu").val(res.data.rongyu);
													}
											}
				});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
																																																																											},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
																																																return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			readonly();
					});		

		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
																																										if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>