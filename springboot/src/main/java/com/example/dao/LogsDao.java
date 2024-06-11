package com.example.dao;

import com.example.entity.Logs;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface LogsDao extends Mapper<Logs> {

	List<Logs> findBySearch(@Param("search") Logs search);

}
