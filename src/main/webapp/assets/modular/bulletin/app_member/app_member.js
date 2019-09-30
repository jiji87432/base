layui.use(['table', 'admin', 'ax','form', 'laydate','ztree'], function () {
    var $ = layui.$;
    var table = layui.table;
    var $ax = layui.ax;
    var admin = layui.admin;
    var $ZTree = layui.ztree;
    var form = layui.form;
    var laydate=layui.laydate;

    /**
 * 用户信息管理初始化
 */
var App_member = {
    tableId: "app_memberTable",	//表格id
    condition: {
        memberId: "",
        timeLimit: "",
    }
};

/**
 * 初始化表格的列
 */
App_member.initColumn = function () {
    return [[
        // {type: 'checkbox'},
        {field: 'memberId', hide: true, sort: true, title: 'id'},
        {field: 'memberId',  sort: true, rowspan:"2",title: '用户ID',width:120},
        {field: 'account', rowspan:"2", title: '用户名',width:120},
        {field: 'phone',  rowspan:"2",title: '用户手机',width:120},
        {field: 'name', rowspan:"2", title: '用户真实姓名',width:120},
        {field: 'promotion', rowspan:"2", title: '个人推荐码',width:120},
        {field: 'inviteName', rowspan:"2", title: '用户推荐人',width:120},
        {field: 'invite',  rowspan:"2",title: '用户推荐码',width:120},
        {field: 'registerTime', sort: true,rowspan:"2", title: '注册时间',width:160},
        {field: 'totalPrice', sort: true,rowspan:"2", title: '用户钱包余额',width:160},
        {align: 'center', title: '用户常规佣金比例', colspan: 3},
        {align: 'center', title: '用户加成佣金比例', colspan: 3},
        {field: 'addTimeLimit', rowspan:"2",  title: '加成佣金比例启用起止时间',width:200},
        {field: 'commission', rowspan:"2", title: '用户佣金统计',width:130},
        {field: 'score', rowspan:"2", title: '信用分',width:100},
        {field: 'status',fixed: 'right', rowspan:"2",templet: '#statusTpl', title: '用户状态'},
        {align: 'center',fixed: 'right', toolbar: '#tableBar',rowspan:"2", title: '操作', minWidth: 200}
    ],
        [
            {field: 'wechatRate', title: '微信', width: 120}
            ,{field: 'alipayRate', title: '支付宝', width: 120}
            ,{field: 'collectRate', title: '聚合码', width: 120}
            ,{field: 'wechatRateAdd', title: '微信', width: 120}
            ,{field: 'alipayRateAdd', title: '支付宝', width: 120}
            ,{field: 'collectRateAdd', title: '聚合码', width: 120}
        ]
    ];
};
// 渲染表格
    var tableResult = table.render({
        elem: '#' + App_member.tableId,
        url: Feng.ctxPath + '/app_member/list',
        page: true,
        height: "full-158",
        cellMinWidth: 100,
        limit:100,
        limits: [100,200,300,400,500],
        cols: App_member.initColumn()

    });

    /**
     * 点击查询按钮
     */
    App_member.search = function () {
        var queryData = {};
        queryData['condition'] = $("#condition").val();
        queryData['memberId'] = App_member.condition.memberId;
        queryData['timeLimit'] = $("#timeLimit").val();

        table.reload(App_member.tableId, {where: queryData});
    };


/**
 * 打开查看用户信息详情
 */
App_member.openApp_memberDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: '用户信息详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/app_member/app_member_edit/' + App_member.seItem.id
        });
        this.layerIndex = index;
    }
};


    /**
     * 删除用户信息
     *
     */
    App_member.onDeleteApp_member = function (data) {
        var operation = function () {
            var ajax = new $ax(Feng.ctxPath + "/app_member/delete", function () {
                Feng.success("删除成功!");
                table.reload(App_member.tableId);
            }, function (data) {
                Feng.error("删除失败!" + data.responseJSON.message + "!");
            });
            ajax.set("memberId", data.memberId);
            ajax.start();
        };
        Feng.confirm("是否删除用户信息 ?", operation);
    };

    /**
     * 弹出添加用户信息
     */
    App_member.openAddApp_member = function () {
        admin.putTempData('formOk', false);
        top.layui.admin.open({
            type: 2,
            title: '添加用户信息',
            area:["800px","420px"],
            content: Feng.ctxPath + '/app_member/app_member_add',
            end: function () {
                admin.getTempData('formOk') && table.reload(App_member.tableId);
            }
        });
    };

    /**
     * 导出excel按钮
     */
    App_member.exportExcel = function () {
        var checkRows = table.checkStatus(App_member.tableId);
        if (checkRows.data.length === 0) {
            Feng.error("请选择要导出的数据");
        } else {
            table.exportFile(tableResult.app_member.id, checkRows.data, 'xls');
        }
    };
   /**
     * 点击编辑用户信息
     *
     */
     App_member.onEditApp_member = function (data) {
        admin.putTempData('formOk', false);
        top.layui.admin.open({
            type: 2,
            title: '修改用户信息',
            area:["800px","650px"],
            content: Feng.ctxPath + '/app_member/app_member_edit?memberId=' + data.memberId,
            end: function () {
                admin.getTempData('formOk') && table.reload(App_member.tableId);
            }
        });
    };

 // 搜索按钮点击事件
    $('#btnSearch').click(function () {
        App_member.search();
    });

    // 添加按钮点击事件
    $('#btnAdd').click(function () {
        App_member.openAddApp_member();
    });

    // 导出excel
    $('#btnExp').click(function () {
        App_member.exportExcel();
    });


    /**
     * 修改状态
     *
     * @param contactId id
     * @param checked 是否选中（true,false），选中就是启用，未选中就是禁用
     */
    App_member.changeStatus = function (id, checked) {
        if (checked) {
            var ajax = new $ax(Feng.ctxPath + "/app_member/status/Y", function (data) {
                Feng.success("已启用!");
            }, function (data) {
                Feng.error("失败!");
                table.reload(App_member.tableId);
            });
            ajax.set("memberId", id);
            ajax.start();
        } else {
            var ajax = new $ax(Feng.ctxPath + "/app_member/status/N", function (data) {
                Feng.success("已禁用!");
            }, function (data) {
                Feng.error("失败!" + data.responseJSON.message + "!");
                table.reload(App_member.tableId);
            });
            ajax.set("memberId", id);
            ajax.start();
        }
    };

    // 修改user状态
    form.on('switch(status)', function (obj) {

        var id = obj.elem.value;
        var checked = obj.elem.checked ? true : false;

        App_member.changeStatus(id, checked);
    });


    //渲染时间选择框
    laydate.render({
        elem: '#timeLimit',
        range: true,
        max: Feng.currentDate()
    });



    // 工具条点击事件
    table.on('tool(' + App_member.tableId + ')', function (obj) {
        var data = obj.data;
        var layEvent = obj.event;
        if (layEvent === 'edit') {
            App_member.onEditApp_member(data);
        } else if (layEvent === 'delete') {
            App_member.onDeleteApp_member(data);
        }
    });
});