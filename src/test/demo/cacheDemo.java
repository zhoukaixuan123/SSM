package demo;





import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.SqlSessionManager;
import org.apache.ibatis.session.defaults.DefaultSqlSessionFactory;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.SqlSessionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import work.com.kaixuan.cacheStudy.CacheStudyMapper;

import javax.annotation.Resource;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.List;
import java.util.Map;

/**
 * @author gacl
 * 测试二级级缓存
 */
public class cacheDemo {

    private SqlSessionFactory sqlSessionFactory;
    @Before
    public void setup() throws IOException
    {   String resource="config/mybatis.xml";
        InputStream inputStream= Resources.getResourceAsStream(resource);
        //主要是生成SqlsessionFactory。
        this.sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
    }
    @Test
    public void testMaper()
    {
        SqlSession sqlSession1=null;
        SqlSession sqlSession2=null;
        sqlSession1=sqlSessionFactory.openSession();
        sqlSession2=sqlSessionFactory.openSession();
        //生成代理类
        CacheStudyMapper orderMapper=sqlSession1.getMapper(CacheStudyMapper.class);

        CacheStudyMapper orderMapper2=sqlSession2.getMapper(CacheStudyMapper.class);




        com.sample.CasePubCodetable  user=orderMapper.getCode();
        System.out.println("缓存 第一次"+user.toString());
        //这个close必须要加，不然缓存存不进去。
        sqlSession1.close();


        com.sample.CasePubCodetable  user2=orderMapper2.getCode();
        System.out.println("缓存 第二次"+user2.toString());
        sqlSession2.close();

    }
}