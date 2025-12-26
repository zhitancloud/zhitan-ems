package com.zhitan.common.utils;

/**
 * 随机验证码生成
 */

import org.apache.commons.lang3.RandomStringUtils;

public class CodeUtils {
    public static String generateNumericCode(int length) {
        return RandomStringUtils.randomNumeric(length); // 生成6位数字
    }
}