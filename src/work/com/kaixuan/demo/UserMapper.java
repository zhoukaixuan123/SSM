package work.com.kaixuan.demo;

import work.com.kaixuan.demo.UserModel;

import java.util.List;
import java.util.Map;

/**
 * @Auther: Mr.zhoukx
 * @Date: 2018/12/7 22:30
 * @Description: 描述
 */
public interface UserMapper  {

    public List<UserModel> selectUserById() ;

    public  void  insertUser(Map<String,String> map);
}
