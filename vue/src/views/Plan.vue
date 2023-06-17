<template>
    <div class="fullCalendarStyle">
        <FullCalendar :options="calendarOptions" ref="fullCalendar" />
    </div>
</template>

<script>
import FullCalendar from '@fullcalendar/vue'
import dayGridPlugin from '@fullcalendar/daygrid'
import timeGridPlugin from '@fullcalendar/timegrid'
import interactionPlugin from '@fullcalendar/interaction'
import plandata from '../api/plandata'

export default {
    components: {
        FullCalendar // make the <FullCalendar> tag available
    },
    data() {
        return {
            calendarOptions: {
                plugins: [dayGridPlugin, timeGridPlugin, interactionPlugin], // 需要使用的插件在这里注册了才能用 interactionPlugin为日历互动事件比如点击某一天
                initialView: 'dayGridMonth',
                weekends: true,
                locale: 'zh-cn', // 语言
                height: '100%',
                editable: true, // 是否可以拖
                dayMaxEvents: true, // 事件过多时隐藏
                buttonText: { month: '月', week: '周', day: '日', today: '今天' },  // 自定义按钮文字
                customButtons: {   //给按钮添加事件
                    prev: {
                        text: "PREV",
                        click: this.changeReduce,
                    }, next: { // this overrides the next button
                        text: "NEXT",
                        click: this.changeAdd,
                    }, today: { // this overrides the next button
                        text: "今天",
                        click: this.changeToday,
                    }
                },
                headerToolbar: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'dayGridMonth,timeGridWeek,timeGridDay'
                },
                events: plandata
            }
        }
    },
    methods: {
        changeReduce() {
            let calendarApi = this.$refs.fullCalendar.getApi();
            calendarApi.prev();
            let test = calendarApi.getCurrentData().viewTitle;
            console.log(test);
        },
        changeAdd() {
            let calendarApi = this.$refs.fullCalendar.getApi();
            calendarApi.next();
            let test = calendarApi.getCurrentData().viewTitle;
            console.log(test);
        },
        changeToday() {
            let calendarApi = this.$refs.fullCalendar.getApi();
            calendarApi.today();
            let test = calendarApi.getCurrentData().viewTitle;
            console.log(test);
        }
    }
}
</script>

<style scoped>
.fullCalendarStyle {
    padding: 20px;
    box-sizing: border-box;
    background: #fff;
    width: 100%;
    height: 93.5vh;
}
</style>

