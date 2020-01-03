
layui.use(['layer', 'form', 'admin', 'ax'], function () {
    var $ = layui.jquery;
    var $ax = layui.ax;
    var form = layui.form;
    var admin = layui.admin;
    var layer = layui.layer;

    // 让当前iframe弹层高度适应
    // admin.iframeAuto();


    //获取参数信息
    var ajax = new $ax(Feng.ctxPath + "/region/detail/" + Feng.getUrlParam("regionId"));
    var result = ajax.start();
    form.val('regionForm', result);


    $.ajax({
        type: "POST",
        url: "/region/getTypeList",
        datatype: "json",
        success: function (data) {
            $.each(data, function (index, item) {
                // $('#guessCode').append(new Option(item.value, item.code,true));// 下拉菜单里添加元素
                if(item.code===result.parentId)
                {
                    $('#parentId').append(new Option(item.value, item.code,true,true));
                }
                else{
                    $('#parentId').append(new Option(item.value, item.code));
                }
            });

            layui.form.render('select');
        }, error: function () {
            Feng.error("查询等级失败");
        }
    });


    // 表单提交事件
    form.on('submit(btnSubmit)', function (data) {
        var ajax = new $ax(Feng.ctxPath + "/region/edit", function (data) {
            Feng.success("修改成功！");
            //传给上个页面，刷新table用
            admin.putTempData('formOk', true);
            //关掉对话框
            admin.closeThisDialog();
        }, function (data) {
            Feng.error("添加失败！" + data.responseJSON.message)
        });
        ajax.set(data.field);
        ajax.start();
    });
});
