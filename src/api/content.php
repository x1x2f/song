<?php
/**
 * @Author: Marte
 * @Date:   2018-02-08 10:46:24
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-02-08 10:47:42
 */
 // 用面向对象的方法连接数据库
    // 创建实例
    // 
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = 'mysql';
    $conn = new mysqli("localhost","root" , "", "mysql");
     // 检测
      if ($conn->connect_error) {
            die("连接失败: " . $conn->connect_error);
        } 
    // echo "success";
    // 
    // 设置查询前防止乱码的产生
     $conn->set_charset('utf8');
?>