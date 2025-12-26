package com.zhitan.common.utils;

import java.util.regex.Pattern;

public class PhoneNumberUtils {

    /**
     * 格式化电话号码（去除分隔符并添加国际区号）
     *
     * @param phoneNumber 原始号码
     * @param countryCode 国家代码（如"CN"）
     * @return 格式化后的号码（如"+86 138 1234 5678"），失败返回null
     */
    public static String formatNumber(String phoneNumber, String countryCode) {
        if (phoneNumber == null) return null;

        // 去除所有非数字字符（保留+号）
        String stripped = phoneNumber.replaceAll("[^+0-9]", "");

        // 中国号码处理逻辑
        if ("CN".equals(countryCode)) {
            if (!stripped.startsWith("+86") && stripped.length() == 11) {
                return "+86 " + stripped.substring(0, 3) + " "
                        + stripped.substring(3, 7) + " " + stripped.substring(7);
            }
        }
        return stripped; // 其他情况返回简单处理结果
    }

    /**
     * 校验手机号是否合法（中国11位，1开头，第二位3-9）
     *
     * @param phoneNumber 待校验号码
     * @return 是否合法
     */
    public static boolean isValidPhoneNumber(String phoneNumber) {
        Pattern pattern = Pattern.compile("^1[3-9]\\d{9}$");
        return pattern.matcher(phoneNumber).matches();
    }

    /**
     * 提取纯数字号码（去除+86等前缀）
     */
    public static String extractDigits(String phoneNumber) {
        return phoneNumber.replaceAll("[^0-9]", "");
    }

    /**
     * 隐藏中间四位号码（隐私保护）
     *
     * @return 如"138****5678"
     */
    public static String hideMiddleFour(String phoneNumber) {
        if (phoneNumber == null || phoneNumber.length() != 11) return phoneNumber;
        return phoneNumber.substring(0, 3) + "****" + phoneNumber.substring(7);
    }
}