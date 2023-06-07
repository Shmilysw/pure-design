<template>
    <div>
        <!-- 面包屑导航区域 -->
        <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
            <el-breadcrumb-item>订单管理</el-breadcrumb-item>
            <!-- <el-breadcrumb-item>订单列表</el-breadcrumb-item> -->
        </el-breadcrumb>
        <div style="margin: 10px 0">
            <el-input style="width: 200px" placeholder="请输入名称" suffix-icon="el-icon-search" v-model="username"></el-input>
            <!-- <el-input style="width: 200px" placeholder="请输入邮箱" suffix-icon="el-icon-message" class="ml-5"
                v-model="email"></el-input>
            <el-input style="width: 200px" placeholder="请输入地址" suffix-icon="el-icon-position" class="ml-5"
                v-model="address"></el-input> -->
            <el-button class="ml-5" type="primary" @click="load">搜索</el-button>
            <el-button type="warning" @click="reset">重置</el-button>
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
                <el-table-column label="订单编号" prop="order_number"></el-table-column>
                <el-table-column label="商品名称" prop="order_name"></el-table-column>
                <el-table-column label="订单价格" prop="order_price"></el-table-column>
                <el-table-column label="是否付款" prop="pay_status">
                    <template slot-scope="scope">
                        <el-tag type="success" v-if="scope.row.pay_status === '1'">已付款</el-tag>
                        <el-tag type="danger" v-else>未付款</el-tag>
                    </template>
                </el-table-column>
                <el-table-column label="是否发货" prop="is_send"></el-table-column>
                <el-table-column label="下单时间" prop="create_time">
                    <template slot-scope="scope">
                        {{ scope.row.create_time | dateFormat }}
                    </template>
                </el-table-column>
                <el-table-column label="操作">
                    <template>
                        <!-- <el-button icon="el-icon-edit" size="mini" type="primary" @click="showBox"></el-button> -->
                        <el-button icon="el-icon-location" size="mini" type="success" @click="showProgressBox"></el-button>
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
        <el-dialog title="修改地址" :visible.sync="addressVisible" width="30%" @close="addressDialogClosed">
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
        <el-dialog title="物流进度" :visible.sync="progressVisible" width="50%">
            <!-- 内容主体区域 时间线 -->
            <el-timeline>
                <el-timeline-item v-for="(   activity, index   ) in    progressInfo   " :key="index"
                    :timestamp="activity.time">
                    {{ activity.context }}
                </el-timeline-item>
            </el-timeline>
        </el-dialog>
    </div>
</template>

<script>
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
            progressInfo: [],
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
                    order_number: '1371473147198471491',
                    order_name: '化工配件',
                    order_price: '1200￥',
                    pay_status: '1',
                    is_send: '否',
                    create_time: '2023-05-30 09:30:00'
                },
                {
                    order_number: '233414141313131313',
                    order_name: '无机化工品',
                    order_price: '1500￥',
                    pay_status: '1',
                    is_send: '是',
                    create_time: '2023-04-20 18:30:00'
                },
                {
                    order_number: '321307941414819408',
                    order_name: '有机化学品',
                    order_price: '2500￥',
                    pay_status: '0',
                    is_send: '否',
                    create_time: '2023-04-22 07:29:00'
                },
                {
                    order_number: '34354141412414144',
                    order_name: '橡胶',
                    order_price: '3000￥',
                    pay_status: '0',
                    is_send: '否',
                    create_time: '2023-03-17 15:02:22'
                },
                {
                    order_number: '36848242472492478',
                    order_name: '涂料',
                    order_price: '7700￥',
                    pay_status: '1',
                    is_send: '否',
                    create_time: '2023-01-22 12:20:00'
                },
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
        showProgressBox() {
            // const { data: result } = await this.$http.get('http://localhost:3000')
            // if (result.meta.status !== 200) {
            //   return this.$message.error('获取物流进度失败')
            // }
            this.progressInfo = this.db
            this.progressVisible = true
            console.log(this.progressInfo)
        },
        load() {
            // 模拟
            this.request.get("/user/page", {
                params: {
                    pageNum: this.pageNum,
                    pageSize: this.pageSize,
                    username: this.username,
                    email: this.email,
                    address: this.address,
                }
            }).then(res => {

                this.tableData = res.data.records
                this.total = res.data.total

            })

            this.request.get("/role").then(res => {
                this.roles = res.data
            })
        },
        reset() {
            this.username = ""
            this.email = ""
            this.address = ""
            this.load()
        },
    }
}
</script>

<style scoped>
.el-cascader {
    width: 100%;
}
</style>

