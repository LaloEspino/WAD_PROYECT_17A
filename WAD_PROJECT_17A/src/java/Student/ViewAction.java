package Student;

import com.opensymphony.xwork2.ActionSupport;
import entity.HibernateUtil;
import entity.User;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

public class ViewAction extends ActionSupport {
    
    private List list;

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
    
    public ViewAction() {
    }
    
    public String execute() throws Exception {

        Session hibernateSession;
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Query consulta = hibernateSession.createQuery("FROM Chart");
        list = consulta.list();
        
        return SUCCESS;
        
    }
    
}
