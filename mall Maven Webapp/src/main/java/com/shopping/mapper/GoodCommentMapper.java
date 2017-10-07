package com.shopping.mapper;

import com.shopping.po.GoodComment;
import com.shopping.po.GoodCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface GoodCommentMapper {
    int countByExample(GoodCommentExample example);

    int deleteByExample(GoodCommentExample example);

    int deleteByPrimaryKey(Integer commentId);

    int insert(GoodComment record);

    int insertSelective(GoodComment record);

    List<GoodComment> selectByExample(GoodCommentExample example);
    
    List<GoodComment> selectByExampleWithComments(GoodCommentExample example);

    GoodComment selectByPrimaryKey(Integer commentId);
    
    

    int updateByExampleSelective(@Param("record") GoodComment record, @Param("example") GoodCommentExample example);

    int updateByExample(@Param("record") GoodComment record, @Param("example") GoodCommentExample example);

    int updateByPrimaryKeySelective(GoodComment record);

    int updateByPrimaryKey(GoodComment record);
}