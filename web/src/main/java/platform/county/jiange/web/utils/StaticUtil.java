package platform.county.jiange.web.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StaticUtil {
	private static String date ; 
	private static long num = 0l;  
	/** 
     * 生成订单编号 
     * @return 
     */  
    public static synchronized String genSn() {  
        String str = new SimpleDateFormat("yyMMddHHmm").format(new Date());  
        if(date==null||!date.equals(str)){  
            date = str;  
            num  = 0l;  
        }  
        num ++;  
        long SN = Long.parseLong((date)) * 10000;  
        SN += num;
        return SN+"";  
    }  
    public static void main(String args[]){
    	System.out.println(StaticUtil.genSn());
    }
}
