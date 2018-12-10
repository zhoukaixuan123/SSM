package work.com.kaixuan.demo;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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


    public void insertUser(){
        Map<String,String> map = new HashMap<String, String>();
        map.put("name","张三");
        map.put("age","12");
        map.put("job","aa");
        map.put("id","111");

        userMapper.insertUser(map);
    }
}
