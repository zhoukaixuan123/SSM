package work.com.kaixuan.demo;

import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Auther: Mr.zhoukx
 * @Date: 2018/12/8 18:17
 * @Description: 描述
 */
public interface UserService {

    public List<UserModel> selectUserById() ;
}
