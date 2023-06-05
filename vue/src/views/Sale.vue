<script>
import * as echarts from "echarts";

export default {
    name: "Sale",
    data() {
        return {

        }
    },
    mounted() {
        var lineOption = {
            title: {
                text: '折线图'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['化学原料', '化学纤维', '化学制品', '橡胶塑料', '石油化工']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            toolbox: {
                feature: {
                    saveAsImage: {}
                }
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    name: '化学原料',
                    type: 'line',
                    stack: 'Total',
                    data: [120, 132, 101, 134, 90, 230, 210],
                    smooth: true
                },
                {
                    name: '化学纤维',
                    type: 'line',
                    stack: 'Total',
                    data: [220, 182, 191, 234, 290, 330, 310],
                    smooth: true
                },
                {
                    name: '化学制品',
                    type: 'line',
                    stack: 'Total',
                    data: [150, 232, 201, 154, 190, 330, 410],
                    smooth: true
                },
                {
                    name: '橡胶塑料',
                    type: 'line',
                    stack: 'Total',
                    data: [320, 332, 301, 334, 390, 330, 320],
                    smooth: true
                },
                {
                    name: '石油化工',
                    type: 'line',
                    stack: 'Total',
                    data: [820, 932, 901, 934, 1290, 1330, 1320],
                    smooth: true
                }
            ],
        };

        var radarOption = {
            title: {
                text: '雷达图'
            },
            legend: {
                data: ['预估销量', '实际销量']
            },
            radar: {
                // shape: 'circle',
                indicator: [
                    { name: '总体销量', max: 100000 },
                    { name: '化学原料', max: 16000 },
                    { name: '化学纤维', max: 30000 },
                    { name: '化学制品', max: 38000 },
                    { name: '橡胶塑料', max: 52000 },
                    { name: '石油化工', max: 25000 }
                ]
            },
            series: [
                {
                    name: 'Budget vs spending',
                    type: 'radar',
                    stack: 'Total',
                    data: [
                        {
                            value: [94200, 3000, 20000, 35000, 50000, 18000],
                            name: '预估销量',
                        },
                        {
                            value: [95000, 14000, 28000, 26000, 42000, 21000],
                            name: '实际销量'
                        }
                    ]
                }
            ]
        };

        var chartDom = document.getElementById('line');
        var myChart = echarts.init(chartDom);

        var chartDom1 = document.getElementById('radar');
        var myChart1 = echarts.init(chartDom1);

        this.request.get("/echarts/members").then(res => {
            // 填空
            lineOption.series.data = res.data
            myChart.setOption(lineOption);
            radarOption.series.data = res.data
            myChart1.setOption(radarOption);
        })
    }
}
</script >

</script>

<template>
    <div>
        <el-row :gutter="10" style="margin-bottom: 60px">
            <el-col :span="6">
                <el-card style="color: #409EFF">
                    <div><i class="el-icon-user-solid" /> 用户总数</div>
                    <div style="padding: 10px 0; text-align: center; font-weight: bold">
                        100
                    </div>
                </el-card>
            </el-col>
            <el-col :span="6">
                <el-card style="color: #F56C6C">
                    <div><i class="el-icon-money" /> 销售总量</div>
                    <div style="padding: 10px 0; text-align: center; font-weight: bold">
                        ￥ 1000000
                    </div>
                </el-card>
            </el-col>
            <el-col :span="6">
                <el-card style="color: #67C23A">
                    <div><i class="el-icon-bank-card" /> 收益总额</div>
                    <div style="padding: 10px 0; text-align: center; font-weight: bold">
                        ￥ 300000
                    </div>
                </el-card>
            </el-col>
            <el-col :span="6">
                <el-card style="color: #E6A23C">
                    <div><i class="el-icon-s-shop" /> 门店总数</div>
                    <div style="padding: 10px 0; text-align: center; font-weight: bold">
                        20
                    </div>
                </el-card>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="12">
                <div id="line" style="width: 800px; height: 450px"></div>
            </el-col>
            <el-col :span="12">
                <div id="radar" style="width: 800px; height: 400px"></div>
            </el-col>
        </el-row>
    </div>
</template>

<style scoped></style>