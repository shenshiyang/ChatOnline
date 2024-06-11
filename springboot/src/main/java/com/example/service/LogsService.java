package com.example.service;

import cn.hutool.core.util.ObjectUtil;
import com.example.common.JwtTokenUtils;
import com.example.dao.LogsDao;
import com.example.entity.Logs;
import com.example.entity.User;
import com.example.exception.CustomException;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LogsService {

    @Resource
    private LogsDao logsDao;

    public Logs add(Logs logs) {
        logsDao.insertSelective(logs);
        return logs;
    }

    public void delete(Integer id) {
        logsDao.deleteByPrimaryKey(id);
    }

    public void update(Logs logs) {
        logsDao.updateByPrimaryKeySelective(logs);
    }

    public Logs findById(Integer id) {
        return logsDao.selectByPrimaryKey(id);
    }

    public List<Logs> findAll() {
        return logsDao.findBySearch(null);
    }

    public PageInfo<Logs> findPage(Logs search, Integer pageNum, Integer pageSize) {
        User user = JwtTokenUtils.getCurrentUser();
        if (ObjectUtil.isNull(user)) {
            throw new CustomException("token验证失效");
        }
        PageHelper.startPage(pageNum, pageSize);
        List<Logs> all = findByCondition(user, search);

        return PageInfo.of(all);
    }

    public List<Logs> findByCondition(User user, Logs search) {
		return logsDao.findBySearch(search);
    }
}