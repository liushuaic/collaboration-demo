package com.jk.mapper;

import com.jk.model.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LsMapper{

    List<User> queryUserList(User user);

    /**
     * 查询订单列表总条数
     * @param
     * @param order
     * @return
     * @throws Exception
     */
    public long queryOrderCount(Order order) throws Exception;

    /**
     * 查询订单列表信息
     * @param
     * @param strat
     * @param end
     * @param order
     * @return
     * @throws Exception
     */
     public List<Order> queryOrderList(@Param("strat") int strat, @Param("end") int end,@Param("order") Order order) throws Exception;

    /**
     * 收款管理分页总条数
     * @return
     * @throws Exception
     */
    long queryPaymentcount() throws Exception;

    /**
     * 收款管理
     * @param start
     * @param end
     * @return
     * @throws Exception
     */
    List<Payment> queryPaymentList(@Param("start") int start, @Param("end")int end) throws Exception;

    /**
     * 退款管理分页总条数
     * @return
     * @throws Exception
     */
    long queryRefundscount() throws Exception;

    /**
     * 退款管理
     * @param start
     * @param end
     * @return
     * @throws Exception
     */
    List<Refunds> queryRefundsList(@Param("start") int start, @Param("end")int end) throws Exception;

    /**
     * 发货管理分页总条数
     * @return
     * @throws Exception
     */
    long queryShippingcount() throws Exception;

    /**
     * 发货列表
     * @param start
     * @param end
     * @return
     * @throws Exception
     */
    List<Shipping> queryShippingList(@Param("start")int start,@Param("end") int end) throws Exception;

    /**
     * 退货管理
     * @return
     * @throws Exception
     */
    long queryReturnscount() throws Exception;

    /**
     * 退货管理
     * @param start
     * @param end
     * @return
     * @throws Exception
     */
    List<Returns> queryReturnsList(@Param("start")int start,@Param("end") int end) throws Exception;
}
