package Login;

import com.opensymphony.xwork2.ActionSupport;
import entity.HibernateUtil;
import entity.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class LoginActionSupport extends ActionSupport {
    
    private Integer type;
    private String name;
    private String password;

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public LoginActionSupport() {
    }

    public String execute() throws Exception {
        
        Session hibernateSession;
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Transaction t = hibernateSession.beginTransaction();
        User user = (User)hibernateSession.createQuery("FROM User WHERE "
                + " name = '"  + name 
                + "' AND password = '"  + password + "'").uniqueResult();
        t.commit();
        
        if(name!=null && password!=null &&(!name.equals(""))&&(!password.equals(""))) {
            if (user != null) {
                switch (user.getType()) {
                    case 1:
                        return "ADM";
                    case 2:
                        return "PRO";
                    case 3:
                        return "ALM";
                    default:
                        return "FAIL";
                }
            }
        }
        
        return "FAIL";

    }
    
}
