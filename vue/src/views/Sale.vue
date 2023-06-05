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
                text: 'Stacked Line'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['Email', 'Union Ads', 'Video Ads', 'Direct', 'Search Engine']
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
                    name: 'Email',
                    type: 'line',
                    stack: 'Total',
                    data: [120, 132, 101, 134, 90, 230, 210],
                    smooth: true
                },
                {
                    name: 'Union Ads',
                    type: 'line',
                    stack: 'Total',
                    data: [220, 182, 191, 234, 290, 330, 310],
                    smooth: true
                },
                {
                    name: 'Video Ads',
                    type: 'line',
                    stack: 'Total',
                    data: [150, 232, 201, 154, 190, 330, 410],
                    smooth: true
                },
                {
                    name: 'Direct',
                    type: 'line',
                    stack: 'Total',
                    data: [320, 332, 301, 334, 390, 330, 320],
                    smooth: true
                },
                {
                    name: 'Search Engine',
                    type: 'line',
                    stack: 'Total',
                    data: [820, 932, 901, 934, 1290, 1330, 1320],
                    smooth: true
                }
            ],
        };

        var radarOption = {
            title: {
                text: 'Basic Radar Chart'
            },
            legend: {
                data: ['Allocated Budget', 'Actual Spending']
            },
            radar: {
                // shape: 'circle',
                indicator: [
                    { name: 'Sales', max: 6500 },
                    { name: 'Administration', max: 16000 },
                    { name: 'Information Technology', max: 30000 },
                    { name: 'Customer Support', max: 38000 },
                    { name: 'Development', max: 52000 },
                    { name: 'Marketing', max: 25000 }
                ]
            },
            series: [
                {
                    name: 'Budget vs spending',
                    type: 'radar',
                    data: [
                        {
                            value: [4200, 3000, 20000, 35000, 50000, 18000],
                            name: 'Allocated Budget'
                        },
                        {
                            value: [5000, 14000, 28000, 26000, 42000, 21000],
                            name: 'Actual Spending'
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