<?php
/**
 * @Author: Marte
 * @Date:   2018-02-05 19:53:52
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-02-05 20:10:19
 */
    /*
        判断用户名是否存在
            存在：no
            不存在：yes
     */

    // 接收
    $username = isset($_GET['username']) ? $_GET['username'] : null;

    
    $nameList = array('张三','李四','王尼玛','奥巴马','奥尼玛','lemon','王巴马',13423503403);

    if(in_array($username, $nameList)){
        echo "no";
    }else{
        echo "yes";
    }

?>