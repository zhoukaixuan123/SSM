package work.com.kaixuan.cacheStudy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @Auther: kaixuan
 * @Date: 2019/3/4 11:42
 * @Description:
 */
@Service
public class CacheStudyServiceImpl implements CacheStudyService {

    @Autowired
    private CacheStudyMapper cacheStudyMapper;


    public List<Map<String,String>> getCode() {
        return cacheStudyMapper.getCode();
    }
}
