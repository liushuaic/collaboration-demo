package com.jk.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable{

    private static final long serialVersionUID = -4613828579780650282L;
    /* id */
    private String orderid;

    /** 订单编号 */
    private String ordercode;

    /** 订单状态 1 未确认  2 已确认  3 已完成  4 已取消 */
    private String orderstatus;

    /** 支付状态 1 未支付  2 部分支付 3 部分退款  4 已退款*/
    private String paymentstatus;

    /** 配送状态 1 未发货 2 部分发货  3 已发货 4 部分退货  5 已退货 */
    private String shippingstatus;

    /** 支付手续费 */
    private Double fee;

    /** 运费 */
    private Double freight;

    /** 促销折扣 */
    private Double promotiondiscount;

    /** 优惠券折扣 */
    private Double coupondiscount;

    /** 调整金额 */
    private Double offsetamount;

    /** 已付金额 */
    private Double amountpaid;

    /** 赠送积分 */
    private Long point;

    /** 收货人 */
    private String consignee;

    /** 地区名称 */
    private String areaname;

    /** 地址 */
    private String address;

    /** 邮编 */
    private String zipcode;

    /** 电话 */
    private String phone;

    /** 是否开据发票 1 yes  2 no */
    private String isinvoice;

    /** 发票抬头 1 yes 2 no */
    private String invoicetitle;

    /** 税金 */
    private Double tax;

    /** 附言 */
    private String memo;

    /** 促销 */
    private String promotion;

    /** 到期时间 */
    private Date expire;

    /**创建日期*/
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdatetime;

    /** 锁定到期时间 */
    private Date lockexpire;

    /** 是否已分配库存 1 shi  2 fou */
    private String  isallocatedstock;

    /** 支付方式名称  */
    private String paymentmethodname;

    /** 配送方式名称 */
    private String shippingmethodname;

    /** 地区 */
    private String area;

    /** 支付方式关联id   paymentmethod*/
    private String  paymentmethodid;

    /** 配送方式关联id ShippingMethod*/
    private  String shippingmethodid;

    /** 操作员关联id  Admin  */
    private String operatorid;

    /** 会员关联id */
    private String memberid;

    /** 优惠码关联id CouponCode */
    private String couponcodeid;

    /** 优惠券 关联id */
    private String couponsid  ;

    /** 订单项 OrderItem 关联id*/
    private String orderitemsid ;

    /** 订单日志 OrderLog 关联id*/
    private String  orderlogsid;

    /** 预存款 Deposit 关联id*/
    private String  depositsid ;

    /** 收款单Payment 关联id*/
    private String  paymentsid;

    /** 退款单 Refunds 关联id*/
    private String  refundsid ;

    /** 发货单Shipping 关联id */
    private String  shippingsid;

    /** 退货单Returns */
    private String  returnsid ;

    /**打印*/
    private String dayin;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getOrdercode() {
        return ordercode;
    }

    public void setOrdercode(String ordercode) {
        this.ordercode = ordercode;
    }

    public String getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(String orderstatus) {
        this.orderstatus = orderstatus;
    }

    public String getPaymentstatus() {
        return paymentstatus;
    }

    public void setPaymentstatus(String paymentstatus) {
        this.paymentstatus = paymentstatus;
    }

    public String getShippingstatus() {
        return shippingstatus;
    }

    public void setShippingstatus(String shippingstatus) {
        this.shippingstatus = shippingstatus;
    }

    public Double getFee() {
        return fee;
    }

    public void setFee(Double fee) {
        this.fee = fee;
    }

    public Double getFreight() {
        return freight;
    }

    public void setFreight(Double freight) {
        this.freight = freight;
    }

    public Double getPromotiondiscount() {
        return promotiondiscount;
    }

    public void setPromotiondiscount(Double promotiondiscount) {
        this.promotiondiscount = promotiondiscount;
    }

    public Double getCoupondiscount() {
        return coupondiscount;
    }

    public void setCoupondiscount(Double coupondiscount) {
        this.coupondiscount = coupondiscount;
    }

    public Double getOffsetamount() {
        return offsetamount;
    }

    public void setOffsetamount(Double offsetamount) {
        this.offsetamount = offsetamount;
    }

    public Double getAmountpaid() {
        return amountpaid;
    }

    public void setAmountpaid(Double amountpaid) {
        this.amountpaid = amountpaid;
    }

    public Long getPoint() {
        return point;
    }

    public void setPoint(Long point) {
        this.point = point;
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee;
    }

    public String getAreaname() {
        return areaname;
    }

    public void setAreaname(String areaname) {
        this.areaname = areaname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIsinvoice() {
        return isinvoice;
    }

    public void setIsinvoice(String isinvoice) {
        this.isinvoice = isinvoice;
    }

    public String getInvoicetitle() {
        return invoicetitle;
    }

    public void setInvoicetitle(String invoicetitle) {
        this.invoicetitle = invoicetitle;
    }

    public Double getTax() {
        return tax;
    }

    public void setTax(Double tax) {
        this.tax = tax;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getPromotion() {
        return promotion;
    }

    public void setPromotion(String promotion) {
        this.promotion = promotion;
    }

    public Date getExpire() {
        return expire;
    }

    public void setExpire(Date expire) {
        this.expire = expire;
    }

    public Date getCreatedatetime() {
        return createdatetime;
    }

    public void setCreatedatetime(Date createdatetime) {
        this.createdatetime = createdatetime;
    }

    public Date getLockexpire() {
        return lockexpire;
    }

    public void setLockexpire(Date lockexpire) {
        this.lockexpire = lockexpire;
    }

    public String getIsallocatedstock() {
        return isallocatedstock;
    }

    public void setIsallocatedstock(String isallocatedstock) {
        this.isallocatedstock = isallocatedstock;
    }

    public String getPaymentmethodname() {
        return paymentmethodname;
    }

    public void setPaymentmethodname(String paymentmethodname) {
        this.paymentmethodname = paymentmethodname;
    }

    public String getShippingmethodname() {
        return shippingmethodname;
    }

    public void setShippingmethodname(String shippingmethodname) {
        this.shippingmethodname = shippingmethodname;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getPaymentmethodid() {
        return paymentmethodid;
    }

    public void setPaymentmethodid(String paymentmethodid) {
        this.paymentmethodid = paymentmethodid;
    }

    public String getShippingmethodid() {
        return shippingmethodid;
    }

    public void setShippingmethodid(String shippingmethodid) {
        this.shippingmethodid = shippingmethodid;
    }

    public String getOperatorid() {
        return operatorid;
    }

    public void setOperatorid(String operatorid) {
        this.operatorid = operatorid;
    }

    public String getMemberid() {
        return memberid;
    }

    public void setMemberid(String memberid) {
        this.memberid = memberid;
    }

    public String getCouponcodeid() {
        return couponcodeid;
    }

    public void setCouponcodeid(String couponcodeid) {
        this.couponcodeid = couponcodeid;
    }

    public String getCouponsid() {
        return couponsid;
    }

    public void setCouponsid(String couponsid) {
        this.couponsid = couponsid;
    }

    public String getOrderitemsid() {
        return orderitemsid;
    }

    public void setOrderitemsid(String orderitemsid) {
        this.orderitemsid = orderitemsid;
    }

    public String getOrderlogsid() {
        return orderlogsid;
    }

    public void setOrderlogsid(String orderlogsid) {
        this.orderlogsid = orderlogsid;
    }

    public String getDepositsid() {
        return depositsid;
    }

    public void setDepositsid(String depositsid) {
        this.depositsid = depositsid;
    }

    public String getPaymentsid() {
        return paymentsid;
    }

    public void setPaymentsid(String paymentsid) {
        this.paymentsid = paymentsid;
    }

    public String getRefundsid() {
        return refundsid;
    }

    public void setRefundsid(String refundsid) {
        this.refundsid = refundsid;
    }

    public String getShippingsid() {
        return shippingsid;
    }

    public void setShippingsid(String shippingsid) {
        this.shippingsid = shippingsid;
    }

    public String getReturnsid() {
        return returnsid;
    }

    public void setReturnsid(String returnsid) {
        this.returnsid = returnsid;
    }

    public String getDayin() {
        return dayin;
    }

    public void setDayin(String dayin) {
        this.dayin = dayin;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderid='" + orderid + '\'' +
                ", ordercode='" + ordercode + '\'' +
                ", orderstatus='" + orderstatus + '\'' +
                ", paymentstatus='" + paymentstatus + '\'' +
                ", shippingstatus='" + shippingstatus + '\'' +
                ", fee=" + fee +
                ", freight=" + freight +
                ", promotiondiscount=" + promotiondiscount +
                ", coupondiscount=" + coupondiscount +
                ", offsetamount=" + offsetamount +
                ", amountpaid=" + amountpaid +
                ", point=" + point +
                ", consignee='" + consignee + '\'' +
                ", areaname='" + areaname + '\'' +
                ", address='" + address + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", phone='" + phone + '\'' +
                ", isinvoice='" + isinvoice + '\'' +
                ", invoicetitle='" + invoicetitle + '\'' +
                ", tax=" + tax +
                ", memo='" + memo + '\'' +
                ", promotion='" + promotion + '\'' +
                ", expire=" + expire +
                ", createdatetime='" + createdatetime + '\'' +
                ", lockexpire=" + lockexpire +
                ", isallocatedstock='" + isallocatedstock + '\'' +
                ", paymentmethodname='" + paymentmethodname + '\'' +
                ", shippingmethodname='" + shippingmethodname + '\'' +
                ", area='" + area + '\'' +
                ", paymentmethodid='" + paymentmethodid + '\'' +
                ", shippingmethodid='" + shippingmethodid + '\'' +
                ", operatorid='" + operatorid + '\'' +
                ", memberid='" + memberid + '\'' +
                ", couponcodeid='" + couponcodeid + '\'' +
                ", couponsid='" + couponsid + '\'' +
                ", orderitemsid='" + orderitemsid + '\'' +
                ", orderlogsid='" + orderlogsid + '\'' +
                ", depositsid='" + depositsid + '\'' +
                ", paymentsid='" + paymentsid + '\'' +
                ", refundsid='" + refundsid + '\'' +
                ", shippingsid='" + shippingsid + '\'' +
                ", returnsid='" + returnsid + '\'' +
                ", dayin='" + dayin + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Order)) return false;

        Order order = (Order) o;

        return orderid.equals(order.orderid);
    }

    @Override
    public int hashCode() {
        return orderid.hashCode();
    }
}
