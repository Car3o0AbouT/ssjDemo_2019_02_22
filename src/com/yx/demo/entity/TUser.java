package com.yx.demo.entity;

import com.dexcoder.commons.pager.Pageable;

import java.sql.Timestamp;

//账户表实体类
public class TUser extends Pageable {
    private Long tUserId;
    private Timestamp cTime;//创建时间
    private String account;//账户
    private String name;//用户名
    private String pwd;//密码
    private Long roleId;//角色id ,0 代表从业人员
    private String status;//0:申请中，1：正常状态，2：冻结，3，已删除
    private Long unitId;//单位id
    private String plateNumber;//车牌号，多个车牌号用逗号分隔
    private String url;//头像URL地址


    public Long gettUserId() {
        return tUserId;
    }

    public void settUserId(Long tUserId) {
        this.tUserId = tUserId;
    }

    public Timestamp getcTime() {
        return cTime;
    }

    public void setcTime(Timestamp cTime) {
        this.cTime = cTime;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getUnitId() {
        return unitId;
    }

    public void setUnitId(Long unitId) {
        this.unitId = unitId;
    }

    public String getPlateNumber() {
        return plateNumber;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "TUser{" +
                "tUserId=" + tUserId +
                ", cTime=" + cTime +
                ", account='" + account + '\'' +
                ", name='" + name + '\'' +
                ", pwd='" + pwd + '\'' +
                ", roleId=" + roleId +
                ", status='" + status + '\'' +
                ", unitId=" + unitId +
                ", plateNumber='" + plateNumber + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
