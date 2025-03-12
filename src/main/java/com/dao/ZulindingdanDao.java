package com.dao;

import com.entity.ZulindingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZulindingdanVO;
import com.entity.view.ZulindingdanView;


/**
 * 租赁订单
 * 
 * @author 
 * @email 
 * @date 2021-03-16 20:49:38
 */
public interface ZulindingdanDao extends BaseMapper<ZulindingdanEntity> {
	
	List<ZulindingdanVO> selectListVO(@Param("ew") Wrapper<ZulindingdanEntity> wrapper);
	
	ZulindingdanVO selectVO(@Param("ew") Wrapper<ZulindingdanEntity> wrapper);
	
	List<ZulindingdanView> selectListView(@Param("ew") Wrapper<ZulindingdanEntity> wrapper);

	List<ZulindingdanView> selectListView(Pagination page,@Param("ew") Wrapper<ZulindingdanEntity> wrapper);
	
	ZulindingdanView selectView(@Param("ew") Wrapper<ZulindingdanEntity> wrapper);
	
}
