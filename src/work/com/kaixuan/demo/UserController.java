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
     *
     * 功能描述:
     *
     * @param: []
     * @return: java.lang.String
     * @auther: Mr.zhoukx
     * @date: 2018/12/11 11:14
     */
    @RequestMapping("/getData")
    public ModelAndView getDate( HttpServletRequest request){
      String userid = request.getParameter("id");
      ModelAndView maodel = new ModelAndView();
     Map<String,String> map = userService.selectUserById();
       maodel.addObject("map",map);
       maodel.setViewName("index");
     return  maodel;
    }
}
