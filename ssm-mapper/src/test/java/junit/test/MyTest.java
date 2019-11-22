package junit.test;

import com.ujiuye.mapper.EmployeeMapper;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    @Test
    public void test(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext-dao.xml");
        EmployeeMapper bean = context.getBean(EmployeeMapper.class);
        System.out.println(bean.queryByAll());
    }
}
