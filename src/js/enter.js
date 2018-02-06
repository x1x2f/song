/* 
* @Author: Marte
* @Date:   2018-02-05 12:13:17
* @Last Modified by:   Marte
* @Last Modified time: 2018-02-05 20:25:16
*/

document.addEventListener('DOMContentLoaded',function(){
    var username=document.querySelector('.username');
    var password=document.querySelector('.password');
    var code=document.querySelector('.code');
    var center_rc=document.querySelector('.center_rc');
    var input=center_rc.querySelectorAll('input');
    var btn=document.querySelector('.btn');
    console.log(input);
    // 当获得焦点时清空输入框
    for(var i=0;i<input.length;i++){
        (function(i){
                    input[i].onfocus = function(){
                       input[i].value="";
                    }      
        })(i)
    }
   
   // var username = document.getElementById('username').value;
        var one=document.querySelector('.one');
        console.log(one);
      
       // console.log(_username);
        username.onblur=function(){
             var _username=username.value;
            if(!/^1[34578]\d{9}$/.test(_username)){
                // alert('用户名不合法');
                // e.preventDefault();
                // return;
                 one.innerHTML="用户手机号码不合法";
                username.value="请重新输入 手机号码"
               
                return false;
                
            }else{
                 one.innerHTML="输入正确";
            }
        }
        var two=document.querySelector('.two');
        console.log(two);

        password.onblur=function(){
            // if(!/^\S{6,20}$/.test(password)){
            // var nickname = document.getElementById('nickname').value;
             var _password=password.value;
            if(!/^[^\s]{6,20}$/.test(_password)){
                two.innerHTML="请重新输入密码";
                password.value="密码（六位数以上）"
                return false;
            }else{
                 two.innerHTML="输入正确";
            }
        }
    // 生成随机验证码
    var output=document.querySelector('.output')
    var three=document.querySelector('.three')
    function a(){
        var res='';
        for(var i=0;i<=4;i++){
            var num=parseInt(Math.random()*10);
            res=num+res;
        }
        return res;
    }
        var b=a();
        output.innerHTML=b;
       btn.onclick=function(){
            var _vcode=code.value;
            if(_vcode===b){
                alert('你已通过验证');
            }else{
                alert('请重新验证验证');
            }
        }





            // let username = document.querySelector('#username');
            // let password = document.querySelector('#password');
            // let btnReg = document.querySelector('.btnReg');
            // 与后端数据库作对比看是否有重名
            let arr_state = [200,304];

            // btnReg.onclick = function(e){
            username.onchange = function(e){
                let _username = username.value;
                let xhr = new XMLHttpRequest();
                // xhr.onreadystatechange = function(){
                //  if(xhr.readyState === 4 && arr_state.indexOf(xhr.status)>=0){

                //  }
                // }
                xhr.onload = function(){
                    if(arr_state.indexOf(xhr.status)>=0){
                        let res = xhr.responseText;

                        if(res === 'no'){
                            //此用户名太受欢迎,请更换一个
                            username.nextElementSibling.innerText = '此用户名太受欢迎,请更换一个';
                            // username.nextElementSibling.className = 'error';
                        }else{
                            username.nextElementSibling.innerText = '恭喜你,可以注册';
                            // username.nextElementSibling.className = 'success';
                        }
                    }
                }
                xhr.open('get','../api/reg.php?username=' + _username);
                xhr.send();

                e.preventDefault();
            }
});