package platform.county.jiange.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.LetterPetition;
import platform.county.jiange.model.entity.LetterReply;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Supervision;
import platform.county.jiange.model.entity.SupervisionReply;
import platform.county.jiange.model.enums.OfficeUserType;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.service.OrgPostService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.service.SupervisionReplyService;
import platform.county.jiange.service.UserService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.SupervisionService;
import platform.county.jiange.webcomn.PageInfo;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * 
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("superv")
public class SupervisionController extends CRUDController<Supervision, Long> {

	private static final Logger logger = LoggerFactory
			.getLogger(SupervisionController.class);

	@Resource(name = "jedisService")
	private JedisService jedisService;

	@Resource(name = "supervisionService")
	private SupervisionService supervisionService;

	@Resource(name = "supervisionReplyService")
	private SupervisionReplyService supervisionReplyService;

	@Resource(name = "countyService")
	private CountyService countyService;

	@Resource(name = "userService")
	private UserService userService;

	@Resource(name = "officeUserService")
	private OfficeUserService officeUserService;

	@Resource(name = "organizationService")
	private OrganizationService organizationService;

	@Resource(name = "orgPostService")
	private OrgPostService orgPostService;

	@Resource(name = "supervisionService")
	@Override
	public void setBaseService(BaseService<Supervision, Long> baseService) {
		this.baseService = baseService;
	}

	@RequestMapping("index")
	public String index() {
		return "superv/index";
	}

	@RequestMapping("nlist")
	public String nlist(
			@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
			@RequestParam(value = "cid", required = false, defaultValue = "0") Long cid,
			ModelMap model) {
		PageInfo supervPage = getSupervPageInfo(page, cid);
		List<Supervision> supervList = getSupervList(page, cid);
		model.addAttribute("supervPage", supervPage);
		model.put("supervList", supervList);

		// ID 标题 地点 发起人 时间
		// 联络点信息
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentidEq", 1L));
		List<County> clist = countyService.findAll(0, 500, filters, new Sort(
				Sort.Direction.ASC, "id"));
		model.put("countyList", clist);
		return "superv/nlist";
	}

	@RequestMapping("nsave")
	public String nsave(
			@RequestParam(value = "id", required = false, defaultValue = "0") Long id,
			@RequestParam(value = "cid", required = false, defaultValue = "0") Long cid,
			ModelMap map) {
		Supervision superv = new Supervision();
		if (id != null && id > 0) {
			superv = supervisionService.find(id);
		}

		map.addAttribute("superv", superv);
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid", 1L));
		List<County> rlist = countyService.findAll(0, 500, filters, new Sort(
				Sort.Direction.ASC, "id"));
		map.put("countyList", rlist);

		List<Filter> ofilters = new ArrayList<Filter>();
		ofilters.add(new Filter("otype", OfficeUserType.Supervisor.getValue()));
		if (cid != null && cid > 0) {
			ofilters.add(new Filter("locationid", cid));
		}
		List<OfficeUser> olist = officeUserService.findAll(0, 500, ofilters,
				new Sort(Sort.Direction.ASC, "id"));
		map.put("ouserList", olist);

		return "superv/nsave";
	}

	@RequestMapping("ndetail")
	public String ndetail(
			@RequestParam(value = "id", required = false, defaultValue = "0") Long id,
			ModelMap map) {
		Supervision superv = new Supervision();
		if (id != null && id > 0) {
			superv = supervisionService.find(id);
		}
		// 地点信息
		if (superv.getLocationid() != null && superv.getLocationid() > 0) {
			County county = countyService.find(superv.getLocationid());
			if (county != null) {
				superv.setLocation(county.getName());
			}

		}

		// 发起人
		if (superv.getOfficeid() != null && superv.getOfficeid() > 0) {
			OfficeUser item = officeUserService.find(superv.getOfficeid());
			if (item != null) {
				superv.setOfficename(item.getName());
			}
		}
		map.addAttribute("superv", superv);
		// 回复信息
		if (superv.getId() > 0) {
			List<Filter> filters = new ArrayList<Filter>();
			filters.add(new Filter("supervid", superv.getId()));
			List<SupervisionReply> rlist = supervisionReplyService.findAll(0,
					500, filters, new Sort(Sort.Direction.ASC, "id"));
			if (rlist != null && rlist.size() > 0) {
				for (SupervisionReply o : rlist) {
					OfficeUser replyuser = officeUserService.find(o
							.getReplyuserid());
					if (replyuser != null) {
						o.setReplyuser(replyuser.getName());
					}

				}

			}
			map.put("replyList", rlist);
		}

		return "superv/ndetail";
	}

	private PageInfo getSupervPageInfo(Integer page, Long cid) {

		PageInfo pageInfo = new PageInfo();
		int dataCount = (int) supervisionService.count(); // 添加过滤
		if (cid != null && cid > 0) {
			dataCount = (int) supervisionService.count(Filter.eq("locationid",
					cid));
		}
		int dataPage = (int) (dataCount / 12);
		if (dataCount % 12 == 0) {
			dataPage = dataPage - 1; // 分页整除 减一 以下再加一
		}
		int pageCount = dataPage + 1;

		if (page <= 0) {
			page = 1;
		}
		if (page >= pageCount) {
			page = pageCount;
		}
		pageInfo.setDataCount(dataCount);
		pageInfo.setPrePage(((page - 1) > 0) ? (page - 1) : 1);
		pageInfo.setNextPage(((page + 1) > pageCount) ? pageCount : (page + 1));
		pageInfo.setCurrentPage(page);
		pageInfo.setPageCount(pageCount);
		return pageInfo;
	}

	private List<Supervision> getSupervList(Integer page, Long cid) {

		List<Filter> filters = new ArrayList<Filter>();
		if (cid != null && cid > 0) {
			filters.add(new Filter("locationidEq", cid));
		}
		Pageable pr = new PageRequest(page, 12, new Sort(Direction.DESC, "id"));
		Page<Supervision> list = supervisionService.findAll(pr, filters);
		List<Supervision> rlist = new ArrayList<Supervision>();
		if (list != null && list.getSize() > 0) {
			rlist = list.getContent();
		}
		for (Supervision o : rlist) {
			// 地点信息
			if (o.getLocationid() != null && o.getLocationid() > 0) {

				County county = countyService.find(o.getLocationid());
				if (county != null) {
					o.setLocation(county.getName());
				}

			}

			// 发起人
			if (o.getOfficeid() != null && o.getOfficeid() > 0) {
				//
				OfficeUser item = officeUserService.find(o.getOfficeid());
				if (item != null) {
					o.setOfficename(item.getName());
				}
			}

		}
		return rlist;
	}

}
