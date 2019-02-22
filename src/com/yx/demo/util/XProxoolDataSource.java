package com.yx.demo.util;

import org.logicalcobwebs.proxool.ProxoolDataSource;
import org.logicalcobwebs.proxool.ProxoolFacade;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author lec
 * @Title: XProxoolDataSource
 * @ProjectName springSpringmvcSpringjdbc
 * @Description: TODO
 * @date 2019/1/23 10:28
 */
public class XProxoolDataSource extends ProxoolDataSource {
    public void close(){
        try {
            DriverManager.deregisterDriver(DriverManager.getDrivers().nextElement());
            ProxoolFacade.shutdown();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
