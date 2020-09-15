package com.cykj.housewifery.service.impl;

import com.cykj.housewifery.bean.*;
import com.cykj.housewifery.mapper.EmployeeMapper;
import com.cykj.housewifery.bean.Order;
import com.cykj.housewifery.bean.ReportDataBean;
import com.cykj.housewifery.mapper.CompanyMapper;
import com.cykj.housewifery.mapper.OrderMapper;
import com.cykj.housewifery.mapper.UserMapper;
import com.cykj.housewifery.service.OrderService;
import com.cykj.housewifery.tools.RedisLockCommon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private RedisLockCommon redisLock;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private EmployeeMapper employeeMapper;

    @Autowired
    private CompanyMapper companyMapper;

    @Override
    public int getOrderCount(String company) {
        int count =orderMapper.getOrderCount(company);
        return count;
    }

    @Override
    public int getOrderCount(String companyId, String type) {
        int count =orderMapper.orderCount(companyId,type);
        return count;
    }

    @Override
    public List<Order> selOrder(String company, Integer pageNum, String limit) {
        List<Order> orders=orderMapper.selOrder(company,pageNum,Integer.valueOf(limit));
        return orders;
    }

    @Override
    public Order findOrderById(String id) {
       Order order=orderMapper.findOrderById(id);
       return order;
    }

    @Override
    public boolean grabSingle(String id) {
        String key = "order_lock_" + id;
        long time = System.currentTimeMillis();
        try {
            //如果加锁失败
            if (!redisLock.tryLock(key, String.valueOf(time))) {
                return false;
            }
            Demand demand = orderMapper.selectDemandById(id);
            //如果订单已被抢
            if (demand.getState().equals("已接单")) {
                return false;
            }
            //更改状态
            orderMapper.updateDemandById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            //解锁
            redisLock.unlock(key, String.valueOf(time));
        }
        return true;

    }

    @Override
    public int getDemandsCount() {
        int n = orderMapper.getDemandCount();
        return n;
    }

    @Override
    public List<Demand> getDemands(Integer pageNum, String limit) {
        List<Demand> demands = orderMapper.getDemands(pageNum,Integer.valueOf(limit));
        return demands;
    }

    @Override
    public Object createOrder(String companyId, String id) {
        Order order = orderMapper.createOrderByDemandId(id);
        order.setCompany(companyId);
        int n = orderMapper.insertOrder(order);
        return n;
    }

    @Override
    public List<Order> companyOrder(Integer pageNum, String limit, String companyId, String type) {
        List<Order> orders=orderMapper.companyOrder(pageNum,Integer.valueOf(limit),companyId,type);
        return orders;
    }

    @Override
    public List<Param> allOrderState() {
        List<Param> state = orderMapper.allOrderState();
        return state;
    }

    @Override
    public HashMap<String, Object> orderDetails(String account, String number) {
        Employee employee = null;
        if (number!=null && !"".equals(number)){
            employee = employeeMapper.findEmployeeById(number);
        }
        User user = userMapper.findUserByAccount(account);
        HashMap<String,Object> map = new HashMap<>();
        map.put("user",user);
        map.put("employee",employee);
        return map;
    }


    @Override
    public ReportDataBean barOrder(String startDate, String endDate, String company) {
        List<String> dates=companyMapper.allDate(startDate,endDate);
        Collections.reverse(dates);
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=orderMapper.barOrder(date,company);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }

    @Override
    public ReportDataBean lineOrder(String startDate, String endDate, String company) {
        List<String> dates=companyMapper.allDate(startDate,endDate);
        Collections.reverse(dates);
        ReportDataBean reportDataBean=new ReportDataBean();
        List<Integer> datas=new ArrayList<>();
        for (String date:dates){
            int count=orderMapper.lineOrder(date,company);
            datas.add(count);
        }
        reportDataBean.setData(datas);
        return reportDataBean;
    }
}
