
window.onload=function(){
    if(window.localStorage){
        var localsObj=window.localStorage;
        // alert('支持')
    }else{
        alert('您的浏览器不支持window.localStorage，请更换');
        return false;
    }

    Array.prototype.removeByValue = function(val) {
        for (var i = 0; i < this.length; i++) {
            if (this[i] == val) {
                this.splice(i, 1);
                break;
            }
        }
    }

    // 产生数组
    var getArr=[];
    var allNums=[];
    var itemCount=95;
    localsObj.count=itemCount;
    for(var i=1;i<=localsObj.count;i++){
        getArr.push(i);
        allNums.push(i);
        // i++;
        // console.log(i+',');
    }
    // localStorage.clear();//清除本地所有存储数据
    // console.log(getArr);
    var selfNum=[1,33,57];//一等奖内部号
    for (var i = 0; i < selfNum.length; i++) {
        getArr.removeByValue(selfNum[i]);
    }
    // var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50];

    var arr=getArr;
    // console.log(arr)



    var allNum=document.getElementById('all_nums');

    var oStart = document.getElementById('start');
    var oEnd = document.getElementById('end');
    var num = document.getElementById('num');
    var oReset = document.getElementById('reset');
    var getNum = document.getElementById('get_num');

    // 读取本地中奖记录数据
    if(localsObj.sequence){

        getNum.innerHTML=localsObj.sequence;
    }else{
        getNum.innerHTML='恭喜已经中奖的号码:<br>';
    }

    var flag=true;

    //补全前导0
    function buquan(num,length){
        var numstr = num.toString();
        var l=numstr.length;
        if (l>=length) {return numstr;}
        for(var  i = 0 ;i<length - l;i++){
            numstr = "0" + numstr;
        }
        return numstr;
    }



    var luckyNum=[];
    var lunItem=1;
    var numHtml='';
    var numHtml1='';

    // 切换抽奖轮数
    function changeLun(){
        switch (lunItem) {
            case 1:
                lunNum=20;
                numHtml='三等奖第一轮';
                break;
            case 2:
                lunNum=20;
                numHtml='三等奖第二轮';
                break;
            case 3:
                lunNum=20;
                numHtml='三等奖第三轮';
                break;
            case 4:
                lunNum=10;
                numHtml='二等奖第一轮';
                break;
            case 5:
                lunNum=10;
                numHtml='二等奖第二轮';
                break;
            case 6:
                lunNum=10;
                numHtml='二等奖第三轮';
                break;
            case 7:
                lunNum=1;
                numHtml='一等奖第一轮';
                break;
            case 8:
                lunNum=1;
                numHtml='一等奖第二轮';
                break;
            case 9:
                lunNum=1;
                numHtml='一等奖第三轮';
                break;
            case 10:
                lunNum=1;
                numHtml='特等奖第一轮';
                break;
            case 11:
                lunNum=1;
                numHtml='特等奖第二轮';
                break;
            default:
                // statements_def
                break;
        }
    }

    //
    var run = function() {
        // console.log(arr)
        luckyNum=[];
        // var lunItem=4;//第几轮抽奖
        // var lunNum=0;//每次抽取的中奖号码个数
        changeLun();


        for (var i = 0; i < lunNum; i++) {
            if(numHtml.indexOf('一等奖')!=-1){
                var random=Math.floor(Math.random() * selfNum.length);
                var luckyNum1=selfNum[random];//得到随机中奖号码

                // alert(luckyNum1)
                selfNum.removeByValue(luckyNum1);//从数组中移除中奖号码
                // arr=selfNum;//特殊处理
            }else{
                var random=Math.floor(Math.random() * arr.length);
                var luckyNum1=arr[random];//得到随机中奖号码

                // alert(luckyNum1)
                arr.removeByValue(luckyNum1);//从数组中移除中奖号码
            }
            // console.log(numHtml.indexOf('一等奖'))

            // console.log(random)


            luckyNum1=buquan(luckyNum1,3);
            luckyNum.push(luckyNum1);
        }



        // console.log(luckyNum)
        console.log(arr)

    }
    // 号码滚动
    function numRun(){
        var random=Math.floor(Math.random() * allNums.length);
        if(allNums[random]){
            num.innerHTML = allNums[random];
        }
    }
    var timer;

    // 开始抽奖
    function start() {

        // console.log(1);
        clearInterval(timer);
        oStart.disabled=true;
        oEnd.disabled=false;

        if(arr.length>0){
            timer = setInterval(numRun, 50);
            run();
            flag=false;
        }
        return false;

    }

    // 停止抽奖
    function end() {
        clearInterval(timer);
        oEnd.disabled=true;
        oStart.disabled=false;
        var delNum=luckyNum;
        // console.log(luckyNum)
        /*for (var i = 0; i < luckyNum.length; i++) {
            arr.removeByValue(luckyNum[i]);
        }*/
        // console.log(arr)
        allNum.innerHTML=arr;
        if(arr.length==0){
            oStart.disabled=true;
            oEnd.disabled=true;
        }
        flag=true;
        changeLun();
        num.innerHTML=numHtml.substring(0,6);
        // getNum.innerHTML+=numHtml+'：'+delNum+'<br>';
        var newItem=document.createElement("div");
        newItem.innerHTML=numHtml +'：'+delNum+'<br>';
        getNum.insertBefore(newItem,getNum.childNodes[1]);
        // 存储中奖记录到本地
        // console.log(localsObj.sequence);

        if(localsObj.sequence==undefined){
            // alert(1)
            localsObj.setItem("sequence",'恭喜已经中奖的号码:<br>');
        }else{
            // localsObj.setItem("sequence",localsObj.sequence+newItem);
            // localsObj.setItem("sequence",localsObj.sequence+getNum.innerHTML);
            localsObj.setItem("sequence",getNum.innerHTML);
        }

        // getNum.innerHTML+=
        // getNum.innerHTML=delNum+'、';
        // console.log(num.innerHTML)
    }



    document.onkeyup=function(e){
        var e=e||window.event;
        // alert(e.keyCode)
        // 空格键开始和停止抽奖
        if(e.keyCode==32 && flag){
            // console.log(e.keyCode);
            start();
        }else if (e.keyCode==32 && !flag) {
            end();
        }
        // 右方向键切换到下一轮抽奖环节
        if(e.keyCode==39){
            lunItem+=1;
            if(lunItem==12){
                lunItem=1;
            }
            // console.log(lunItem)
            changeLun();
            num.innerHTML=numHtml.substring(0,6);
        }
        // 左方向键切换到上一轮抽奖环节
        if(e.keyCode==37){
            lunItem-=1;
            if(lunItem==0){
                lunItem=11;
            }
            // console.log(lunItem)
            changeLun();
            num.innerHTML=numHtml.substring(0,6);
        }

        //清除本地所有存储数据
        if(e.keyCode==27){
            localStorage.clear();
        }

    }


}
