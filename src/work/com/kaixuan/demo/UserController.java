package work.com.kaixuan.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @Auther: Mr.zhoukx
 * @Date: 2018/12/8 18:18
 * @Description: 描述
 */
@Controller
public class UserController {
    //默认 是 bytype  注入  所以 要用  这个指定一下
    @Resource(name = "userServiceImpl")
    private  UserServiceImpl userService;

    /**
     * 添加简历
     * @return
     */
    public  String addUser(){
        return  null;
    }




    /**
     *
     * 功能描述:
     *
     * @param: []
     * @return: java.lang.String
     * @auther: Mr.zhoukx
     * @date: 2018/12/11 11:14
     */
    @RequestMapping("/index")
    public ModelAndView getDate(HttpServletRequest request) {

        ModelAndView maodel = new ModelAndView();
        Map<String, String> mapUser = userService.selectUserById();
        List<Map<String, String>> skilMap = userService.selectUserSkill(mapUser.get("user_skill_id"));
        List<Map<String, String>> mapAchievement = userService.selectUserAchievement(mapUser.get("user_achievement_id"));
        maodel.addObject("mapUser", mapUser);
        maodel.addObject("skilMap", skilMap);
        maodel.addObject("mapAchievement", mapAchievement);
        maodel.setViewName("index");
        return maodel;
    }

    /**
     *
     * 功能描述:
     *          地理位置展示
     * @param:
     * @return:
     * @auther: kaixuan
     * @date: 2019/1/11 15:49
     */
    @RequestMapping("/address")
    public ModelAndView getDt(){
        ModelAndView maodel = new ModelAndView();
        maodel.setViewName("address");
        return  maodel;
    }
    /**
     *
     * 功能描述: 
     *
     * @param:    查看技能详情
     * @return: 
     * @auther: kaixuan
     * @date: 2019/1/29 20:25
     */
    @RequestMapping("selectXQ")
    public ModelAndView  selectXq(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView("xq");
        String userid = request.getParameter("user_id");
        Map<String,String> map = userService.selectUserSkillXQ(userid);
        modelAndView.addObject("map",map);
        return  modelAndView;
    }

    /**
     *
     * 功能描述:    查看更多的详情
     *
     * @param:
     * @return:
     * @auther: kaixuan
     * @date: 2019/1/30 16:59
     */
    @RequestMapping("jsMethod")
    public ModelAndView jsMethod(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView("xm");
        String userid = "00"+request.getParameter("user_id");
        List<Map<String, String>> mapAchievement = userService.selectUserAchievement(userid);
        modelAndView.addObject("mapAchievement",mapAchievement);

        return  modelAndView;
    }

}
