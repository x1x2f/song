<?php

   include 'content.php';

    // 在后段获取前端数据
    $id=isset($_GET['id'])? $_GET['id'] :null;
    // echo $category;
    // sql语句
    $sql="select * from milk where id=$id";
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