package platform.county.jiange.website.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateFormatUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import platform.county.jiange.model.constants.BicycleConstants;
import platform.county.jiange.model.entity.Ruser;
import platform.county.jiange.model.enums.UserType;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.RuserService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 暂时结合easyui写的增删查改的例子
 * 
 * @author meizhiwen
 *
 */
@Controller()
@RequestMapping("videoUploader")
public class UploaderController extends CRUDController<Ruser, Long> {

	private static final Logger logger = LoggerFactory.getLogger(UploaderController.class);
	
	@Resource(name="jedisService")
	private JedisService jedisService;
	/*
	 * @Resource(name="videoUploaderService") private VideoUploaderService
	 * videoUploaderService;
	 */
	@Resource(name = "ruserService")
	RuserService ruserService;
	
	@Value("${files.localpath}")
	private String basePath;

	@Resource(name = "ruserService")
	@Override
	public void setBaseService(BaseService<Ruser, Long> baseService) {
		this.baseService = baseService;
	}

	@RequestMapping("videoUploaderlist")
	public String list() {
		return "videoUploader/list";
	}

	@RequestMapping("add")
	public String add(@RequestParam MultipartFile file,Ruser user) {
		
		if(file.getSize() > 0){
			uploadHeadPic(file,user);//上传头像
		}
		
		Ruser has = ruserService.findByUsername(user.getUsername());
		if (has != null) {
			return "videoUploader/list";
		}
		user.setPhone("13800138000");
		user.setName(user.getUsername().trim());
		user.setType(UserType.马甲.getName());
		user.setPassword("password@_!@#");

		this.create(user);
		
		jedisService.saveAsMap(BicycleConstants.USER_INFO+user.getId(), user);
		
		return "videoUploader/list";
	}
	
	
	private void uploadHeadPic(@RequestParam MultipartFile file,Ruser user){
		if(!StringUtils.isEmpty(user.getPic())){
			//删除老头像
		}
		String relPath = File.separator + "userHeadPic" + File.separator + "majiaHeadPic" + File.separator + DateFormatUtils.format(new Date(), "yyyy-MM-dd") + File.separator;
        String originalFilename = DateFormatUtils.format(new Date(), "yyyy-MM-dd_HHmmss_") + file.getOriginalFilename();
        String relUrl = "";
        try {
        	FileUtils.copyInputStreamToFile(file.getInputStream(), new File(basePath+relPath, originalFilename));
            relUrl = relPath+originalFilename;
            logger.info(relUrl);
            user.setPic(relUrl);//用户头像存储路径
        } catch (IOException e) {
        	logger.error("文件[" + originalFilename + "]上传失败",e);
        	e.printStackTrace();
        }
	}

	@RequestMapping("updatepage")
	public String updatepage(@RequestParam MultipartFile file,Ruser user) {
		
		if(file.getSize() > 0){
			uploadHeadPic(file,user);//上传头像
		}
		
		Ruser u=this.ruserService.find(user.getId());
		if(StringUtils.isNotBlank(user.getUsername())){
			u.setName(user.getName());
			u.setUsername(user.getUsername());
		}
		if(StringUtils.isNotBlank(user.getSex())){
			u.setSex(user.getSex());
		}
//		if(StringUtils.isNotBlank(user.getAddr())){
			u.setAddr(user.getAddr());
//		}
//		if(StringUtils.isNotBlank(user.getSignature())){
			u.setSignature(user.getSignature());
//		}
		if(StringUtils.isNotBlank(user.getPic())){
			u.setPic(user.getPic());
		}
		this.ruserService.update(u);
		
		jedisService.saveAsMap(BicycleConstants.USER_INFO+user.getId(), user);
		
		return "redirect:videoUploaderlist";
	}
	
	//生成密码
	@RequestMapping(value = { "/generatePassword" })
	public String generatePassword(Long id){
		this.request.setAttribute("id", id);
		return "videoUploader/generatePassword";
	}
	
	//保存密码
	@RequestMapping(value = { "/savePassword" })
	public String savePassword(Long id,String password){
		Ruser ruser=this.ruserService.find(id);
		
		//todo 加密
		
		ruser.setPassword(password);
		this.ruserService.update(ruser);
		return "redirect:videoUploaderlist";
	}
	
	 /**
     * 获取单个字符串的MD5值
     * 
     * @param String
     * @return
     */
    public static String getStringMD5(String text) {
        byte[] hash = null;
        try {
            hash = MessageDigest.getInstance("MD5").digest(text.getBytes("UTF-8"));
        } catch (NoSuchAlgorithmException e) {
        } catch (UnsupportedEncodingException e) {
        }

        StringBuilder hex = new StringBuilder(hash.length * 2);
        for (byte b : hash) {
            if ((b & 0xFF) < 0x10)
                hex.append("0");
            hex.append(Integer.toHexString(b & 0xFF));
        }
        return hex.toString();
    }

}
