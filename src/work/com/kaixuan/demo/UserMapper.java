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

    /**
     *
     * 功能描述: 
     *
     * @param: 查主体信息
     * @return: 
     * @auther: kaixuan
     * @date: 2019/1/29 16:30
     */
    public  Map<String,String>selectUserById() ;

    /**
     * 查询技能
     * @return
     */
    public  List<Map<String,String>> selectUserSkill(String user_id) ;

    /**
     * 查询项目
     * @return
     */
    public  List<Map<String,String>> selectUserAchievement(String user_id) ;
    
    /**
     *
     * 功能描述: 
     *
     * @param:   查看详细信息
     * @return: 
     * @auther: kaixuan
     * @date: 2019/1/29 20:31
     */
    public Map<String,String> selectUserSkillXQ(String user_id);






}
