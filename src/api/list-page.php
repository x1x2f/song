<?php
/**
 * @Author: Marte
 * @Date:   2018-02-08 14:22:20
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-02-08 18:04:02
 */
   include 'content.php';

    // 在后段获取前端数据
    $category=isset($_GET['category'])? $_GET['category'] :null;
    // echo $category;
    // sql语句
    $sql="select * from milk where category='$category'";
    // 查询
    $result=$conn->query($sql);
    // 得到json字符串
    $row=$result->fetch_all(MYSQLI_ASSOC);


    // 释放查询结果集
    $result->close();
    // 关闭数据库链接
    $conn->close();
    // 输出结果到前台
    echo json_encode($row,JSON_UNESCAPED_UNICODE);




?>