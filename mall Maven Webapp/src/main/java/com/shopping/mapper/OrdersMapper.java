package com.shopping.mapper;

import com.shopping.po.Orders;
import com.shopping.po.OrdersExample;
import java.util.List;

import com.shopping.vo.OrderGoodVo;
import com.shopping.vo.ShopOrderVo;
import com.shopping.vo.UserOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface OrdersMapper {
    int countByExample(OrdersExample example);

    int deleteByExample(OrdersExample example);

    int deleteByPrimaryKey(Integer orderId);

    int insert(Orders record);

    int insertSelective(Orders record);

    List<Orders> selectByExample(OrdersExample example);

    Orders selectByPrimaryKey(Integer orderId);

    int updateByExampleSelective(@Param("record") Orders record, @Param("example") OrdersExample example);

    int updateByExample(@Param("record") Orders record, @Param("example") OrdersExample example);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);

    List<UserOrder> selectUserOrder(int userId);

    List<OrderGoodVo> selectOrderGood(int orderId);

    List<ShopOrderVo> selectOrderByShopUserId(int userId);
}