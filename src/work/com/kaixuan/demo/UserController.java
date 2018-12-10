package work.com.kaixuan.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

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

    @RequestMapping("/index")
    public ModelAndView  getIndex(){
        ModelAndView model = new ModelAndView();
       List<UserModel> models = userService.selectUserById();
        model.addObject(models);
        for(UserModel lis:models){
            System.out.println(lis.getAge());
        }

       model.setViewName("cart");

        userService.insertUser();
       return  model;

    }

}
