package com.zhitan.singlelogin.service;

import com.zhitan.common.core.domain.entity.SysUser;

/**
 * description todu
 *
 * @author zhitan
 */
public interface ISingleLoginService {
    SysUser singleLogin(String token);
}
