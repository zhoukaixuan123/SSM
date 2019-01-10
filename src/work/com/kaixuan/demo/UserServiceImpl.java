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

    public  List<Map<String,String>>  selectUserById() {
          return  userMapper.selectUserById();
    }



}
