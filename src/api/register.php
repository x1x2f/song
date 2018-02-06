<?php
/**
 * @Author: Marte
 * @Date:   2018-02-05 17:39:36
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-02-05 17:50:32
 */

    //1、读取文件（text）
    //  * 打开文件fopen(path,model)
    //2、修改内容(array)
    //  * 数组操作
    //3、重写文件内容(text)


    $id = isset($_GET['id']) ? $_GET['id'] : Null;

    $path = 'data/weibo.json';

    // 打开文件，得到一个文件
    $file = fopen($path, 'r');

    $len = filesize($path);

    // 读取内容
    $content = fread($file,$len);


    // 关闭文件:避免浪费资源
    fclose($file);

    // 把json字符串转成数组
    // json_encode()
    $res = json_decode($content);

    $data;

    foreach($res as $item){
        if($item->id == $id){
            $item->likecnt++;

            $data = $item;
        }
    }


    // 重新写入文件
    $file = fopen($path, 'w');
    fwrite($file, json_encode($res,JSON_UNESCAPED_UNICODE));

    // 关闭文件
    fclose($file);

    echo json_encode($data,JSON_UNESCAPED_UNICODE);
    // var_dump($res);

?>