package work.com.kaixuan.demo;

import java.io.Serializable;

/**
 * @Auther: Mr.zhoukx
 * @Date: 2018/12/7 22:26
 * @Description: 描述
 */
public class UserModel  {
    
    

    private  String  name;
    private  String  age;
    private  String    job;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }
}
