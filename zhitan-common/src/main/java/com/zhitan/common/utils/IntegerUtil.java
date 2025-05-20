package com.zhitan.common.utils;

/**
 * @Description: 整数相关工具类
 */
public class IntegerUtil {
    /**
     * 字符串转成int类型
     *
     * @param str
     * @return
     */
    public static int toInt(String str) {
        int d = 0;
        try {
            d = Integer.parseInt(str);
        } catch (Exception e) {
            d = 0;
        }
        return d;
    }

    /**
     * long转成int类型
     *
     * @param l
     * @return
     */
    public static int toInt(long l) {
        int d = 0;
        try {
            d = (int) l;
        } catch (Exception e) {
            d = 0;
        }
        return d;
    }
}
