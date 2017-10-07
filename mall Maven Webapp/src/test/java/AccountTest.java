import com.shopping.exception.AccountException;
import com.shopping.mapper.AccountMapper;
import com.shopping.service.AccountService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by 华哥哥 on 2017/9/11.
 */
public class AccountTest {
    AccountService accountService;

    @Before
    public void before(){
        ApplicationContext beans = new ClassPathXmlApplicationContext("beans.xml");
        accountService = (AccountService)beans.getBean("accountServiceImp");
    }
    @Test
    public void disposeTest(){
        try {
            accountService.deposit(8,-100);
        } catch (AccountException e) {
            System.err.println(e.getMessage());
        }
    }

    @Test
    public void drawTest(){
        try {
            accountService.draw(11,100);
        } catch (AccountException e) {
            System.err.println(e.getMessage());
        }
    }

    @Test
    public void consume(){
        try {
            accountService.consume(9,8,10);
        } catch (AccountException e) {
            System.err.println(e.getMessage());
        }
    }


}
