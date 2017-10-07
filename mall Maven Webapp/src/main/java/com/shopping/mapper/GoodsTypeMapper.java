package com.shopping.mapper;

import com.shopping.po.GoodsType;
import com.shopping.po.GoodsTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface GoodsTypeMapper {
    int countByExample(GoodsTypeExample example);

    int deleteByExample(GoodsTypeExample example);

    int deleteByPrimaryKey(Integer typeId);

    int insert(GoodsType record);

    int insertSelective(GoodsType record);

    List<GoodsType> selectByExample(GoodsTypeExample example);

    GoodsType selectByPrimaryKey(Integer typeId);

    int updateByExampleSelective(@Param("record") GoodsType record, @Param("example") GoodsTypeExample example);

    int updateByExample(@Param("record") GoodsType record, @Param("example") GoodsTypeExample example);

    int updateByPrimaryKeySelective(GoodsType record);

    int updateByPrimaryKey(GoodsType record);
}