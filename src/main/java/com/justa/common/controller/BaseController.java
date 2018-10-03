package com.justa.common.controller;

import org.springframework.stereotype.Controller;

import com.justa.common.utils.ShiroUtils;
import com.justa.system.domain.UserDO;
import com.justa.system.domain.UserToken;

@Controller
public class BaseController {
	public UserDO getUser() {
		return ShiroUtils.getUser();
	}

	public Long getUserId() {
		return getUser().getUserId();
	}

	public String getUsername() {
		return getUser().getUsername();
	}
}