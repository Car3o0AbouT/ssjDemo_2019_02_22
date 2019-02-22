package com.yx.demo.util;

/**
 * 应用程序配置类
 *
 */
public class ApplicationConfig {

	/**文件上传下载——本地路径*/
	private String localPath;

	/**文件上传下载——网络路径*/
	private String netPath;

	public String getLocalPath() {
		return localPath;
	}

	public void setLocalPath(String localPath) {
		this.localPath = localPath;
	}

	public String getNetPath() {
		return netPath;
	}

	public void setNetPath(String netPath) {
		this.netPath = netPath;
	}
}
