layui.use(['table', 'admin', 'ax', 'ztree','form'], function () {
    var $ = layui.$;
    var table = layui.table;
    var $ax = layui.ax;
    var form = layui.form;
    var admin = layui.admin;
    var $ZTree = layui.ztree;

/**
 * 用户信息管理初始化
 */
var Member = {
    tableId: "memberTable",	//表格id
    condition: {
        memberId: ""
    }
};

    Member.onClickDept = function (e, treeId, treeNode) {
        Member.condition.refereeId = treeNode.id;
        Member.search();
    };

    //初始化左侧关系链树
    var ztree = new $ZTree("leftTree", "/member/tree");
    ztree.bindOnClick(Member.onClickDept);
    ztree.init();

/**
 * 初始化表格的列
 */
Member.initColumn = function () {
    return [[
        {type: 'checkbox'},
         {field: 'memberId', hide: true, sort: true, title: 'id'},
         {field: 'phone',width:125, title: '手机号码'},
         {field: 'uid',  title: 'uid'},
         {field: 'type', hide: true, sort: true, title: '用户类型'},
         {field: 'typeValue', sort: true, title: '用户类型'},
         {field: 'inviteCode',width:120,  title: '邀请码'},
         // {field: 'refereeId',hide: true, sort: true, title: '推荐人'},
         {field: 'refereeIdValue',width:125,title: '推荐人'},
         {field: 'areaCode',width:80, sort: true, title: '区号'},
         {field: 'powerPrice',width:80, sort: true, title: '算力'},
         {field: 'pointPrice',width:80, sort: true, title: '积分'},
         {field: 'btcPrice',width:115, sort: true, title: 'BTC余额'},
         {field: 'btcWithdrawalPrice',width:144, sort: true, title: 'BTC已提数额'},
         {field: 'btcHeapPrice',width:143, sort: true, title: 'BTC累计收益'},
         {field: 'BelongToWhere',width:180, sort: true, title: '所属区域'},

         // {field: 'provinceId',hide: true, sort: true, title: '省'},
         // {field: 'provinceIdValue', sort: true, title: '省'},
         // {field: 'cityId',hide: true, sort: true, title: '市'},
         // {field: 'cityIdValue', sort: true, title: '市'},
         // {field: 'areaId', hide: true,sort: true, title: '区'},
         // {field: 'areaIdValue', sort: true, title: '区/县'},
         // {field: 'points',hide: true, sort: true, title: '是否开通积分划转'},

         // {field: 'provinceProxy',hide: true, sort: true, title: '是否省代理'},
         // {field: 'provinceProxyValue',width:125, sort: true, title: '是否省代理'},
         {field: 'provinceProxyIdValue', sort: true, title: '代理省'},
         // {field: 'cityProxy',hide: true, sort: true, title: '是否市代理'},
         // {field: 'cityProxyValue',width:125, sort: true, title: '是否市代理'},
         {field: 'cityProxyIdValue', sort: true, title: '代理市'},
         // {field: 'areaIdProxy',hide: true, sort: true, title: '是否区/县代理'},
         // {field: 'areaIdProxyValue',width:145, sort: true, title: '是否区/县代理'},
         {field: 'areaIdProxyIdValue',width:145, sort: true, title: '代理区/县'},
         // {field: 'director', sort: true, title: '是否理事（0：否 1：是'},
         {field: 'directorValue', sort: true, title: '理事'},
         // {field: 'cooperation', sort: true, title: '是否合创(0:否 1：是）'},
         {field: 'cooperationValue', sort: true, title: '合创'},
        {field: 'pointsValue', width:115,  title: '开通积分划转'},
        {field: 'statusValue', title: '用户状态'},
        {field: 'registerTime',width:180, sort: true, title: '注册时间'},
        {field: 'status',fixed: 'right', templet: '#statusTpl', title: '用户状态'},
        {align: 'center',fixed: 'right', toolbar: '#tableBar', title: '操作', minWidth: 200}
    ]];
};




    /**
     * 修改状态
     *
     * @param contactId id
     * @param checked 是否选中（true,false），选中就是启用，未选中就是禁用
     */
    Member.changeStatus = function (id, checked) {
        if (checked) {
            var ajax = new $ax(Feng.ctxPath + "/member/status/Y", function (data) {
                Feng.success("已启用!");
            }, function (data) {
                Feng.error("失败!");
                table.reload(member.tableId);
            });
            ajax.set("memberId", id);
            ajax.start();
        } else {
            var ajax = new $ax(Feng.ctxPath + "/member/status/N", function (data) {
                Feng.success("已禁用!");
            }, function (data) {
                Feng.error("失败!" + data.responseJSON.message + "!");
                table.reload(Contact.tableId);
            });
            ajax.set("memberId", id);
            ajax.start();
        }
    };

// 修改user状态
    form.on('switch(status)', function (obj) {

        var id = obj.elem.value;
        var checked = obj.elem.checked ? true : false;

        Member.changeStatus(id, checked);
    });
    /**
     * 点击查询按钮
     */
    Member.search = function () {
        var queryData = {};
        queryData['refereeId'] = Member.condition.refereeId;
        queryData['condition'] = $("#condition").val();
        queryData['memberId'] = Member.condition.memberId;
        table.reload(Member.tableId, {where: queryData});
    };



/**
 * 打开查看用户信息详情
 */
Member.openMemberDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: '用户信息详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/member/member_edit/' + Member.seItem.id
        });
        this.layerIndex = index;
    }
};


    /**
     * 删除用户信息
     *
     */
    Member.onDeleteMember = function (data) {
        var operation = function () {
            var ajax = new $ax(Feng.ctxPath + "/member/delete", function () {
                Feng.success("删除成功!");
                table.reload(Member.tableId);
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
    Member.openAddMember = function () {
        admin.putTempData('formOk', false);
        top.layui.admin.open({
            type: 2,
            title: '添加用户信息',
            area:["800px","420px"],
            content: Feng.ctxPath + '/member/member_add',
            end: function () {
                admin.getTempData('formOk') && table.reload(Member.tableId);
            }
        });
    };

    /**
     * 导出excel按钮
     */
    Member.exportExcel = function () {
        var checkRows = table.checkStatus(Member.tableId);
        if (checkRows.data.length === 0) {
            Feng.error("请选择要导出的数据");
        } else {
            table.exportFile(tableResult.config.id, checkRows.data, 'xls');
        }
    };
   /**
     * 点击编辑用户信息
     *
     */
     Member.onEditMember = function (data) {
        admin.putTempData('formOk', false);
        top.layui.admin.open({
            type: 2,
            title: '修改用户信息',
            area:["800px","420px"],
            content: Feng.ctxPath + '/member/member_edit?memberId=' + data.memberId,
            end: function () {
                admin.getTempData('formOk') && table.reload(Member.tableId);
            }
        });
    };
 // 渲染表格
    var tableResult = table.render({
        elem: '#' + Member.tableId,
        url: Feng.ctxPath + '/member/list',
        page: true,
        height: "full-158",
        cellMinWidth: 100,
        limit:100,
        limits: [100,200,300,400,500],
        cols: Member.initColumn()
    });
 // 搜索按钮点击事件
    $('#btnSearch').click(function () {
        Member.search();
    });

    // 添加按钮点击事件
    $('#btnAdd').click(function () {
        Member.openAddMember();
    });

    // 导出excel
    $('#btnExp').click(function () {
        Member.exportExcel();
    });

    // 工具条点击事件
    table.on('tool(' + Member.tableId + ')', function (obj) {
        var data = obj.data;
        var layEvent = obj.event;
        if (layEvent === 'edit') {
            Member.onEditMember(data);
        } else if (layEvent === 'delete') {
            Member.onDeleteMember(data);
        }
    });
});