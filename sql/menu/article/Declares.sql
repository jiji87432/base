
-- =======================================================================================
-- CODE 菜单编号
-- PCODE  菜单父编号
-- PCODES  当前菜单的所有父菜单编号
-- NAME 菜单名称
-- ICON 菜单图标 
-- URL url地址
-- SORT 菜单排序号
-- LEVELS 菜单层级  MENU_FLAG 是否是菜单 DESCRIPTION 备注 NEW_PAGE_FLAG 是否打开新页面的标识(字典 OPEN_FLAG 是否打开(字典)
-- 脚本名： 用户协议
-- 描述：  declares
-- =======================================

-- 父操作
INSERT INTO `sys_menu`(CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'declares', 'article', '[0],[article],', '用户协议', '', '/declares', 1100, 2, 'Y', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);

-- 子操作 list
INSERT INTO `sys_menu` (CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'declares_list', 'declares', '[0],[article],[declares],', '列表', '', '/declares/list', 1000, 3, 'N', NULL, 'ENABLE', NULL, NULL,now(), NULL, 1, NULL);

-- 子操作 add
INSERT INTO `sys_menu` (CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'declares_add', 'declares', '[0],[article],[declares],', '添加', '', '/declares/add', 1200, 3, 'N', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);

-- 子操作 detail
INSERT INTO `sys_menu` (CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'declares_detail', 'declares', '[0],[article],[declares],', '详情', '', '/declares/detail', 1300, 3, 'N', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);

-- 子操作 edit
INSERT INTO `sys_menu` (CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
('declares_edit', 'declares', '[0],[article],[declares],', '编辑', '', '/declares/edit', 1400, 3, 'N', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);

-- 子操作 delete
INSERT INTO `sys_menu`(CODE, PCODE,PCODES,NAME,ICON,URL,SORT,LEVELS,MENU_FLAG,DESCRIPTION,STATUS,NEW_PAGE_FLAG,OPEN_FLAG,CREATE_TIME,UPDATE_TIME,CREATE_USER,UPDATE_USER)
VALUES
( 'declares_delete', 'declares', '[0],[article],[declares],', '删除', '', '/declares/delete', 1500, 3, 'N', NULL, 'ENABLE', NULL, NULL, now(), NULL, 1, NULL);



