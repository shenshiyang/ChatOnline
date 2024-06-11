<template>
  <div :class="className" :style="{height:height,width:width}" />
</template>

<script>
import echarts from 'echarts'
require('echarts/theme/macarons') // echarts theme
import resize from './mixins/resize'
import request from "@/utils/request";
// import {listPost, getPost, delPost, addPost, updatePost, exportPost} from "@/api/biz/post";
export default {
  mixins: [resize],
  props: {
    className: {
      type: String,
      default: 'chart'
    },
    width: {
      type: String,
      default: '100%'
    },
    height: {
      type: String,
      default: '300px'
    }
  },
  data() {
    return {
      chart: null
    }
  },
  mounted() {
    this.$nextTick(() => {
      this.initChart()
    })
  },
  beforeDestroy() {
    if (!this.chart) {
      return
    }
    this.chart.dispose()
    this.chart = null
  },
  methods: {
    initChart() {
      console.log("itemitem")
      const counts = {};



          request.get('/logs').then(item=>{
            console.log("itemitem",item)
            item.data.forEach(res=>{
              if(res.name==JSON.parse(localStorage.getItem("user")).name) {
                const fieldValue = res.time.substring(0, 7); // 在这里替换为你想要统计的字段

                if (res.type == 0) {
                  counts[fieldValue + "支出"] = (counts[fieldValue + "支出"] || 0) + res.content * 1;
                } else {
                  counts[fieldValue + "收入"] = (counts[fieldValue + "收入"] || 0) + res.content * 1;
                }

              }
        })


        console.log("counts",counts)

        let data = [];

        for (const fieldValue in counts) {
          data.push({ value: (counts[fieldValue]).toFixed(2), name: fieldValue });

        }
        console.log("data",data)
        this.chart = echarts.init(this.$el, 'macarons')

        this.chart.setOption({
          title: { // 添加标题部分
            text: '月支出与收入', // 标题文字
            left: 'center', // 标题水平居中
            top: 0
          },
          tooltip: {

            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
          },
          legend: {
            left: 'center',
            bottom: '10',
            data:Object.keys(counts)
          },
          series: [
            {
              name: '各反馈统计',
              type: 'pie',
              roseType: 'radius',
              radius: [15, 95],
              center: ['50%', '38%'],
              data: data,
              animationEasing: 'cubicInOut',
              animationDuration: 2600
            }
          ]
        })
      })
    }
  }
}
</script>
