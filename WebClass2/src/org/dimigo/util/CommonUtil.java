package org.dimigo.util;

public class CommonUtil {
	
	public static boolean isEmpty(String s) {
		return s == null || "".equals(s.trim());
	}
	
	public static void main(String[] args) {
		String uri = "WebClass/jsp/login.do";
		String actionName = uri.substring(uri.lastIndexOf("/") + 1);
		System.out.println(actionName);
		actionName.substring(0, actionName.indexOf("."));
		System.out.println(actionName);
	}
}
