package com.zhitan.saving.service.impl;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zhitan.common.constant.CommonConst;
import com.zhitan.common.exception.ServiceException;
import com.zhitan.common.utils.PageUtils;
import com.zhitan.common.utils.SecurityUtils;
import com.zhitan.common.utils.bean.BeanUtils;
import com.zhitan.common.utils.id.IdGenUtil;
import com.zhitan.saving.domain.dto.PolicyDTO;
import com.zhitan.saving.domain.dto.PolicyPageDTO;
import com.zhitan.saving.domain.entity.Policy;
import com.zhitan.saving.domain.vo.PolicyDetailVO;
import com.zhitan.saving.domain.vo.PolicyPageVO;
import com.zhitan.saving.mapper.PolicyMapper;
import com.zhitan.saving.service.IPolicyService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.stereotype.Service;

/**
 * 政策法规Service业务层处理
 *
 * @author ZhiTan
 */
@Slf4j
@Service
@AllArgsConstructor
public class PolicyServiceImpl extends ServiceImpl<PolicyMapper, Policy> implements IPolicyService {

    /**
     * 政策法规-列表查询
     */

    @Override
    public Page<PolicyPageVO> getPageList(PolicyPageDTO pageDTO) {
        Page<PolicyPageVO> pageInfo = PageUtils.getPageInfo(PolicyPageVO.class);
        return baseMapper.getPageList(pageInfo, pageDTO);
    }

    /**
     * 政策法规-查询详情
     */
    @Override
    public PolicyDetailVO getDetail(Long id) {
        Policy policy = baseMapper.selectById(id);
        if (ObjectUtils.isEmpty(policy)) {
            return null;
        }
        PolicyDetailVO detailVO = new PolicyDetailVO();
        BeanUtils.copyProperties(policy, detailVO);
        return detailVO;
    }



    /**
     * 政策法规-新增
     */
    @Override
    public void add(PolicyDTO addDTO) {

        long pid = IdGenUtil.nextLongId();
        String username = SecurityUtils.getUsername();
        Policy policy = new Policy();
        policy.setId(pid);
        policy.setDelFlag(0);
        policy.setCreateBy(username);
        BeanUtils.copyProperties(addDTO, policy);
        // 新增政策法规
        baseMapper.insert(policy);


    }

    /**
     * 政策法规-更新
     */
    @Override
    public void edit(PolicyDTO editDTO) {
        if (ObjectUtils.isEmpty(editDTO.getId())) {
            throw new ServiceException("政策ID不能为空");
        }
        // 获取政策法规
        Policy policy = baseMapper.selectById(editDTO.getId());
        if (ObjectUtils.isEmpty(policy)) {
            throw new ServiceException("未找到对应实体");
        }
        BeanUtils.copyProperties(editDTO, policy);

        baseMapper.updateById(policy);
    }

    /**
     * 政策法规-删除
     */
    @Override
    public void delete(Long id) {
        // 获取政策法规
        Policy policy = baseMapper.selectById(id);
        if (ObjectUtils.isEmpty(policy)) {
            throw new ServiceException("未找到对应实体");

        }
        policy.setDelFlag(CommonConst.DEL_FLAG_1);
        baseMapper.updateById(policy);

    }

}
