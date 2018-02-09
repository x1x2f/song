/* 
* @Author: Marte
* @Date:   2018-02-08 15:40:31
* @Last Modified by:   Marte
* @Last Modified time: 2018-02-09 10:53:02
*/

$(document).ready(function(){
 console.log(666);
 var categoryx = location.href.indexOf("?");
 var category = location.href.slice(categoryx+1);
 console.log(category);   
 let arr_status=[200,304];
 let xhr=new XMLHttpRequest();
 // 获取页面数据
 let goods=document.querySelector('.center_r');
 console.log(goods);
 xhr.onreadystatechange = function(){
    if(xhr.readyState === 4 && arr_status.includes(xhr.status)>=0){
        let res= JSON.parse(xhr.responseText);
        let ul=document.createElement('ul');
        // let price=res[1].add_time;
         console.log(res);

         // console.log(price);
        ul.innerHTML=res.map(item=>{
            return`<a><li data-id="${item.id}" data-category="${item.category}">
                <img src="${item.img}" alt="">
                <h4>${item.name}:</h4>
                <h3>${item.price}</h3>
                <span>前往</span>
            </li></a>`
        }).join('');

        goods.appendChild(ul);
    }
}
xhr.open('get','../api/list-page.php?category='+category,true);
xhr.send();
// xhr.open('get','http://localhost:1708/api/goods.php');
    

    // $.ajax({
    //     type:"get",
    //     url:"../api/list-page.php",
    //     data:{"id":id},
    //     success:function(data){
    //         console.log(data);
    //     }
    // })
    



    // 点击事件
    goods.onclick=e=>{
        if(e.target.tagName.toLowerCase()==='span'){
            let id=e.target.parentNode.getAttribute('data-id');
            var params = "?"+id;
            console.log(params);
            location.href= "./goods.html"+params;
        }
    }

});