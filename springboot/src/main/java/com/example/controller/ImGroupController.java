package com.example.controller;

import com.example.common.FilePortUtil;
import com.example.common.Result;
import com.example.entity.ImGroup;
import com.example.entity.ImSingle;
import com.example.service.ImGroupService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.List;

/**
*  描述：群组聊天相关接口
*/
@RestController
@RequestMapping(value = "/api/imGroup")
public class ImGroupController {

    @Resource
    private ImGroupService imGroupService;

    /**
     * 描述：新增
     */
    @PostMapping
    public Result add(@RequestBody ImGroup imGroup) {

        imGroupService.add(imGroup);
        return Result.success(imGroup);
    }

    /**
     * 描述：根据ID删除
     */
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        imGroupService.delete(id);
        return Result.success();
    }

    /**
     * 描述：更新
     */
    @PutMapping
    public Result update(@RequestBody ImGroup imGroup) {

        imGroupService.update(imGroup);
        return Result.success();
    }

    /**
     * 描述：根据ID查询
     */
    @GetMapping("/{id}")
    public Result detail(@PathVariable Integer id) {
        ImGroup imGroup = imGroupService.findById(id);
        return Result.success(imGroup);
    }

    /**
     * 描述：查询所有
     */
    @GetMapping
    public Result all() {
        return Result.success(imGroupService.findAll());
    }

    /**
     * 描述：分页查询
     */
    @PostMapping("/page")
    public Result page(@RequestBody ImGroup search,
                       @RequestParam(defaultValue = "1") Integer pageNum,
                       @RequestParam(defaultValue = "5") Integer pageSize) {
        return Result.success(imGroupService.findPage(search, pageNum, pageSize));
    }

    @GetMapping("/don")
    public void donFromUsername(HttpServletResponse response) {
        //从数据库查询出来的结果集
        List<ImGroup> all = imGroupService.findAll();
        System.out.println(all);

        //导出的表格名称
        String title = "聊天记录";

        //表中第一行表头字段
        String [] headers ={"发送人","内容","时间","类型"};

        //具体需要写入excel需要的那些字段，这些字段从PprojectSalary类中拿，也就是上面的实际数据结果集的泛型
        List<String> list = Arrays.asList("name","content","time","type");

        try {
            FilePortUtil.exportExcel(response,title,headers,all,list);
        }catch (Exception e){

        }
    }


}
