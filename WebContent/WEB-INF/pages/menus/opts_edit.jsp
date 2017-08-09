<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ include file="../indexs/_headers.jsp"%>
<script>
$(document).ready(function(){
	$(".btn-default").click(function(){
		BJUI.dialog('close', 'addOpt_dialog');
	});
});
</script>
</head>
<body>
<div class="bjui-pageContent">
    <div class="bs-example">
        <form action="<%=request.getContextPath() %>/menu/saveOpt" class="datagrid-edit-form" data-toggle="validate">
            <input type='hidden' name="id" value="${beans.id }" />
            <input type='hidden' name="menu_id" value="${beans.menu_id }" />
            <div class="bjui-row col-2">
                <label class="row-label">操作编码</label>
                <div class="row-input required">
                    <input type="text" name="funenname" value="${beans.funenname }" data-rule="required">
                </div>
                <label class="row-label">操作名称</label>
                <div class="row-input required">
                    <input type="text" name="funchname" value="${beans.funchname }" data-rule="required">
                </div>
            </div>
        </form>
    </div>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">取消</button></li>
        <li><button type="submit" class="btn-default" data-icon="save">保存</button></li>
    </ul>
</div>
</body>
</html>