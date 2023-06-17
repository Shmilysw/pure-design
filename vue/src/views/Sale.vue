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
                text: '单位：吨'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['化学原料和试剂', '活性药物成分', '辅助药物成分', '包装材料', '溶剂和溶剂系统']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: ['2022/12', '2023/01', '2023/02', '2023/03', '2023/04', '2023/05', '2023/06']
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    name: '化学原料和试剂',
                    type: 'line',
                    // stack: 'Total',
                    data: [52, 53, 70, 63, 59, 103, 91],
                    smooth: true
                },
                {
                    name: '活性药物成分',
                    type: 'line',
                    // stack: 'Total',
                    data: [22, 18, 19, 23, 29, 36, 31],
                    smooth: true
                },
                {
                    name: '辅助药物成分',
                    type: 'line',
                    // stack: 'Total',
                    data: [15, 23, 20, 15, 19, 43, 41],
                    smooth: true
                },
                {
                    name: '包装材料',
                    type: 'line',
                    // stack: 'Total',
                    data: [32, 33, 31, 34, 30, 33, 32],
                    smooth: true
                },
                {
                    name: '溶剂和溶剂系统',
                    type: 'line',
                    // stack: 'Total',
                    data: [22, 32, 31, 34, 29, 34, 12],
                    smooth: true
                }
            ],
        };

        // var radarOption = {
        //     title: {
        //         text: ''
        //     },
        //     legend: {
        //         data: ['预估销量', '实际销量']
        //     },
        //     radar: {
        //         // shape: 'circle',
        //         indicator: [
        //             { name: '总量', max: 100000 },
        //             { name: '化学原料', max: 16000 },
        //             { name: '化学纤维', max: 30000 },
        //             { name: '化学制品', max: 38000 },
        //             { name: '橡胶塑料', max: 52000 },
        //             { name: '石油化工', max: 25000 }
        //         ]
        //     },
        //     series: [
        //         {
        //             name: 'Budget vs spending',
        //             type: 'radar',
        //             stack: 'Total',
        //             data: [
        //                 {
        //                     value: [94200, 3000, 20000, 35000, 50000, 18000],
        //                     name: '预估销量',
        //                 },
        //                 {
        //                     value: [95000, 14000, 28000, 26000, 42000, 21000],
        //                     name: '实际销量'
        //                 }
        //             ]
        //         }
        //     ]
        // };

        var chartDom = document.getElementById('line');
        var myChart = echarts.init(chartDom);

        // var chartDom1 = document.getElementById('radar');
        // var myChart1 = echarts.init(chartDom1);

        this.request.get("/echarts/members").then(res => {
            // 填空
            lineOption.series.data = res.data
            myChart.setOption(lineOption);
            // radarOption.series.data = res.data
            // myChart1.setOption(radarOption);
        })
    }
}
</script >

</script>

<template>
    <div>
        <el-row :gutter="10" style="margin-bottom: 30px">
            <el-col :span="6">
                <el-card style="color: #409EFF">
                    <div><i class="el-icon-user-solid" /> 工人总数</div>
                    <div style="padding: 10px 0; text-align: center; font-weight: bold; font-size: 20px;">
                        758
                    </div>
                </el-card>
            </el-col>
            <el-col :span="6">
                <el-card style="color: #F56C6C">
                    <div><i class="el-icon-money" /> 销售总量</div>
                    <div style="padding: 10px 0; text-align: center; font-weight: bold; font-size: 20px;">
                        ￥ 25223545
                    </div>
                </el-card>
            </el-col>
            <el-col :span="6">
                <el-card style="color: #67C23A">
                    <div><i class="el-icon-bank-card" /> 收益总额</div>
                    <div style="padding: 10px 0; text-align: center; font-weight: bold; font-size: 20px;">
                        ￥ 4304324
                    </div>
                </el-card>
            </el-col>
            <el-col :span="6">
                <el-card style="color: #000">
                    <div><i class="el-icon-s-shop" /> 工厂总数</div>
                    <div style="padding: 10px 0; text-align: center; font-weight: bold; font-size: 20px;">
                        27
                    </div>
                </el-card>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="12">
                <div id="line" style="width:1200px; height:480px"></div>
            </el-col>
        </el-row>
    </div>
</template>

<style scoped></style>