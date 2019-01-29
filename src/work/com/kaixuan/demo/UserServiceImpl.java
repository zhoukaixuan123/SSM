package work.com.kaixuan.demo;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @Auther: Mr.zhoukx
 * @Date: 2018/12/8 18:18
 * @Description: 描述
 */
@Service
public class UserServiceImpl  implements UserService{

    @Resource
    private UserMapper userMapper;

    public  Map<String,String> selectUserById() {
          return  userMapper.selectUserById();
    }

    public List<Map<String, String>> selectUserSkill(String user_id) {
        return userMapper.selectUserSkill(user_id);
    }

    public List<Map<String, String>> selectUserAchievement(String user_id) {
        return userMapper.selectUserAchievement(user_id);
    }

    public Map<String, String> selectUserSkillXQ(String user_id) {
        return userMapper.selectUserSkillXQ(user_id);
    }


}
