package com.zhitan.common.utils;

import cn.hutool.core.util.ObjectUtil;

/**
 * @Description: 数字工具类
 */
public class DoubleUtil {
    public static double toDouble(String str) {
        double d = 0;
        try {
            d = Double.parseDouble(str);
        } catch (Exception e) {
            d = 0;
        }
        return d;
    }

    /**
     * long 转成 double类型
     *
     * @param l
     * @return
     */
    public static double toDouble(long l) {
        return toDouble(l + "");
    }

    /**
     * long 转成 double类型
     *
     * @param l
     * @return
     */
    public static double toDouble(Object l) {
        return toDouble(l + "");
    }

    /**
     * int 转成 double类型
     *
     * @param i
     * @return
     */
    public static double toDouble(int i) {
        return toDouble(i + "");
    }


    /**
     * 格式化小数为指定位数的小数字符串
     *
     * @param value
     * @return
     */
    public static String formatDoubleToStr(Double value, int format) {
        if (ObjectUtil.isEmpty(value)) {
            value = 0.00;
        }
        String str = String.format("%." + format + "f", value).toString();
        return str;
    }

    /**
     * 格式化小数为指定位数的小数字符串,默认格式化为2位小数
     *
     * @param value
     * @return
     */
    public static String formatDoubleToStr(Double value) {
        return formatDoubleToStr(value, 2);
    }

    /**
     * 格式化小数为指定位数的小数
     *
     * @param value
     * @param format
     * @return
     */
    public static double formatDouble(Double value, int format) {
        if (ObjectUtil.isEmpty(value)) {
            return 0D;
        }
        String str = formatDoubleToStr(value, format);
        return toDouble(str);
    }

    /**
     * 格式化小数为2位数的小数
     *
     * @param value
     * @return
     */
    public static double formatDouble(Double value) {
        if (ObjectUtil.isEmpty(value)) {
            return 0D;
        }
        return formatDouble(value, 2);
    }
}
