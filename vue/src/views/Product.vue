<script lang="js">
import * as echarts from "echarts";

export default {
    name: "Product",
    data() {
        return {

        }
    },
    mounted() {
        // 模拟数据
        // Generate data
        let category = [];
        // let dottedBase = + new Date();
        let lineData = [];
        let barData = [];

        for (let i = 0; i < 12; i++) {
            // let date = new Date((dottedBase += 3600 * 24 * 1000));
            // let month = (i + 1);
            let b = Math.random() * 200;
            let d = Math.random() * 200;
            barData.push(b + 50);
            lineData.push(d + b);
        }
        category.push(
            [2022, 5].join('-'),
            [2022, 6].join('-'),
            [2022, 7].join('-'),
            [2022, 8].join('-'),
            [2022, 9].join('-'),
            [2022, 10].join('-'),
            [2022, 11].join('-'),
            [2022, 12].join('-'),
            [2023, 1].join('-'),
            [2023, 2].join('-'),
            [2023, 3].join('-'),
            [2023, 4].join('-')
        );
        // option
        var option = {
            backgroundColor: '#0f375f',
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            legend: {
                data: ['预期生产', '实际生产'],
                textStyle: {
                    color: '#ccc'
                }
            },
            xAxis: {
                data: category,
                axisLine: {
                    lineStyle: {
                        color: '#ccc'
                    }
                }
            },
            yAxis: {
                splitLine: { show: false },
                axisLine: {
                    lineStyle: {
                        color: '#ccc'
                    }
                }
            },
            series: [
                {
                    name: '预期生产',
                    type: 'line',
                    smooth: true,
                    showAllSymbol: true,
                    symbol: 'emptyCircle',
                    symbolSize: 15,
                    data: lineData
                },
                {
                    name: '实际生产',
                    type: 'bar',
                    barWidth: 10,
                    itemStyle: {
                        borderRadius: 5,
                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
                            { offset: 0, color: '#14c8d4' },
                            { offset: 1, color: '#43eec6' }
                        ])
                    },
                    data: barData
                },
            ]
        };

        var chartDom = document.getElementById('main');
        var myChart = echarts.init(chartDom);

        this.request.get("/echarts/members").then(res => {
            // 填空
            option.series.data = res.data
            myChart.setOption(option);
        })
    }
}

</script>

<template>
    <div>
        <el-row :gutter="10" style="margin-bottom: 30px">
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
                <div id="main" style="width:1200px; height:480px"></div>
            </el-col>
        </el-row>
    </div>
</template>