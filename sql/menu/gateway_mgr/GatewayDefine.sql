
-- =======================================================================================
-- CODE 菜单编号
-- PCODE  菜单父编号
-- PCODES  当前菜单的所有父菜单编号
-- NAME 菜单名称
-- ICON 菜单图标 
-- URL url地址
-- SORT 菜单排序号
-- LEVELS 菜单层级  MENU_FLAG 是否是菜单 DESCRIPTION 备注 NEW_PAGE_FLAG 是否打开新页面的标识(字典 OPEN_FLAG 是否打开(字典)
-- 脚本名： 网关定义
-- 描述：  gatewayDefine
-- =======================================

-- 父操作
INSERT INTO `sys_menu`(CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'gatewayDefine', 'gateway_mgr', '[0],[gateway_mgr],', '网关定义', '', '/gatewayDefine', 1000, 2, 'Y', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);

-- 子操作 list
INSERT INTO `sys_menu` (CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'gatewayDefine_list', 'gatewayDefine', '[0],[gateway_mgr],[gatewayDefine],', '列表', '', '/gatewayDefine/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL,now(), NULL, 1, NULL);

-- 子操作 add
INSERT INTO `sys_menu` (CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'gatewayDefine_add', 'gatewayDefine', '[0],[gateway_mgr],[gatewayDefine],', '添加', '', '/gatewayDefine/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);

-- 子操作 detail
INSERT INTO `sys_menu` (CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'gatewayDefine_detail', 'gatewayDefine', '[0],[gateway_mgr],[gatewayDefine],', '详情', '', '/gatewayDefine/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);

-- 子操作 edit
INSERT INTO `sys_menu` (CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
('gatewayDefine_edit', 'gatewayDefine', '[0],[gateway_mgr],[gatewayDefine],', '编辑', '', '/gatewayDefine/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);

-- 子操作 delete
INSERT INTO `sys_menu`(CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'gatewayDefine_delete', 'gatewayDefine', '[0],[gateway_mgr],[gatewayDefine],', '删除', '', '/gatewayDefine/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);



