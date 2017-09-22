'use strict';

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

/**
 * ES6类的使用
 * 用到了构造器、箭头函数、模板字符串`${}`、
 */
var Lucky = function () {
    function Lucky(params) {
        _classCallCheck(this, Lucky);

        // initNum=[1,40],numPwrap,turnsWrap,smTitle=[],selfNum=[],runSpeed=30
        /*this.startNum=initNum[0];//参与抽奖的起始号码
        this.endNum=initNum[1];//参与抽奖的结束号码
        this.numPwrap=document.getElementById(numPwrap);//号码显示父容器
        this.turnsWrap=document.getElementById(turnsWrap);//显示轮次容器
        this.smTitle=smTitle;//轮次小标题
        this.selfNum=selfNum;//每轮内定号码 传一个二维数组*/

        this.startNum = params.initNum[0]; //参与抽奖的起始号码 必填参数
        this.endNum = params.initNum[1]; //参与抽奖的结束号码 必填参数
        this.numPwrap = document.getElementById(params.numPwrap); //号码显示父容器 必填参数
        this.turnsWrap = document.getElementById(params.turnsWrap); //显示轮次容器 必填参数
        this.smTitle = params.smTitle || []; //轮次小标题 必填参数
        this.selfNum = params.selfNum || []; //每轮内定号码 传一个二维数组
        this.runSpeed = params.runSpeed || 40; //号码滚动速度(毫秒)
        this.isPlay = params.isPlay; //是否播放音效
        this.isShowTurn = params.isShowTurn; //是否显示轮次标题


        this.digits = this.endNum.toString().length; //中奖号码显示的位数
        this.aJoinNum = [];
        this.totalTurns = this.smTitle.length; //总抽奖轮次
        this.luckyNum = null; //中奖号码
        this.flag = true; //开始与停止标记
        this.timer = null; //定时器
        this.oLocalStorage = window.localStorage; //本地存储对象
        this.turn = 1; //抽奖轮次编号 按左右方向键进行切换

        this.runStatus = false; //抽奖状态 正在滚动或者已经停止

        this.playM = document.getElementById('play-music'); //滚动音效对象
        this.stopM = document.getElementById('stop-music'); //停止音效对象
    }

    _createClass(Lucky, [{
        key: 'init',
        value: function init() {
            var _this = this;

            // 如果还没有存储参与抽奖号码就进行存储
            if (!this.oLocalStorage.getItem("sJoinNum")) {
                // 得到参与抽奖号码数组
                var arr = [];
                for (var i = this.startNum; i <= this.endNum; i++) {

                    var j = this.buquan(i, this.digits);
                    arr.push(j);

                    for (var a = 0; a < this.selfNum.length; a++) {

                        for (var b = 0; b < this.selfNum[a].length; b++) {
                            // console(1)
                            this.buquan(this.selfNum[a][b], this.digits);
                            // console.log(this.selfNum[a][b])
                            this.removeLuckyNum(this.buquan(this.selfNum[a][b], this.digits), arr);
                            // this.removeLuckyNum[1,arr];
                        }
                    }
                }
                // console.log('arr'+arr)
                // let str = JSON.stringify(arr);
                var str = arr.join(',');
                localStorage.setItem("sJoinNum", str);
            } else {
                console.log('\u5DF2\u7ECF\u5B58\u50A8\u4E86aJoinNum' + this.oLocalStorage.getItem('sJoinNum'));
            }
            // this.aJoinNum=JSON.parse(this.oLocalStorage.getItem('sJoinNum'));//参与抽奖号码数组
            this.aJoinNum = this.oLocalStorage.getItem('sJoinNum').split(","); //参与抽奖号码数组


            //刷新页面，从localStoreage中恢复
            this.fill();
            // console.log(this.getLocalStorage())
            document.onkeyup = function (e) {
                var oEvent = e || window.event; //let在当前作用域内有用，未声明前不可用，不可重复声明


                // alert(oEvent.keyCode)

                // 空格键开始和停止抽奖
                if (oEvent.keyCode == 32 && _this.flag) {
                    // console.log(oEvent.keyCode);
                    _this.flag = false;
                    _this.run();
                    console.log('开始');
                } else if (oEvent.keyCode == 32 && !_this.flag) {
                    _this.flag = true;
                    _this.stop();
                    console.log('停止');
                }

                // 左右方向键切换抽奖轮次，Ctrl + z清除localStorage
                switch (oEvent.keyCode || oEvent.ctrlKey) {
                    case 37:
                        if (_this.runStatus) {
                            return false; //未停止抽奖不允许进行键盘切换
                        }
                        _this.turn -= 1;
                        if (_this.turn == 0) {
                            _this.turn = _this.totalTurns;
                        }
                        _this.fill();
                        break;
                    case 39:
                        if (_this.runStatus) {
                            return false; //未停止抽奖不允许进行键盘切换
                        }
                        _this.turn += 1;
                        if (_this.turn > _this.totalTurns) {
                            _this.turn = 1;
                        }
                        _this.fill();
                        break;
                    case 38:
                        //查询全部中奖记录
                        if (_this.runStatus) {
                            return false; //未停止抽奖不允许进行键盘切换
                        }
                        _this.showAllLucky();
                        break;
                    case 90 || true:
                        _this.oLocalStorage.clear();
                        break;
                    default:
                        break;
                }
            };
        }

        // 补全前导0

    }, {
        key: 'buquan',
        value: function buquan(num, length) {
            var numstr = num.toString();
            var l = numstr.length;
            if (l >= length) {
                return numstr;
            }
            for (var i = 0; i < length - l; i++) {
                numstr = "0" + numstr;
                // console.log(numstr)
            }
            return numstr;
        }

        //从数组中移除指定值

    }, {
        key: 'removeLuckyNum',
        value: function removeLuckyNum(num, arr) {
            // 数组扩展方法 从数组删除指定元素
            Array.prototype.removeByValue = function (val) {
                for (var i = 0; i < this.length; i++) {
                    if (this[i] == val) {
                        this.splice(i, 1);
                        break;
                    }
                }
            };
            arr.removeByValue(num);
            return arr;
        }

        /**
         * [getLucky 从参与抽奖号码中随机获取中奖号码]
         * @return {[number]} [带前导0的数字]
         */

    }, {
        key: 'getLucky',
        value: function getLucky(arr) {
            var randomNum = Math.floor(Math.random() * arr.length); //随机抽取一个中奖号码
            // alert(arr[randomNum]);
            return arr[randomNum];
        }

        // 开始滚动号码效果

    }, {
        key: 'run',
        value: function run() {
            var _this2 = this;

            this.runStatus = true; //运行中的标记

            clearInterval(this.timer); //清除之前的定时器

            if (this.isPlay) {
                this.playRuningMusic(); //同时播放音效
            }

            if (this.aJoinNum.length < 1) {
                alert('参与抽奖号码已抽完！');
                return false;
            }
            this.numPwrap.innerHTML = '';
            this.timer = setInterval(function () {
                var randomIndex = Math.floor(Math.random() * _this2.aJoinNum.length);
                console.log('\u53C2\u4E0E\u53F7\u7801\uFF1A' + _this2.aJoinNum);
                _this2.numPwrap.innerHTML = '<b>' + _this2.aJoinNum[randomIndex] + '</b>'; //号码不断滚动
            }, this.runSpeed);
        }

        // 停止号码滚动

    }, {
        key: 'stop',
        value: function stop() {
            clearInterval(this.timer);
            this.runStatus = false;
            if (this.isPlay) {
                this.playStopMusic();
            }
            // alert(this.turn)
            // alert(this.selfNum[this.turn-1])
            if (this.selfNum.length > 0 && this.selfNum[this.turn - 1].length > 0) {
                // alert(1)
                this.luckyNum = this.buquan(this.getLucky(this.selfNum[this.turn - 1]), this.digits);

                this.selfNum[this.turn - 1] = this.removeLuckyNum(this.luckyNum, this.selfNum[this.turn - 1]); //从内定号码数组中移除中奖号码
            } else {

                this.luckyNum = this.getLucky(this.aJoinNum); //随机抽取一个号码
            }
            console.log('\u4E2D\u5956\u53F7\u7801\uFF1A' + this.luckyNum);

            var arr = this.removeLuckyNum(this.luckyNum, this.aJoinNum); //移除该中奖号码

            this.oLocalStorage.setItem('sJoinNum', arr); //出现存储剩余号码，更新参与抽奖号码
            console.log('\u62BD\u53D6\u540E\u5269\u4F59\u53F7\u7801\uFF1A' + this.aJoinNum + '--\u4E2A\u6570' + this.aJoinNum.length);
            this.saveLuckyNum(this.luckyNum); //存储
            this.numPwrap.innerHTML = '<b>' + this.luckyNum + '</b>';
        }

        // 滚动音效

    }, {
        key: 'playRuningMusic',
        value: function playRuningMusic() {
            // this.playM.load();//从新加载audio 使其重头播放

            this.stopM.pause();
            this.playM.play();
        }

        // 停止音效

    }, {
        key: 'playStopMusic',
        value: function playStopMusic() {
            this.playM.pause();
            this.stopM.load();
            this.stopM.play();
        }

        //将中奖号码进行存储

    }, {
        key: 'saveLuckyNum',
        value: function saveLuckyNum(num) {
            if (!this.oLocalStorage[this.turn]) {
                //如果次轮抽奖结果没有存储就进行存储
                this.oLocalStorage.setItem(this.turn, num);
            } else {
                this.oLocalStorage.setItem(this.turn, this.getLocalStorage(this.turn) + '\u3001' + num);
            }
        }
    }, {
        key: 'getLocalStorage',
        value: function getLocalStorage(turn) {
            if (this.oLocalStorage[turn]) {
                return this.oLocalStorage[turn];
            } else {
                return '';
            }
        }

        // 将中奖号码填充到页面 && 轮次标题填充

    }, {
        key: 'fill',
        value: function fill() {

            if (this.smTitle[this.turn - 1]) {
                if (this.isShowTurn) {
                    this.turnsWrap.innerHTML = '\u7B2C' + this.turn + '\u8F6E' + this.smTitle[this.turn - 1];
                } else {
                    this.turnsWrap.innerHTML = '' + this.smTitle[this.turn - 1];
                }
            } else {
                this.turnsWrap.innerHTML = '\u7B2C' + this.turn + '\u8F6E';
            }
            this.numPwrap.innerHTML = '';
            // this.d=0;
            if (this.getLocalStorage(this.turn)) {
                this.numPwrap.innerHTML = '<span class="show">\u606D\u559C\u672C\u8F6E\u4E2D\u5956\u53F7\u7801\uFF1A' + this.getLocalStorage(this.turn) + '</span>';
            } else {}
        }

        // 显示全部中奖号码

    }, {
        key: 'showAllLucky',
        value: function showAllLucky() {
            this.numPwrap.innerHTML = '';
            this.numPwrap.innerHTML = '恭喜本次活动所有中奖号码：<br />';
            this.turnsWrap.style.display = 'none';
            // console.log(this.oLocalStorage.length);//object
            for (var i = 1; i <= this.totalTurns; i++) {
                if (this.oLocalStorage.getItem(i)) {
                    if (this.isShowTurn) {
                        this.numPwrap.innerHTML += '<div class="show">\u7B2C' + i + '\u8F6E' + this.smTitle[i - 1] + '\u4E2D\u5956\u53F7\u7801\uFF1A' + this.oLocalStorage.getItem(i) + '</div>';
                    } else {
                        this.numPwrap.innerHTML += '<div class="show">' + this.smTitle[i - 1] + '\u4E2D\u5956\u53F7\u7801\uFF1A' + this.oLocalStorage.getItem(i) + '</div>';
                    }
                }
            }
        }
    }]);

    return Lucky;
}();
