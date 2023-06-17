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
                events: [{						// 展示数据
                    "title": "开会",
                    "date": "2023-06-01 08:00:00",
                    "color": 'red'
                },
                {
                    "title": "上班",
                    "start": "2023-06-01 09:00:00",
                    "end": "2023-06-01 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-01 12:00:00",
                    "end": "2023-06-01 14:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-01 14:00:00",
                    "end": "2023-06-01 18:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-01 18:00:00",
                    "end": "2023-06-01 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-02 08:00:00",
                    "end": "2023-06-02 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-02 12:00:00",
                    "end": "2023-06-02 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-02 14:00:00",
                    "end": "2023-06-02 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-02 18:00:00",
                    "end": "2023-06-02 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-05 08:00:00",
                    "end": "2023-06-05 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-05 12:00:00",
                    "end": "2023-06-05 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-05 14:00:00",
                    "end": "2023-06-05 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-05 18:00:00",
                    "end": "2023-06-05 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-06 08:00:00",
                    "end": "2023-06-06 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-06 12:00:00",
                    "end": "2023-06-06 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-06 14:00:00",
                    "end": "2023-06-06 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-06 18:00:00",
                    "end": "2023-06-06 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-07 08:00:00",
                    "end": "2023-06-07 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-07 12:00:00",
                    "end": "2023-06-07 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-07 14:00:00",
                    "end": "2023-06-07 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-07 18:00:00",
                    "end": "2023-06-07 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-08 08:00:00",
                    "end": "2023-06-08 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-08 12:00:00",
                    "end": "2023-06-08 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-08 14:00:00",
                    "end": "2023-06-08 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-08 18:00:00",
                    "end": "2023-06-08 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-09 08:00:00",
                    "end": "2023-06-09 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-09 12:00:00",
                    "end": "2023-06-09 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-09 14:00:00",
                    "end": "2023-06-09 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-09 18:00:00",
                    "end": "2023-06-09 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-12 08:00:00",
                    "end": "2023-06-12 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-12 12:00:00",
                    "end": "2023-06-12 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-12 14:00:00",
                    "end": "2023-06-12 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-12 18:00:00",
                    "end": "2023-06-12 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-13 08:00:00",
                    "end": "2023-06-13 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-13 12:00:00",
                    "end": "2023-06-13 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-13 14:00:00",
                    "end": "2023-06-13 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-13 18:00:00",
                    "end": "2023-06-13 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-14 08:00:00",
                    "end": "2023-06-14 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-14 12:00:00",
                    "end": "2023-06-14 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-14 14:00:00",
                    "end": "2023-06-14 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-14 18:00:00",
                    "end": "2023-06-14 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-15 08:00:00",
                    "end": "2023-06-15 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-15 12:00:00",
                    "end": "2023-06-15 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-15 14:00:00",
                    "end": "2023-06-15 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-15 18:00:00",
                    "end": "2023-06-15 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-16 08:00:00",
                    "end": "2023-06-16 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-16 12:00:00",
                    "end": "2023-06-16 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-16 14:00:00",
                    "end": "2023-06-16 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-16 18:00:00",
                    "end": "2023-06-16 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-19 08:00:00",
                    "end": "2023-06-19 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-19 12:00:00",
                    "end": "2023-06-19 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-19 14:00:00",
                    "end": "2023-06-19 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-19 18:00:00",
                    "end": "2023-06-19 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-20 08:00:00",
                    "end": "2023-06-20 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-20 12:00:00",
                    "end": "2023-06-20 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-20 14:00:00",
                    "end": "2023-06-20 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-20 18:00:00",
                    "end": "2023-06-20 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-21 08:00:00",
                    "end": "2023-06-21 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-21 12:00:00",
                    "end": "2023-06-21 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-21 14:00:00",
                    "end": "2023-06-21 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-21 18:00:00",
                    "end": "2023-06-21 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-22 08:00:00",
                    "end": "2023-06-22 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-22 12:00:00",
                    "end": "2023-06-22 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-22 14:00:00",
                    "end": "2023-06-22 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-22 18:00:00",
                    "end": "2023-06-22 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-23 08:00:00",
                    "end": "2023-06-23 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-23 12:00:00",
                    "end": "2023-06-23 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-23 14:00:00",
                    "end": "2023-06-23 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-23 18:00:00",
                    "end": "2023-06-23 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-26 08:00:00",
                    "end": "2023-06-26 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-26 12:00:00",
                    "end": "2023-06-26 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-26 14:00:00",
                    "end": "2023-06-26 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-26 18:00:00",
                    "end": "2023-06-26 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-27 08:00:00",
                    "end": "2023-06-27 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-27 12:00:00",
                    "end": "2023-06-27 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-27 14:00:00",
                    "end": "2023-06-27 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-27 18:00:00",
                    "end": "2023-06-27 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-28 08:00:00",
                    "end": "2023-06-28 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-28 12:00:00",
                    "end": "2023-06-28 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-28 14:00:00",
                    "end": "2023-06-28 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-28 18:00:00",
                    "end": "2023-06-28 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-29 08:00:00",
                    "end": "2023-06-29 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-29 12:00:00",
                    "end": "2023-06-29 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-29 14:00:00",
                    "end": "2023-06-29 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-29 18:00:00",
                    "end": "2023-06-29 18:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-30 08:00:00",
                    "end": "2023-06-30 12:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-30 12:00:00",
                    "end": "2023-06-30 12:00:00",
                },
                {
                    "title": "上班",
                    "start": "2023-06-30 14:00:00",
                    "end": "2023-06-30 14:00:00",
                },
                {
                    "title": "下班",
                    "start": "2023-06-30 18:00:00",
                    "end": "2023-06-30 18:00:00",
                },
                // {
                //     "title": "上班",
                //     "start": "2023-06-05"
                // },
                {
                    "title": "上班",
                    "start": "2023-06-08 08:00:00"
                },
                {
                    "title": "吃饭",
                    "start": "2023-06-10T12:00:00+00:00"
                },
                {
                    "url": "https://www.baidu.com/",
                    "title": "跳转百度",
                    "start": "2021-07-02",
                    "end": "2021-07-07",
                    "color": 'pink'
                }
                ]
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

