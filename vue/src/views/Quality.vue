<script lang="js">

import qualitydata from '../api/qualitydata';

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
            progressVisible: false,
            progressInfo: "",
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

            this.orderList = qualitydata;
            this.total = qualitydata.length;

            // this.orderList = [
            //     {
            //         quality_id: '0',
            //         quality_name: '化工配件',
            //         quality_num: '341414131',
            //         quality_photo: require('../assets/my_head.png'),
            //         quality_number: '224342/224343',
            //         quality_company: 'space-x',
            //         quality_person: '马斯克',
            //         quality_create_time: '2023-05-30 09:30:00',
            //         quality_status: '0',
            //         quality_detail: '化工设备。指主要作用部件是静止的或者只有很少运动的机械，如各种容器（槽、罐、釜等）、普通窑、塔器、反应器、换热器、普通干燥器、蒸发器，反应炉、电解槽、结晶设备、传质设备、吸附设备、流态化设备、普通分离设备以及离子交换设备等。化工机械的划分是不严格的，一些流体输送机械（如泵、风机和压缩机等）在化工部门常被称作化工机械，但同时它们又是各种工业生产中的通用机械。近代化工机械的设计和制造，除了依赖于机械工程和材料工程的发展外，还与化学工艺和化学工程的发展紧密相关。化工机械主要研究机械的耐腐蚀等，还有电化学等范围。'
            //     },
            // ]
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
        showProgressBox(orderList, quality_id) {
            // const { data: result } = await this.$http.get('http://localhost:3000')
            // if (result.meta.status !== 200) {
            //   return this.$message.error('获取物流进度失败')
            // }
            this.progressVisible = true
            this.progressInfo = orderList[quality_id].quality_detail
        },
    }
}
</script>

<template>
    <div>
        <!-- 面包屑导航区域 -->
        <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
            <el-breadcrumb-item>质量管理</el-breadcrumb-item>
        </el-breadcrumb>
        <div style="margin: 10px 0">
            <el-input style="width: 200px" placeholder="请输入名称" suffix-icon="el-icon-search"></el-input>
            <el-button class="ml-5" type="primary">搜索</el-button>
            <el-button type="warning">重置</el-button>
        </div>
        <!-- 卡片视图区域 -->
        <el-card>
            <el-table :data="orderList" border stripe>
                <el-table-column label="ID" type="index"></el-table-column>
                <el-table-column label="产品名称" prop="quality_name"></el-table-column>
                <el-table-column label="产品序列号" prop="quality_num"></el-table-column>
                <el-table-column label="产品图片" prop="quality_photo">
                    <template slot-scope="scope">
                        <el-popover placement="top-start" title="" trigger="hover">
                            <img :src="scope.row.quality_photo" alt="" style="width: 150px;height: 150px">
                            <img slot="reference" :src="scope.row.quality_photo" style="width: 30px;height: 30px">
                        </el-popover>
                    </template>
                </el-table-column>
                <el-table-column label="产品合格量/总产品数量" prop="quality_number" min-width="100%"></el-table-column>
                <!-- <el-table-column label="产品合格量" prop="material_number"></el-table-column> -->
                <el-table-column label="生产商家" prop="quality_company" min-width="90%"></el-table-column>
                <el-table-column label="质检人" prop="quality_person"></el-table-column>
                <el-table-column label="质检时间" prop="quality_create_time" min-width="90%">
                    <template slot-scope="scope">
                        {{ scope.row.quality_create_time | dateFormat }}
                    </template>
                </el-table-column>
                <el-table-column label="合格率" prop="quality_rate">
                    <template slot-scope="scope">
                        <el-tag type="success">{{ scope.row.quality_rate }}</el-tag>
                    </template>
                </el-table-column>
                <el-table-column label="详细信息">
                    <template slot-scope="scope">
                        <!-- <el-button icon="el-icon-edit" size="mini" type="primary" @click="showBox"></el-button> -->
                        <el-button icon="el-icon-location" size="mini" type="success"
                            @click="showProgressBox(orderList, scope.row.quality_id)"></el-button>
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
        <!-- 内容主体区域 -->
        <!-- 底部区域 -->
        <!-- <el-dialog title="修改信息" :visible.sync="addressVisible" width="30%" @close="addressDialogClosed">
            
            <span slot="footer" class="dialog-footer">
                <el-button @click="addressVisible = false">取 消</el-button>
                <el-button type="primary" @click="addressVisible = false">确 定</el-button>
            </span>
        </el-dialog> -->
        <el-dialog title="详细信息" :visible.sync="progressVisible" width="30%">
            <!-- 详情信息 -->
            <el-card>
                {{ progressInfo }}
            </el-card>
        </el-dialog>
    </div>
</template>

<style></style>