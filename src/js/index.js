/* 
* @Author: Marte
* @Date:   2018-02-06 14:46:00
* @Last Modified by:   Marte
* @Last Modified time: 2018-02-09 09:29:10
*/

$(document).ready(function(){
    $('#banner').carousel({
                    interval : 3000,
                });

    let tebuy=document.querySelector('#tebuy');
    let con=tebuy.children[0];
    let arr_status=[200,304];
    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState===4 && arr_status.indexOf(xhr.status)>=0){
            let res= JSON.parse(xhr.responseText);
            let ul=document.createElement('ul');
            let price=res[1].add_time;
             console.log(res);

             console.log(price);
            ul.innerHTML=res.map(item=>{
                return`<a><li data-id="${item.id}" data-category="${item.category}">
                    <img src="${item.img}" alt="">
                    <h4>${item.name}:</h4>
                    <h5>${item.price}</h5>
                    <h3>前往</h3>
                </li></a>`
            }).join('');

            con.appendChild(ul);
           
        }
    }
    xhr.open('get','./api/tebuy.php');
    xhr.send();




    // 点击事件委托
    
                // con.onclick=e=>{
                //     if(e.target.tagName.toLowerCase()==='h5'){
                //         console.log(666);
                //         console.log(e.target.parentNode);
                //         let id=e.target.parentNode.getAttribute('data-id');
                //         console.log(id);
                //         let xhr = new XMLHttpRequest();
                        
                //         xhr.onreadystatechange=function(){
                //             if(xhr.readyState===4 && arr_status.includes(xhr.status)){
                //                 let res = JSON.parse(xhr.responseText);
                //                 // console.log(responseText);
                //                 // let time=res[3].add_time;
                //                 // console.log(time);
                //                 // e.target.innerText=res.likecnt;
                //             }
                //         }
                //         // xhr.open('get','./api/list-page?id='+id);
                //         xhr.open('get','./api/list-page?id='+id);
                //         xhr.send();
                //     }
                // }
                con.onclick=e=>{
                    if(e.target.tagName.toLowerCase()==='h3'){
                        let category=e.target.parentNode.getAttribute('data-category');
                        var params = "?"+category;
                        console.log(params);
                        location.href= "./html/list-page.html"+params;
                    }
                }

});