package com.justa.system.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.justa.common.annotation.Log;
import com.justa.common.config.UploadConfig;
import com.justa.common.domain.FileDO;
import com.justa.common.utils.FileType;
import com.justa.common.utils.FileUtil;
import com.justa.common.utils.PageUtils;
import com.justa.common.utils.Query;
import com.justa.common.utils.R;
import com.justa.system.domain.WechatOfficialAccountsDO;
import com.justa.system.service.WechatOfficialAccountsService;

/**
 * 微信公众号信息表
 * 
 * @author soar
 * @email 578394545@qq.com
 * @date 2018-01-17 00:03:53
 */
 
@Controller
@RequestMapping("/sys/wechatOfficialAccounts")
public class WechatOfficialAccountsController {
	@Autowired
	private WechatOfficialAccountsService wechatOfficialAccountsService;
	
	@Autowired
	private UploadConfig justaConfig;
	
	@GetMapping("")
	@RequiresPermissions("sys:wechatOfficialAccounts:wechatOfficialAccounts")
	String WechatOfficialAccounts(Model model){
	    return "system/wechatOfficialAccounts/wechatOfficialAccounts";
	}
	
	@ResponseBody
	@GetMapping("/list")
	@RequiresPermissions("sys:wechatOfficialAccounts:wechatOfficialAccounts")
	public PageUtils list(@RequestParam Map<String, Object> params){
		//查询列表数据
        Query query = new Query(params);
		List<WechatOfficialAccountsDO> wechatOfficialAccountsList = wechatOfficialAccountsService.list(query);
		int total = wechatOfficialAccountsService.count(query);
		PageUtils pageUtils = new PageUtils(wechatOfficialAccountsList, total);
		return pageUtils;
	}
	
	@GetMapping("/add")
	@Log("添加公众号")
	@RequiresPermissions("sys:wechatOfficialAccounts:add")
	String add(){
	    return "system/wechatOfficialAccounts/add";
	}

	@GetMapping("/edit/{id}")
	@RequiresPermissions("sys:wechatOfficialAccounts:edit")
	String edit(@PathVariable("id") Integer id,Model model){
		WechatOfficialAccountsDO wechatOfficialAccounts = wechatOfficialAccountsService.get(id);
		model.addAttribute("wechatOfficialAccounts", wechatOfficialAccounts);
	    return "system/wechatOfficialAccounts/edit";
	}
	
	/**
	 * 保存
	 */
	@ResponseBody
	@PostMapping("/save")
	@RequiresPermissions("sys:wechatOfficialAccounts:add")
	public R save(@RequestParam("logoPicture") MultipartFile logoPicture, WechatOfficialAccountsDO wechatOfficialAccounts){
		String fileName = logoPicture.getOriginalFilename();
		FileDO sysFile = new FileDO(FileType.fileType(fileName), "/logos/" + fileName, new Date());
		fileName = FileUtil.renameToUUID(fileName);
		try {
			System.out.println(justaConfig.getUploadPath());
			FileUtil.uploadFile(logoPicture.getBytes(), justaConfig.getUploadPath(), fileName);
		} catch (Exception e) {
			e.printStackTrace();
			return R.error();
		}
		wechatOfficialAccounts.setLogo(sysFile.getUrl());
		if(wechatOfficialAccountsService.save(wechatOfficialAccounts)>0){
			return R.ok();
		}
		return R.error();
	}
	/**
	 * 修改
	 */
	@ResponseBody
	@RequestMapping("/update")
	@RequiresPermissions("sys:wechatOfficialAccounts:edit")
	public R update( WechatOfficialAccountsDO wechatOfficialAccounts){
		wechatOfficialAccountsService.update(wechatOfficialAccounts);
		return R.ok();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/remove")
	@ResponseBody
	@RequiresPermissions("sys:wechatOfficialAccounts:remove")
	public R remove( Integer id){
		if(wechatOfficialAccountsService.remove(id)>0){
		return R.ok();
		}
		return R.error();
	}
	
	/**
	 * 删除
	 */
	@PostMapping( "/batchRemove")
	@ResponseBody
	@RequiresPermissions("sys:wechatOfficialAccounts:batchRemove")
	public R remove(@RequestParam("ids[]") Integer[] ids){
		wechatOfficialAccountsService.batchRemove(ids);
		return R.ok();
	}
	
	@ResponseBody
	@GetMapping("/idlist/{wechatid}")
	public List<WechatOfficialAccountsDO> listByType(@PathVariable("wechatid") String wechatid) {
		// 查询列表数据
		Map<String, Object> map = new HashMap<>(16);
		List<WechatOfficialAccountsDO> dictList = wechatOfficialAccountsService.list(map);
		return dictList;
	}
	
}
