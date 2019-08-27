
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <title>首页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/wx/css/style.css">
    <script src="${pageContext.request.contextPath}/static/jquery/jquery-2.1.4.js"></script>
    <script src="${pageContext.request.contextPath}/static/wx/js/echarts.common.min.js"></script>
</head>
<style>
    .touxiang{background: url(${pageContext.request.contextPath}/static/wx/image/index_top.png) no-repeat center; background-size: 100% 100%; height: 150px; text-align: center; padding: 15px 0;}

</style>
<body style="background-color: #F3F3F3;">
<div>
    <div class="top">
        <div class="touxiang">
            <img src="${pageContext.request.contextPath}/static/wx/image/tx.jpeg">
            <p><span>张某某</span>同学</p>
        </div>
        <div class="info">
            <div class="info_item">
                <div>当前日期</div>
                <div>2019/08/15</div>
            </div>
            <div class="info_item">
                <div>学习卡号</div>
                <div>22365454</div>
            </div>
            <div class="info_item">
                <div>开卡日期</div>
                <div>2019/08/12</div>
            </div>
        </div>
    </div>
    <div class="blank"></div>
    <div class="block_item">
        <div class="bg_title"> 综述</div>
        <div class="bg_item">
            <ul>
                <li>共开通<span>3</span>本课程</li>
                <li class="hz_item">
                    <p>学习单词</p>
                    <span>3</span>
                </li>
                <li class="hz_item">
                    <p>生疏单词</p>
                    <span>3</span>
                </li>
                <li class="hz_item">
                    <p>攻克生词</p>
                    <span>3</span>
                </li>
            </ul>
        </div>
    </div>
    <div class="block_item">
        <div class="bg_title"> 测试报告</div>
        <div class="bg_item">
            <div class="list">
                <span>课本名称</span>
                <span>测试名称</span>
                <span>分数</span>
            </div>
            <div class="list">
                <span>初中体验课</span>
                <span>单元测试</span>
                <span>0/90</span>
            </div>
            <div class="list">
                <span>初中体验课</span>
                <span>听写练习</span>
                <span>0/60</span>
            </div>
        </div>
    </div>
    <div class="block_item">
        <div class="bg_title"> 课程详情</div>
        <div class="bg_item">
            <div class="list newlist">
                <span>课本名称</span>
                <span>学习情况</span>
            </div>
            <div class="list firt_list">
                <span>初中体验课</span>
                <span>本书已学单词：12；未学单词：12；现有生词：12；熟词：12；备忘单词：12；已消灭生词：12</span>
            </div>
            <div class="list firt_list">
                <span>初中体验课</span>
                <span>本书已学单词：12；未学单词：12；现有生词：12；熟词：12；备忘单词：12；已消灭生词：12</span>
            </div>
        </div>
    </div>
    <div class="block_item">
        <div class="bg_title"> 学习单词数量（近7天）</div>
        <div class="bg_item">
            <div id="container" style=" width: 100%;height: 300px;margin:0 auto;"></div>
        </div>
    </div>
    <div class="block_item">
        <div class="bg_title"> 学习时间（近7天）</div>
        <div class="bg_item">
            <div id="container1" style=" width: 100%;height: 300px;margin:0 auto;"></div>
        </div>
    </div>
    <div class="blank"></div>
</div>
</body>

<script type="text/javascript">
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    app.title = '柱状图分数划分';
    var namedate = ['2019-07-21', '2019-07-22', '2019-07-23', '2019-07-24', '2019-07-25', '2019-07-26', '2019-07-27'];
    var numdate = [10, 20, 30, 40, 50, 60, 100];
    var colorlist = [];
    numdate.forEach(element => {
        if (element < 60) {
        colorlist.push(["#fc7095", "#fa8466"])
    } else if (element >= 60 && element < 90) {
        colorlist.push(["#386ffd", "#74b3ff"])
    } else {
        colorlist.push(["#1aa8ce", "#49d3c6"])
    }
    });
    option = {

        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                data: namedate,
                axisTick: {
                    alignWithLabel: true
                },
                axisLine: {
                    lineStyle: {
                        color: "#4dd1c4",
                        width: 1
                    }
                },
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#999'
                    }
                }
            }
        ],
        yAxis: [
            {
                type: 'value',
                axisLabel: {
                    formatter: '{value} 个',
                    show: true,
                    textStyle: {
                        color: '#999'
                    }
                },
                axisLine: {
                    lineStyle: {
                        color: "#4dd1c4",
                        width: 1
                    }
                },
                splitLine: {
                    show: true,
                    lineStyle: {
                        type: 'dashed',
                        color: '#ddd'
                    }
                }

            }
        ],
        series: [
            {
                name: '学习数量（个）',
                type: 'bar',
                barWidth: '60%',
                data: numdate,
                itemStyle: {
                    normal: {
                        // color: new echarts.graphic.LinearGradient(
                        //     0, 0, 0, 1,
                        //     [
                        //         {offset: 1, color: 'red'},
                        //         {offset: 0, color: 'orange'}
                        //     ]
                        // )
                        color: function (params) {
                            // var colorList = colorlist;
                            // return colorList[params.dataIndex];
                            var colorList = colorlist

                            var index = params.dataIndex;
                            // if(params.dataIndex >= colorList.length){
                            //         index=params.dataIndex-colorList.length;
                            // }
                            return new echarts.graphic.LinearGradient(0, 0, 0, 1,
                                [
                                    { offset: 1, color: colorList[index][0] },
                                    { offset: 0, color: colorList[index][1] }
                                ]);


                        }
                    }
                }
            }
        ]
    };
    ;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
<script type="text/javascript">
    var dom = document.getElementById("container1");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    app.title = '柱状图分数划分';
    var namedate = ['2019-07-21', '2019-07-22', '2019-07-23', '2019-07-24', '2019-07-25', '2019-07-26', '2019-07-27'];
    var numdate = [100, 200, 300, 400, 500, 600, 1000];
    var colorlist = [];
    numdate.forEach(element => {
        if (element < 60) {
        colorlist.push(["#fc7095", "#fa8466"])
    } else if (element >= 60 && element < 90) {
        colorlist.push(["#386ffd", "#74b3ff"])
    } else {
        colorlist.push(["#1aa8ce", "#49d3c6"])
    }
    });
    option = {

        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                data: namedate,
                axisTick: {
                    alignWithLabel: true
                },
                axisLine: {
                    lineStyle: {
                        color: "#4dd1c4",
                        width: 1
                    }
                },
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#999'
                    }
                }
            }
        ],
        yAxis: [
            {
                type: 'value',
                axisLabel: {
                    formatter: '{value} 分钟',
                    show: true,
                    textStyle: {
                        color: '#999'
                    }
                },
                axisLine: {
                    lineStyle: {
                        color: "#4dd1c4",
                        width: 1
                    }
                },
                splitLine: {
                    show: true,
                    lineStyle: {
                        type: 'dashed',
                        color: '#ddd'
                    }
                }

            }
        ],
        series: [
            {
                name: '学习时间（分钟）',
                type: 'bar',
                barWidth: '60%',
                data: numdate,
                itemStyle: {
                    normal: {
                        // color: new echarts.graphic.LinearGradient(
                        //     0, 0, 0, 1,
                        //     [
                        //         {offset: 1, color: 'red'},
                        //         {offset: 0, color: 'orange'}
                        //     ]
                        // )
                        color: function (params) {
                            // var colorList = colorlist;
                            // return colorList[params.dataIndex];
                            var colorList = colorlist

                            var index = params.dataIndex;
                            // if(params.dataIndex >= colorList.length){
                            //         index=params.dataIndex-colorList.length;
                            // }
                            return new echarts.graphic.LinearGradient(0, 0, 0, 1,
                                [
                                    { offset: 1, color: colorList[index][0] },
                                    { offset: 0, color: colorList[index][1] }
                                ]);


                        }
                    }
                }
            }
        ]
    };
    ;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
    $(document).on('click','.layui-tab-title  li:first-child',function(){
        $(".layui-tab-title  li:first-child img").attr("src", "images/10.png");
        $(".layui-tab-title  li:nth-child(2) img").attr("src", "images/11-1.png");
        $(".layui-tab-title  li:nth-child(3) img").attr("src", "images/12-1.png");
        $(".layui-tab-title  li:last-child img").attr("src", "images/xxbg1.png");
    });
    $(document).on('click','.layui-tab-title  li:nth-child(2)',function(){
        $(".layui-tab-title  li:first-child img").attr("src", "images/10-1.png");
        $(".layui-tab-title  li:nth-child(2) img").attr("src", "images/11.png");
        $(".layui-tab-title  li:nth-child(3) img").attr("src", "images/12-1.png");
        $(".layui-tab-title  li:last-child img").attr("src", "images/xxbg1.png");
    });
    $(document).on('click','.layui-tab-title  li:nth-child(3)',function(){
        $(".layui-tab-title  li:first-child img").attr("src", "images/10-1.png");
        $(".layui-tab-title  li:nth-child(2) img").attr("src", "images/11-1.png");
        $(".layui-tab-title  li:nth-child(3) img").attr("src", "images/12.png");
        $(".layui-tab-title  li:last-child img").attr("src", "images/xxbg1.png");
    });
    $(document).on('click','.layui-tab-title  li:last-child',function(){
        $(".layui-tab-title  li:first-child img").attr("src", "images/10-1.png");
        $(".layui-tab-title  li:nth-child(2) img").attr("src", "images/11-1.png");
        $(".layui-tab-title  li:nth-child(3) img").attr("src", "images/12-1.png");
        $(".layui-tab-title  li:last-child img").attr("src", "images/xxbg.png");
    });
</script>
</html>