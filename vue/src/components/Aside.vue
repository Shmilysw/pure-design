<template>
    <el-menu :default-openeds="opens" style="min-height: 100%; overflow-x: hidden" background-color="rgb(48, 65, 86)"
        text-color="#fff" active-text-color="#ffd04b" :collapse-transition="false" :collapse="isCollapse" router>
        <div style="height: 60px; line-height: 60px;">
            <img src="../assets/icon.jpg" alt="" style="width: 30px; height: 30px; position: relative; top: 10px;">
            <b style="color: white; font-size: 15px;" v-show="logoTextShow">制药产业数智化管理平台</b>
        </div>
        <div v-for="item in menus" :key="item.id">
            <div v-if="item.path">
                <el-menu-item :index="item.path">
                    <i :class="item.icon"></i>
                    <span slot="title">{{ item.name }}</span>
                </el-menu-item>
            </div>
            <div v-else>
                <el-submenu :index="item.id + ''">
                    <template slot="title">
                        <i :class="item.icon"></i>
                        <span slot="title">{{ item.name }}</span>
                    </template>
                    <div v-for="subItem in item.children" :key="subItem.id">
                        <el-menu-item :index="subItem.path">
                            <i :class="subItem.icon"></i>
                            <span slot="title">{{ subItem.name }}</span>
                        </el-menu-item>
                    </div>
                </el-submenu>
            </div>
        </div>
    </el-menu>
</template>

<script>
import menus from "@/views/Menu";

export default {
    name: "Aside",
    props: {
        isCollapse: Boolean,
        logoTextShow: Boolean
    },
    data() {
        return {
            menus: localStorage.getItem("menus") ? JSON.parse(localStorage.getItem("menus")) : [],
            // 控制左边菜单展示的！
            // opens: localStorage.getItem("menus") ? JSON.parse(localStorage.getItem("menus")).map(v => v.id + '') : []
        }
    },
}
</script>

<style>
.el-menu-item.is-active {
    background-color: rgb(38, 52, 69) !important;
}

.el-menu-item:hover {
    background-color: rgb(38, 52, 69) !important;
}

.el-submenu__title:hover {
    background-color: rgb(38, 52, 69) !important;
}

/*解决收缩菜单文字不消失问题*/
.el-menu--collapse span {
    visibility: hidden;
}
</style>
