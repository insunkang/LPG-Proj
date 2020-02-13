package game.LPG.soccerteam;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TeamController {
	@Autowired
	TeamService service;
	
	//팀명 중복검사
	@RequestMapping(value="/team/idCheck.do",
					method=RequestMethod.GET,
					produces="application/text;charset=utf-8")
	public @ResponseBody String idCheck(String teamName) {
		boolean state = service.idCheck(teamName);
		String result = "";
		if(teamName.length()>=2) {
			if(state) {
				result = "사용 불가능";
			}else {
				result = "사용 가능";
			}
		}else {
			result = "최소 2글자 이상";
		}
		return result;
	}
	//팀 생성페이지
	@RequestMapping(value="/team/create.do", method=RequestMethod.GET)
	public String teamCreateView() {
		return "teamCreate";
	}
	
	//팀 생성하기
	@RequestMapping(value="/team/create.do", method=RequestMethod.POST)
	public String teamCreate(TeamDTO dto) {
		service.insert(dto);
		return "redirect:/team/search.do";
	}
	
	//팀원 가입신청하기
	@RequestMapping(value="/team/apply.do", method=RequestMethod.POST)
	   public String teamapply(TeamMemberDTO dto) {
	      service.teamapply(dto);
	      return "redirect:/team/myteam.do";
	   }
	
	//팀원 신청현황
	@RequestMapping("/team/apsearch.do")
	   public ModelAndView tmemberView(int teamNo) {
	      ModelAndView mav = new ModelAndView();
	      List<TeamMemberDTO> list = service.tmemberSearchList(teamNo);
	      mav.addObject("tmemberlist", list);
	      mav.setViewName("tmemberSearch");
	      return mav;
	   }
	
	//팀원 수락거절 하기
	   @RequestMapping(value="/team/memdelete.do", method=RequestMethod.POST)
	   public String memUpdate(HttpServletRequest request) {
	      String[]teamNos = request.getParameterValues("teamNo");
	      String action = request.getParameter("action");
	      
	      for(int i = 0; i < teamNos.length;i++) {
	         System.out.println("teamNo=>"+teamNos[i]);
	      }
	      System.out.println("action=>"+action);
	      //승인시
	      if(action.equals("approve")) {
	         service.tmemberUpdate(teamNos);
	      }
	      //거절시
	      else if (action.equals("deny")) {
	         service.tmemreject(teamNos);
	      }
	      return "/team/apsearch.do";
	   }
	
	//팀 수정페이지
	@RequestMapping(value="/team/modyview.do", method=RequestMethod.GET)
	public ModelAndView teamModyView(TeamDTO teaminfo) {
		System.out.println("=============>"+teaminfo);
		ModelAndView mav = new ModelAndView();
		TeamDTO list = service.teaminfo(teaminfo);
		System.out.println("==============>"+list);
		mav.addObject("teaminfo", list);
		mav.setViewName("teamMody");
		return mav;
	}
	
	//팀 정보 수정하기
	@RequestMapping(value="/team/teammody.do", method=RequestMethod.POST)
	public String teamMody(TeamDTO dto) {
		service.teamUpdate(dto);
		return "redirect:/team/search.do";
	}
	
	//팀 전체 목록조회하기
	@RequestMapping("/team/search.do")
	public ModelAndView teamSearchView() {
		ModelAndView mav = new ModelAndView();
		List<TeamDTO> list = service.teamSearchList();
		mav.addObject("teamlist", list);
		mav.setViewName("teamSearch");
		return mav;
	}

	//팀 목록 검색하기
	@RequestMapping("/team/detailsearch.do")
	public ModelAndView searchTeam(TeamDTO tds) {
		ModelAndView mav = new ModelAndView();
		List<TeamDTO> list = service.searchTeam(tds);
		mav.addObject("teamGender", tds.getTeamGender());
		mav.addObject("teamAge", tds.getTeamAge());
		mav.addObject("teamLocation", tds.getTeamLocation());
		mav.addObject("teamName", tds.getTeamName());
		mav.addObject("teamNo", tds.getTeamNo());
		mav.addObject("teamlist", list);
		mav.setViewName("teamSearch");
		return mav;
	}
	
	//내 팀 정보보기
	@RequestMapping("/team/myteam.do")
	public ModelAndView myteam(TeamDTO teaminfo, TeamMemberDTO tminfo) {
		ModelAndView mav = new ModelAndView();
		TeamDTO list = service.teaminfo(teaminfo);
		List<TeamMemberDTO> tm = service.teaminfo(tminfo);
		mav.addObject("teaminfo", list);
		mav.addObject("tmlist", tm);
		mav.setViewName("teamMyteam");
		return mav;
	}
	
	
	/*@RequestMapping("/team/myteam.do")
	public String myteam() {
		return "teamMyteam";
	}*/
	
	
	//팀 멤버 등급변경 페이지
	@RequestMapping("/team/Mgrade.do")
	public ModelAndView mgrade(TeamMemberDTO tminfo) {
		ModelAndView mav = new ModelAndView();
		List<TeamMemberDTO> tm = service.teaminfo(tminfo);
		mav.addObject("tmlist", tm);
		mav.setViewName("teamMgrade");
		return mav;
	}
	
	//팀 멤버 등급변경하기   "***********count"+meminfo.getMeminfo().get(i).getCount()+
	@RequestMapping(value="/team/teamMemMody.do", method=RequestMethod.POST)
	public String teamGradeMody(MemInfoModyDTO meminfo) {
		for(int i=0;i<meminfo.getMeminfo().size();i++) {
		System.out.println("***********backnum"+meminfo.getMeminfo().get(i).getBackNum()+
							"**********tmGrade=>"+meminfo.getMeminfo().get(i).getTmGrade()+
							"**********tmAbil=>"+meminfo.getMeminfo().get(i).getTmAbility()+
							"**********tmTend=>"+meminfo.getMeminfo().get(i).getTmTend());}
		service.teamMemberUpdate(meminfo);
		return "redirect:/team/search.do";
	}
	
	//멤버 정보보기
	@RequestMapping("/team/memInfo.do")
	public ModelAndView meminfoView(TeamMemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		TeamMemberDTO meminfo = service.timwonjungbo(dto);
		mav.addObject("teammeminfo", meminfo);
		return mav;
	}
}
