package com.shopping.service.imp;

import com.shopping.mapper.BusinessMapper;
import com.shopping.po.Business;
import com.shopping.po.BusinessExample;
import com.shopping.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusinessServiceImp implements BusinessService{

    @Autowired
    private BusinessMapper businessMapper;

    @Override
    public List<Business> getBusinesses(Integer userId) {
        BusinessExample businessExample = new BusinessExample();
        businessExample.or().andUserIdEqualTo(userId);
        List<Business> lists = businessMapper.selectByExample(businessExample);
        return lists;
    }
}
