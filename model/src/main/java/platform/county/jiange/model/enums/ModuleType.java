package platform.county.jiange.model.enums;

import java.util.HashMap;
import java.util.Map;

/**
 * 标签状态
 * @author meizhiwen
 *
 */
public enum ModuleType {

	捕梦后台("myvideo_restadmin","捕梦后台"),
	捕梦网站后台("myvideo_admin","捕梦网站后台"),
	捕梦网站("myvideo_www","捕梦网站"),
	捕梦rest接口("myvideo_restwww","捕梦rest接口");
	
	private String name;
	
	private String description;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	private static Map<String,ModuleType> nameMap;
	
	private static Map<String,ModuleType> descMap;
	
	static{
		nameMap=new HashMap<String,ModuleType>();
		descMap=new HashMap<String,ModuleType>();
		
		for (ModuleType vs : ModuleType.values()) {
			nameMap.put(vs.name, vs);
			descMap.put(vs.description, vs);
		}
	}
	
	private ModuleType(String name,String description){
		this.name=name;
		this.description=description;
	}
	
	public static ModuleType getVideoStatusByName(String name){
		return nameMap.get(name);
	}
	
	public static ModuleType getVideoStatusByDesc(String description){
		return descMap.get(description);
	}
}
