package Administrator;

import com.opensymphony.xwork2.ActionSupport;
import entity.HibernateUtil;
import entity.User;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class InsertUser extends ActionSupport {
    
    private Integer type;
    private String name;
    private String password;
    private Integer class_;

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

    public Integer getClass_() {
        return class_;
    }

    public void setClass_(Integer class_) {
        this.class_ = class_;
    }

    public InsertUser() {
    }
    
    public String execute() throws Exception {
        
        Session hibernateSession;
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Transaction t = hibernateSession.beginTransaction();
        
        User user = new User();
        user.setClass_(class_);
        user.setName(name);
        user.setPassword(password);
        user.setType(type);
        
        hibernateSession.save(user);
        t.commit();
        
        return SUCCESS;

    }
    
}
