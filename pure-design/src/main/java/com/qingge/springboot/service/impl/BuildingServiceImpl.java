package com.qingge.springboot.service.impl;

import com.qingge.springboot.entity.Building;
import com.qingge.springboot.mapper.BuildingMapper;
import com.qingge.springboot.service.IBuildingService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 */
@Service
public class BuildingServiceImpl extends ServiceImpl<BuildingMapper, Building> implements IBuildingService {

}
