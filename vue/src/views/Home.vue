<script>
import * as echarts from 'echarts';

export default {
    name: "Home",
    data() {
        return {
            imgUrl: require('../assets/my_head.png'),
            value: new Date(),
            tableData: [{
                date: '2023-05-23',
                name: '客户7',
                address: '上海市生物化工科技有限公司'
            }, {
                date: '2023-05-22',
                name: '客户6',
                address: '上海市生物化工科技有限公司'
            }, {
                date: '2023-05-14',
                name: '客户5',
                address: '上海市生物化工科技有限公司'
            }, {
                date: '2023-05-10',
                name: '客户4',
                address: '上海市生物化工科技有限公司'
            }, {
                date: '2023-05-08',
                name: '客户3',
                address: '上海市生物化工科技有限公司'
            }, {
                date: '2023-05-06',
                name: '客户2',
                address: '上海市生物化工科技有限公司'
            }, {
                date: '2023-05-01',
                name: '客户1',
                address: '上海市生物化工科技有限公司'
            }],
            countData: [
                {
                    name: '成交订单/个',
                    value: 1793,
                    icon: 'success',
                    color: '#2ec7c9'
                },
                {
                    name: '订单总数/个',
                    value: 2323,
                    icon: 'star-on',
                    color: '#ffb980'
                },
                {
                    name: '生产总量/批',
                    value: 1242,
                    icon: 's-goods',
                    color: '#5ab1ef'
                },
                {
                    name: '销售总额/万元',
                    value: 2522,
                    icon: 'success',
                    color: '#2ec7c9'
                },
                {
                    name: '库存水平',
                    value: 1200,
                    icon: 'star-on',
                    color: '#ffb980'
                },
                {
                    name: '总用户数',
                    value: 75,
                    icon: 's-goods',
                    color: '#5ab1ef'
                }
            ]
        }
    }, methods: {
        //柱状图
        initBarEcharts() {
            // 新建一个promise对象
            let p = new Promise((resolve) => {
                resolve()
            })
            //然后异步执行echarts的初始化函数
            p.then(() => {
                //	此dom为echarts图标展示dom
                let myChart = echarts.init(this.$refs.barEcharts)
                let option = {
                    title: {
                        text: '热门产品销售表'
                    },
                    tooltip: {},
                    legend: {
                        data: ['本月销量/批', '预期销量/批']
                    },
                    xAxis: {
                        data: ['抗生素', '降压药', '抗癌药物', '抗抑郁药', '降血脂药', '免疫调节剂']
                    },
                    yAxis: {},
                    series: [
                        {
                            name: '本月销量/批',
                            type: 'bar',
                            data: [5, 20, 36, 10, 10, 20]
                        },
                        {
                            name: '预期销量/批',
                            type: 'bar',
                            data: [10, 18, 34, 8, 12, 21]
                        }
                    ]
                }
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            })
        },
        //饼图
        initPieEcharts() {
            let p = new Promise((resolve) => {
                resolve()
            })
            //然后异步执行echarts的初始化函数
            p.then(() => {
                let myChart = echarts.init(this.$refs.pieEcharts);
                let option = {
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        top: '0%',
                        left: 'left'
                    },
                    series: [
                        {
                            name: '订单信息',
                            type: 'pie',
                            radius: ['20%', '65%'],
                            avoidLabelOverlap: false,
                            label: {
                                show: false,
                                position: 'left'
                            },
                            labelLine: {
                                show: false,
                            },
                            data: [
                                { value: 1048, name: '成交订单量' },
                                { value: 735, name: '退款订单量' },
                                { value: 580, name: '浏览量' },
                                { value: 484, name: '加购量' },
                                { value: 300, name: '预购量' }
                            ]
                        }
                    ]
                }
                myChart.setOption(option);
            })
        }
    }
}
</script>

<template>
    <div>
        <el-row :gutter="20">
            <el-col :span="8">
                <div class="grid-content bg-purple">
                    <!-- 首页user信息 -->
                    <el-card shadow='hover'>
                        <div class="userCard">
                            <el-avatar :size="150" :src=imgUrl></el-avatar>
                            <div class="userInfo">
                                <p class="important-font">Admin</p>
                                <p class="secondary-font">管理员</p>
                            </div>
                        </div>
                        <div class="login-info">
                            <p>上次登录时间: 2023/06/16 12:22</p>
                        </div>
                    </el-card>
                    <!-- 首页表格 -->
                    <el-card shadow='hover' class="tableInfo">
                        <div slot="header">
                            <span class="important-font">客户信息</span>
                        </div>
                        <div>
                            <el-table :data="tableData" stripe border height="450px" style="width: 100%">
                                <el-table-column prop="date" label="日期" width="120">
                                </el-table-column>
                                <el-table-column prop="name" label="姓名" width="80">
                                </el-table-column>
                                <el-table-column prop="address" label="地址">
                                </el-table-column>
                            </el-table>
                        </div>
                    </el-card>
                </div>
                <div class="num graph">
                    <el-card style="width: 100%;height: 265px;marginRight: 1%">
                        <div style="width: 100%;height: 265px;" ref="pieEcharts">{{ initPieEcharts() }}</div>
                    </el-card>
                </div>
            </el-col>
            <el-col :span="16">
                <!-- 六个订单信息 -->
                <div class="num">
                    <el-card shadow='hover' v-for="item in countData" :key="item.name"
                        :body-style="{ display: 'flex', padding: 0, }" style="width: 250px ; margin-top: 5px"
                        class="OrderCard">
                        <i class="icon" :class="'el-icon-' + item.icon" :style="{ background: item.color }"></i>
                        <div style="margin: auto; text-align: center;">
                            <p class="important-font">{{ item.value }}</p>
                            <p class="secondary-font">{{ item.name }}</p>
                        </div>
                    </el-card>
                </div>
                <!-- 柱状图 -->
                <el-card style="height: 280px">
                    <div style="height:280px;" ref="barEcharts">{{ initBarEcharts() }}</div>
                </el-card>
                <!--日历-->
                <el-card style="width:100%;height: 560px;margin-top: 5px">
                    <div style="height: 560px"><el-calendar v-model="value"></el-calendar></div>
                </el-card>
            </el-col>
        </el-row>
    </div>
</template>


<style scoped>
.el-card__body {
    padding: 10px;
}

.userCard {
    height: 180px;
    display: flex;
    border-bottom: 2px solid #DCDFE6;
    border-radius: 2px;
}

.userInfo {
    width: auto;
    padding: 6% 0 0 6%;
}

.important-font {
    font-weight: 900;
    font-size: 25px;
}

.secondary-font {
    color: #909399;
}

.login-info {
    height: 40px;
    text-align: left;
    margin-top: 15px;
    color: #909399;
}

.tableInfo {
    margin: 20px 0 0 0;
}

.OrderCard {
    margin: 0 0 30px 30px;
    border: #DCDFE6 1px solid;
    border-radius: 10px;
}

.OrderCard i {
    width: 30%;
    line-height: 120px;
    font-size: 30px;
    color: #fff
}

.OrderCard div {
    width: 300px;
}

.el-card {
    border: none;
}

.num {
    display: flex;
    flex-wrap: wrap;
}

.graph {
    margin: 15px 0 0 0;
}

.el-calendar {
    height: 265px;
}
</style>