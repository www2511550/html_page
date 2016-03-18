<?php
$config = array(
    /* 数据库配置 */
    'DB_TYPE'   => 'mysql', // 数据库类型
    'DB_HOST'   => 'localhost', // 服务器地址    
    'DB_USER'   => 'root', // 用户名
    'DB_PWD'    => '',  // 密码
    'DB_PORT'   => '3306', // 端口    
    'DB_NAME'   => 'muban', // 数据库名    
    'DB_PREFIX' => 'bgw_', // 数据库表前缀 

    /* 加密前缀 */
    'PWD_KEY'   => 'cc_baguawu_520',   // 用户注册加密前缀
    'ADMIN_KEY' => 'cc_!@#$%_admin',   // 后台加密串

    'DEFAULT_AJAX_RETURN' => 'JSON',  // $this->ajaxRetrun配置

    /* 网站配置 */ 
    'WEB_TITLE' => '三只松鼠官方旗舰店-三只松鼠旗舰店-三只松鼠-三只松鼠坚果',  // 标题
    'WEB_KEYWORD' => '三只松鼠,三只松鼠官方旗舰店,三只松鼠旗舰店,三只松鼠坚果,三只松鼠官网',  // 关键词
    'WEB_DESC' => '三只松鼠成立于2012年，三只松鼠旗舰店是一家专注于互联网坚果，三只松鼠四年时间便成为坚果巨头，三只松鼠致力于打造一个互联网时代的农业生态产业链,购买三只松鼠坚果请到三只松鼠官网或三只松鼠旗舰店！',  // 描述
);
if (DEV) {
    return $config;die;
}
return array(
    /* 数据库配置 */
    'DB_TYPE'   => 'mysql', // 数据库类型
    'DB_HOST'   => 'qdm111421206.my3w.com', // 服务器地址    
    'DB_USER'   => 'qdm111421206', // 用户名
    'DB_PWD'    => 'a2511550',  // 密码
    'DB_PORT'   => '3306', // 端口    
    'DB_NAME'   => 'qdm111421206_db', // 数据库名    
    'DB_PREFIX' => 'bgw_', // 数据库表前缀 

    /* 加密前缀 */
    'PWD_KEY'   => 'cc_baguawu_520',   // 用户注册加密前缀
    'ADMIN_KEY' => 'cc_!@#$%_admin',   // 后台加密串

    /* $this->ajaxRetrun配置 */
    'DEFAULT_AJAX_RETURN' => 'JSON',  // $this->ajaxRetrun配置

    /* 网站配置 */ 
    'WEB_TITLE' => '三只松鼠官方旗舰店-三只松鼠旗舰店-三只松鼠-三只松鼠坚果',  // 标题
    'WEB_KEYWORD' => '三只松鼠,三只松鼠官方旗舰店,三只松鼠旗舰店,三只松鼠坚果,三只松鼠官网',  // 关键词
    'WEB_DESC' => '三只松鼠成立于2012年，三只松鼠是一家专注于互联网坚果的公司，三只松鼠短短四年时间便超过同行业成为坚果巨头，三只松鼠致力于打造一个互联网时代的农业生态产业链！',  // 描述
);