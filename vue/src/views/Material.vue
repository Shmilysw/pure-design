<script lang="js">

import cityData from '../api/citydata.js'
import db from '../api/db.js'
export default {
    data() {
        return {
            queryInfo: {
                query: '',
                pagenum: 1,
                pagesize: 10
            },
            total: 0,
            orderList: [],
            addressVisible: false,
            addressForm: {
                address1: [],
                address2: ''
            },
            addressFormRules: {
                address1: [
                    { required: true, message: '请选择省市区县', trigger: 'blur' }
                ],
                address2: [
                    { required: true, message: '请输入详细地址', trigger: 'blur' }
                ]
            },
            cityData,
            progressVisible: false,
            progressInfo: "",
            db
        }
    },
    created() {
        this.getOrderList()
    },
    methods: {
        getOrderList() {
            // 获取接入数据
            // const { data: result } = await this.$http.get('orders', {
            //     params: this.queryInfo
            // })
            // console.log(params);
            // if (result.meta.status !== 200) {
            //     return this.$message.error('获取订单列表失败')
            // }
            // console.log(result)
            // this.total = result.data.total
            // this.orderList = result.data.goods
            // 直接模拟数据
            this.total = 10;
            this.orderList = [
                {
                    material_id: '0',
                    material_name: '化工配件',
                    material_photo: require('../assets/my_head.png'),
                    material_number: '224342',
                    material_company: 'space-x',
                    material_person: '马斯克',
                    material_create_time: '2023-05-30 09:30:00',
                    material_status: '0',
                    material_detail: '化工设备。指主要作用部件是静止的或者只有很少运动的机械，如各种容器（槽、罐、釜等）、普通窑、塔器、反应器、换热器、普通干燥器、蒸发器，反应炉、电解槽、结晶设备、传质设备、吸附设备、流态化设备、普通分离设备以及离子交换设备等。化工机械的划分是不严格的，一些流体输送机械（如泵、风机和压缩机等）在化工部门常被称作化工机械，但同时它们又是各种工业生产中的通用机械。近代化工机械的设计和制造，除了依赖于机械工程和材料工程的发展外，还与化学工艺和化学工程的发展紧密相关。化工机械主要研究机械的耐腐蚀等，还有电化学等范围。'
                },
                {
                    material_id: '1',
                    material_name: '有机化学品',
                    material_photo: require('../assets/my_head.png'),
                    material_number: '423532',
                    material_company: '特斯拉',
                    material_person: '马斯克',
                    material_create_time: '2023-05-22 09:30:00',
                    material_status: '1',
                    material_detail: '有机化学是研究有机化合物及有机物质的结构、性质、反应的学科，是化学中极重要的一个分支。有机化学研究的对象是以不同形式包含碳原子的物质，又称为碳化合物的化学。有关有机化合物或有机物质结构的研究包括用光谱、核磁共振、红外光谱、紫外光谱、质谱或其他物理或化学方式来确认其组成的元素、组成方式、实验式及化学式。'
                },
                // {
                //     order_name: '无机化工品',
                //     order_photo: '233414141313131313',
                //     order_price: '1500￥',
                //     pay_status: '1',
                //     is_send: '是',
                //     create_time: '2023-04-20 18:30:00'
                // },
                // {
                //     order_name: '有机化学品',
                //     order_photo: '321307941414819408',
                //     order_price: '2500￥',
                //     pay_status: '0',
                //     is_send: '否',
                //     create_time: '2023-04-22 07:29:00'
                // },
                // {
                //     order_name: '橡胶',
                //     order_photo: '34354141412414144',
                //     order_price: '3000￥',
                //     pay_status: '0',
                //     is_send: '否',
                //     create_time: '2023-03-17 15:02:22'
                // },
                // {
                //     order_name: '涂料',
                //     order_photo: '36848242472492478',
                //     order_price: '7700￥',
                //     pay_status: '1',
                //     is_send: '否',
                //     create_time: '2023-01-22 12:20:00'
                // },
            ]
        },
        handleSizeChange(newSize) {
            this.queryInfo.pagesize = newSize
            this.getOrderList()
        },
        handleCurrentChange(newPage) {
            this.queryInfo.pagenum = newPage
            this.getOrderList()
        },
        // 展示修改地址的对话框
        showBox() {
            this.addressVisible = true
        },
        addressDialogClosed() {
            this.$refs.addressFormRef.resetFields()
        },
        showProgressBox(orderList, material_id) {
            // const { data: result } = await this.$http.get('http://localhost:3000')
            // if (result.meta.status !== 200) {
            //   return this.$message.error('获取物流进度失败')
            // }
            this.progressVisible = true
            // console.log(this.progressInfo)
            // console.log(material_id);
            this.progressInfo = orderList[material_id].material_detail
            // console.log(this.progressInfo);
        },
    }
}
</script>

<template>
    <div>
        <!-- 面包屑导航区域 -->
        <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
            <el-breadcrumb-item>材料管理</el-breadcrumb-item>
            <!-- <el-breadcrumb-item>订单列表</el-breadcrumb-item> -->
        </el-breadcrumb>
        <div style="margin: 10px 0">
            <el-input style="width: 200px" placeholder="请输入名称" suffix-icon="el-icon-search"></el-input>
            <!-- <el-input style="width: 200px" placeholder="请输入邮箱" suffix-icon="el-icon-message" class="ml-5"
                v-model="email"></el-input>
            <el-input style="width: 200px" placeholder="请输入地址" suffix-icon="el-icon-position" class="ml-5"
                v-model="address"></el-input> -->
            <el-button class="ml-5" type="primary">搜索</el-button>
            <el-button type="warning">重置</el-button>
        </div>
        <!-- 卡片视图区域 -->
        <el-card>
            <!-- <el-row>
                <el-col :span="8">
                    <el-input placeholder="请输入内容">
                        <el-button slot="append" icon="el-icon-search"></el-button>
                    </el-input>
                </el-col>
            </el-row> -->
            <!-- 订单列表数据 -->
            <el-table :data="orderList" border stripe>
                <el-table-column label="ID" type="index"></el-table-column>
                <el-table-column label="材料名称" prop="material_name"></el-table-column>
                <el-table-column label="材料图片" prop="material_photo">
                    <template slot-scope="scope">
                        <el-popover placement="top-start" title="" trigger="hover">
                            <!-- <img src="https://s1.hdslb.com/bfs/static/laputa-home/client/assets/load-error.685235d2.png"
                                alt="" style="width: 150px;height: 150px"> -->
                            <img :src="scope.row.material_photo" alt="" style="width: 150px;height: 150px">
                            <img slot="reference" :src="scope.row.material_photo" style="width: 30px;height: 30px">
                        </el-popover>
                    </template>
                </el-table-column>
                <el-table-column label="库存数量" prop="material_number"></el-table-column>
                <el-table-column label="原产商家" prop="material_company"></el-table-column>
                <el-table-column label="负责人" prop="material_person"></el-table-column>
                <el-table-column label="下单时间" prop="material_create_time">
                    <template slot-scope="scope">
                        {{ scope.row.material_create_time | dateFormat }}
                    </template>
                </el-table-column>
                <el-table-column label="补货提醒" prop="material_status">
                    <template slot-scope="scope">
                        <el-tag type="success" v-if="scope.row.material_status === '1'">需要补货</el-tag>
                        <el-tag type="danger" v-else>无需补货</el-tag>
                    </template>
                </el-table-column>
                <el-table-column label="操作">
                    <template slot-scope="scope">
                        <el-button icon="el-icon-edit" size="mini" type="primary" @click="showBox"></el-button>
                        <el-button icon="el-icon-location" size="mini" type="success"
                            @click="showProgressBox(orderList, scope.row.material_id)"></el-button>
                    </template>
                </el-table-column>
            </el-table>
            <!-- 分页区域 -->
            <div style="padding: 10px 0;display: flex;justify-content: center;">
                <el-pagination @size-change="handleSizeChange" @current-change="handleCurrentChange"
                    :current-page="queryInfo.pagenum" :page-sizes="[5, 10, 15, 20]" :page-size="queryInfo.pagesize"
                    layout="total, sizes, prev, pager, next, jumper" :total="total" background>
                </el-pagination>
            </div>
        </el-card>
        <!-- 修改修改地址的对话框 -->
        <el-dialog title="修改信息" :visible.sync="addressVisible" width="30%" @close="addressDialogClosed">
            <!-- 内容主体区域 -->
            <el-form :model="addressForm" :rules="addressFormRules" ref="addressFormRef" label-width="100px">
                <el-form-item label="省市区/县" prop="address1">
                    <el-cascader :options="cityData" v-model="addressForm.address1"></el-cascader>
                </el-form-item>
                <el-form-item label="详细地址" prop="address2">
                    <el-input v-model="addressForm.address2"></el-input>
                </el-form-item>
            </el-form>
            <!-- 底部区域 -->
            <span slot="footer" class="dialog-footer">
                <el-button @click="addressVisible = false">取 消</el-button>
                <el-button type="primary" @click="addressVisible = false">确 定</el-button>
            </span>
        </el-dialog>

        <!-- 展示物流进度的对话框 -->
        <el-dialog title="详细信息" :visible.sync="progressVisible" width="30%">
            <!-- 详情信息 -->
            <el-card>
                {{ progressInfo }}
            </el-card>
        </el-dialog>
    </div>
</template>

<style></style>