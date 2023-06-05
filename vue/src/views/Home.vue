<template>
    <div style="color: #666;font-size: 14px;">
        <div style="padding-bottom: 20px">
            <b>欢迎你！{{ user.nickname }}</b>
        </div>
        <dashbord></dashbord>
    </div>
</template>

<script>
import Dashbord from './Dashbord'
export default {
    name: "Home",
    components: {
        'dashbord': Dashbord,
    },
    data() {
        return {
            user: localStorage.getItem("user") ? JSON.parse(localStorage.getItem("user")) : {}
        }
    }
}
</script>