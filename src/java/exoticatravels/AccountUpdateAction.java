/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exoticatravels;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author rmn
 */
public class AccountUpdateAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        AccountUpdateFormBean rBean = (AccountUpdateFormBean)form;
        String uName = rBean.getName();
        String pwd = rBean.getPassword();
        String address = rBean.getAddress();
        String  state = rBean.getState();
        String country = rBean.getCountry();
        String passport = rBean.getPassport();
        String phone = rBean.getPhone();
        String email = rBean.getEmail();
        String criteria = rBean.getCriteria();
        String userid = request.getAttribute("User").toString();
        
        if(passport.equals(""))
            passport=null;
        if(phone.equals(""))
            phone=null;
        if(email.equals(""))
            email=null;
        if(criteria.equals(""))
            criteria=null;
        
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("ExoticaTravelsPU");
        EntityManager em = emf.createEntityManager();
        EntityTransaction userTransaction = em.getTransaction();
        userTransaction.begin();
        
        if(!(uName.equals("")) && !(uName.equals(" ")) && !(uName==null) )
        {
            Query query = em.createNativeQuery("UPDATE Registration SET username = '" + uName + "' WHERE userid='" + userid + "';");
            List idList = query.getResultList();
        }
        
        if(!(pwd.equals("")) && !(pwd.equals(" ")) && !(pwd==null) )
        {
            Query query = em.createNativeQuery("UPDATE Registration SET password = '" + pwd + "' WHERE userid='" + userid + "';");
            List idList = query.getResultList();
        }
        
        return mapping.findForward(SUCCESS);
    }
}
