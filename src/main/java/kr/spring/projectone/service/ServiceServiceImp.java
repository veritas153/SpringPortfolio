package kr.spring.projectone.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.projectone.dao.ServiceDao;
import kr.spring.projectone.vo.ServiceVo;

@Service
public class ServiceServiceImp implements ServiceService{

	@Autowired
	private ServiceDao serviceDao;
	
	
	@Override
	public ArrayList<ServiceVo> getAdminAnnouncement() {
		
		return serviceDao.getAdminAnnouncement();
	}

}
