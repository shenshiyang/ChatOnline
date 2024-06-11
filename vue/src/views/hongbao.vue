<template>
  <div>

    <div>
      <el-table border :data="tableData" style="width: 100%">
        <el-table-column align="center" label="头像">
          <template v-slot="scope">
            <el-image :src="scope.row.avatar" :preview-src-list="[scope.row.avatar]" style="width: 50px; height: 50px; border-radius: 50%"></el-image>
          </template>
        </el-table-column>
        <el-table-column align="center" prop="name" label="姓名"></el-table-column>
        <el-table-column align="center" prop="content" label="红包明细"></el-table-column>
        <el-table-column align="center" prop="time" label="时间"></el-table-column>

      </el-table>
    </div>


    <el-col :xs="24" :sm="24" :lg="8"  >
      <div class="chart-wrapper">
        <pie-chart />
      </div>
    </el-col>
    <el-col :xs="24" :sm="24" :lg="8"  >
      <div class="chart-wrapper">
        <pie-chart2 />
      </div>
    </el-col>
  </div>
</template>

<script>
import request from "@/utils/request";
import PieChart from '@/views/PieChart'
import PieChart2 from '@/views/PieChart2'
export default {
  components: {

    PieChart,
    PieChart2

  },
  data() {
    return {
      params: {
        name: '',
        phone: '',
        pageNum: 1,
        pageSize: 5
      },
      tableData: [],
      total: 0,
      dialogFormVisible: false,
      form: {}
    }
  },
  // 页面加载的时候，做一些事情，在created里面
  created() {
    this.findBySearch();
  },
  // 定义一些页面上控件出发的事件调用的方法
  methods: {
    findBySearch() {
      request.get('/logs').then(res => {
console.log("res",res)
        if (res.code === '0') {
          let xxx=[]
          res.data.forEach(item=>{
            if(item.name==JSON.parse(localStorage.getItem("user")).name){
              if(item.type==0){
                item.content="-"+item.content
              }else {
                item.content="+"+item.content
              }
              xxx.push(item)

            }
          })

          this.tableData = xxx;
          this.total = xxx.length;
        } else {
          this.$message({
            message: res.msg,
            type: 'success'
          });
        }
      })
    },
    add() {
      this.form = {};
      this.dialogFormVisible = true;
    },
    edit(obj) {
      this.form = obj;
      this.dialogFormVisible = true;
    },
    reset() {
      this.params = {
        pageNum: 1,
        pageSize: 5,
        name: '',
        phone: ''
      }
      this.findBySearch();
    },
    handleSizeChange(pageSize) {
      this.params.pageSize = pageSize;
      this.findBySearch();
    },
    handleCurrentChange(pageNum) {
      this.params.pageNum = pageNum;
      this.findBySearch();
    },
    submit() {
      request.post("/user", this.form).then(res => {
        if (res.code === '0') {
          this.$message({
            message: '操作成功',
            type: 'success'
          });
          this.dialogFormVisible = false;
          this.findBySearch();
        } else {
          this.$message({
            message: res.msg,
            type: 'error'
          });
        }
      })
    },
    del(id) {
      request.delete("/user/" + id).then(res => {
        if (res.code === '0') {
          this.$message({
            message: '删除成功',
            type: 'success'
          });
          this.findBySearch();
        } else {
          this.$message({
            message: res.msg,
            type: 'success'
          });
        }
      })
    }
  }
}
</script>
