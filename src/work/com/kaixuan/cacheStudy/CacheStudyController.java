package work.com.kaixuan.cacheStudy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @Auther: kaixuan
 * @Date: 2019/3/4 11:42
 * @Description:
 */
@Controller
public class CacheStudyController {

    @Resource(name = "cacheStudyServiceImpl")
    private  CacheStudyService cacheStudyService;

    @RequestMapping("getCode")
    @ResponseBody
    public String getCode(){
        com.sample.CasePubCodetable  map = cacheStudyService.getCode();
        return "111";
    }

}
