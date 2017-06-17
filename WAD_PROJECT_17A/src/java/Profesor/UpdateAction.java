package Profesor;

import com.opensymphony.xwork2.ActionSupport;
import entity.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Miguel
 */
public class UpdateAction extends ActionSupport {
    
    private List list;

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list;
    }
    
    public UpdateAction() {
    }
    
    public String execute() throws Exception {
        Session hibernateSession;
        hibernateSession = HibernateUtil.getSessionFactory().openSession();
        Query consulta = hibernateSession.createQuery("FROM Chart");
        list = consulta.list();
        
        return SUCCESS;
    }
    
}
