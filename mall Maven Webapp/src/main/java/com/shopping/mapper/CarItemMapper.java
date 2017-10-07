package com.shopping.mapper;

import com.shopping.po.CarItem;
import com.shopping.po.CarItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CarItemMapper {
    int countByExample(CarItemExample example);

    int deleteByExample(CarItemExample example);

    int deleteByPrimaryKey(Integer carItemId);

    int insert(CarItem record);

    int insertSelective(CarItem record);

    List<CarItem> selectByExample(CarItemExample example);

    CarItem selectByPrimaryKey(Integer carItemId);

    int updateByExampleSelective(@Param("record") CarItem record, @Param("example") CarItemExample example);

    int updateByExample(@Param("record") CarItem record, @Param("example") CarItemExample example);

    int updateByPrimaryKeySelective(CarItem record);

    int updateByPrimaryKey(CarItem record);
}