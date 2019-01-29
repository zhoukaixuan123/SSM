package demo;


import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.annotation.Resource;

import work.com.kaixuan.demo.UserController;
import work.com.kaixuan.demo.UserMapper;
import work.com.kaixuan.demo.UserModel;
import work.com.kaixuan.demo.UserService;

import java.util.List;
import java.util.Map;


public class tesy {

    @Resource
    private UserMapper userMapper;
    @Resource
    private UserService userService;
    @Resource
    private UserController userController;

    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        //测试是否能够加载配置文件
        applicationContext = new ClassPathXmlApplicationContext("classpath:/spring.xml");//得到spring容器
    }

    @Test
    public void testSelectUserById() throws Exception {
        System.out.println(applicationContext);
        //获得对象
        UserMapper userMapper = (UserMapper) applicationContext.getBean("userMapper");
        System.out.println(userMapper);
        //List<Map<String,String>>  user = userMapper.selectUserById();
        //  System.out.println(user);

    }
    @Test
    public  void  getObjec(){
        //System.out.println(userService);
        System.out.println(userController);
        System.out.println(userMapper);
    }

}