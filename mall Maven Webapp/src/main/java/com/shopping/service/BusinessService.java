package com.shopping.service;

import com.shopping.po.Business;
import com.shopping.po.BusinessExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BusinessService {

    List<Business> getBusinesses(Integer userId);
}