package work.com.kaixuan.demo;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Auther: Mr.zhoukx
 * @Date: 2018/12/8 18:18
 * @Description: 描述
 */
@Service
public class UserServiceImpl {

    @Resource
    private UserMapper userMapper;

    public List<UserModel> selectUserById() {
          return  userMapper.selectUserById();
    }
}
