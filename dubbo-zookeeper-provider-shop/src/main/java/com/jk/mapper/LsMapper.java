package com.jk.mapper;

import com.jk.model.Order;
import com.jk.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LsMapper{

    List<User> queryUserList(User user);

    /**
     * 查询订单列表总条数
     * @param
     * @return
     * @throws Exception
     */
    public long queryOrderCount() throws Exception;

    /**
     * 查询订单列表信息
     * @param strat
     * @param end
     * @param
     * @return
     * @throws Exception
     */
     public List<Order> queryOrderList(@Param("strat") int strat,@Param("end")  int end) throws Exception;
}
