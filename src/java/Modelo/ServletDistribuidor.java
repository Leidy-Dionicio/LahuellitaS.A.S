
package Modelo;

import Vista.ModeloDistribuidor;
import Vista.inventario1;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Sebastian Felipe
 */
@WebServlet(name = "ServletDistribuidor", urlPatterns = {"/ServletDistribuidor"})
public class ServletDistribuidor extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        if(request.getParameter("bntregistrar")!=null){
            this.insertardistribuidor(request, response);
            
        }
        if(request.getParameter("bntactualizar")!=null){
            this.actualizardistribuidor(request, response);
        }
        
    }
    
    protected void insertardistribuidor(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession dat=request.getSession();
        String usu=(String)dat.getAttribute("codigo");
        
        if(usu==null){
            JOptionPane.showMessageDialog(null, "no se guardaron los datos");
            response.sendRedirect("log_in.jsp");
        }
        else{
            String  n, t, d;
            int id;
            boolean v;
            id=Integer.parseInt(request.getParameter("iddi"));
            n=request.getParameter("nam");
            t=request.getParameter("tel");
            d=request.getParameter("dir");
            
            //JOptionPane.showMessageDialog(null, "Entro al insert empleados"+id+n+t+d);
            
            inventario1 iv1=new inventario1(id, n, t, d);
            ModeloDistribuidor md=new ModeloDistribuidor();
            v=md.insertardistribuidor(iv1);
            if(v){

                //JOptionPane.showMessageDialog(null, "Datos insertados");
                response.sendRedirect("inventario.jsp");
            }else{
                JOptionPane.showMessageDialog(null, "Datos no guardados");
                response.sendRedirect("inventario.jsp");
            }
 
        
        
        }
        
    }
    
    
    protected void actualizardistribuidor(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession dat=request.getSession();
        String usu=(String)dat.getAttribute("codigo");
        
        if(usu==null){
            JOptionPane.showMessageDialog(null, "no se guardaron los datos");
            response.sendRedirect("log_in.jsp");
        }
        else{
            String  n, t, d;
            int id;
            boolean v;
            id=Integer.parseInt(request.getParameter("iddi"));
            n=request.getParameter("nam");
            t=request.getParameter("tel");
            d=request.getParameter("dir");
            
            JOptionPane.showMessageDialog(null, "Entro al UPD Distribuidor"+id+n+t+d);
            
            inventario1 iv1=new inventario1(id, n, t, d);
            ModeloDistribuidor md=new ModeloDistribuidor();
            v=md.modificardistribuidor(iv1);
            if(v){

                //JOptionPane.showMessageDialog(null, "Datos insertados");
                response.sendRedirect("inventario.jsp");
            }else{
                JOptionPane.showMessageDialog(null, "Datos no guardados");
                response.sendRedirect("inventario.jsp");
            }
 
        
        
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
