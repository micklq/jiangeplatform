package platform.county.jiange.model.enums;

import java.util.HashMap;
import java.util.Map;

/**
 * 数据来源
 * @author 
 *
 */
public enum DataFrom {
	捕梦后台("myvideo_restadmin","捕梦后台"),
	捕梦网站后台("myvideo_admin","捕梦网站后台"),
	捕梦rest接口("myvideo_restwww","捕梦rest接口"),
	捕梦网站("myvideo_www","捕梦网站");
	
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

	private static Map<String,DataFrom> nameMap;
	
	private static Map<String,DataFrom> descMap;
	
	static{
		nameMap=new HashMap<String,DataFrom>();
		descMap=new HashMap<String,DataFrom>();
		
		for (DataFrom vs : DataFrom.values()) {
			nameMap.put(vs.name, vs);
			descMap.put(vs.description, vs);
		}
	}
	
	private DataFrom(String name,String description){
		this.name=name;
		this.description=description;
	}
	
	public static DataFrom getVideoStatusByName(String name){
		return nameMap.get(name);
	}
	
	public static DataFrom getVideoStatusByDesc(String description){
		return descMap.get(description);
	}
}
