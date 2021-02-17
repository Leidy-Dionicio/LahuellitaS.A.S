/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Vista.Login;
import Vista.ModeloLogin;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {
    public static String nam, id, code;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
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
        
        ArrayList<Login> dat=new ArrayList<>();
        if(request.getParameter("btnlogin")!=null){
        String nomb, cedu, cod=""; 
        nomb=request.getParameter("nom");
        cedu=request.getParameter("ced");
        
        //JOptionPane.showMessageDialog(null, nomb+cedu);
        
            Login lo=new Login(nomb, cedu, cod);
            ModeloLogin mol=new ModeloLogin();
            dat=mol.loginusu(lo);
            /*int x=dat.size();
            JOptionPane.showMessageDialog(null, x);
            
            JOptionPane.showMessageDialog(null, "entrando al servlett");*/
            
            if(dat.size()>0){
                for(int i=0; i<dat.size(); i++){
                    lo=dat.get(i);
                    
                    
                    nam=lo.getNombre();
                    id=lo.getCedula();
                    code=lo.getCodigo();
                    
                    
                }
                //JOptionPane.showMessageDialog(null, "despues del for usu"+user+"clave:"+cl+" "+rl+" "+" "+est+" "+dc+" "+s+" "+nom);
        
                JOptionPane.showMessageDialog(null, "entró al if");
                if(nam.equals(nomb) && id.equals(cedu)){
                    
                        JOptionPane.showMessageDialog(null, "Logeo exitoso, bienvenido al sitema");
                        
                        
                        if(code.equalsIgnoreCase("R06")){
                            HttpSession ses=request.getSession();
                            ses.setAttribute("codigo", code);;
                            
                            response.sendRedirect("nomina.jsp");
                        }
                        
                        if(code.equalsIgnoreCase("R07")){
                            HttpSession ses=request.getSession();
                            ses.setAttribute("codigo", code);;
                            
                            response.sendRedirect("inventario.jsp");
                        }
                        
                    
                }
                
                
            }else{
                JOptionPane.showMessageDialog(null, "Error en el logeo");
                response.sendRedirect("log_in.jsp");
            }
            
        
        }
        
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
