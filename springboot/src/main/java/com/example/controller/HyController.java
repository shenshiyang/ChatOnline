package com.example.controller;

import com.example.HyyzVo;
import com.example.common.JwtTokenUtils;
import com.example.common.Result;
import com.example.entity.Hy;
import com.example.entity.Params;
import com.example.entity.User;
import com.example.service.HyService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/api/hy")
public class HyController {

    @Resource
    private HyService hyService;

    @GetMapping("/list")
    public Result list(Params params){
        PageHelper.startPage(params.getPageNum(),params.getPageSize());
        Integer userId = JwtTokenUtils.getCurrentUser().getId();
        List<HyyzVo> list = hyService.selectHyList(userId);
        PageInfo<HyyzVo> pageInfo = PageInfo.of(list);
        return Result.success(pageInfo);
    }

    @GetMapping("/hyyzlist")
    public Result hyyzList(Params params){
        PageHelper.startPage(params.getPageNum(),params.getPageSize());
        Integer userId = JwtTokenUtils.getCurrentUser().getId();
        List<HyyzVo> list = hyService.selectHyyzList(userId);
        PageInfo<HyyzVo> pageInfo = PageInfo.of(list);
        return Result.success(pageInfo);
    }

    @PostMapping("/add")
    public Result add(@RequestBody Hy hy){
        User user = JwtTokenUtils.getCurrentUser();
        hy.setUserId(user.getId());
        if (hyService.isHy(hy) > 0) {
            return Result.error("你已经申请过了或者此人已是你的好友");
        }
        if (hyService.insertSelective(hy) < 1) {
            return Result.error("提交失败");
        }
        return Result.success("提交成功!");
    }

    @PostMapping("/update")
    public Result update(@RequestBody Hy hy){
        if (hyService.updateByPrimaryKeySelective(hy) < 1) {
            return Result.error("提交失败");
        }
        return Result.success("提交成功!");
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable("id") Integer id){
        if (hyService.deleteByPrimaryKey(id) < 1) {
            return Result.error("提交失败");
        }
        return Result.success("提交成功!");
    }
}
