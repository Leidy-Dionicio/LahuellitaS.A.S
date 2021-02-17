/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Vista.ModeloEmpleadoN;
import Vista.nomina1;
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
@WebServlet(name = "ServletEmpleadoN", urlPatterns = {"/ServletEmpleadoN"})
public class ServletEmpleadoN extends HttpServlet {

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
        
        if(request.getParameter("bntregistrar")!=null){
            this.insertarempleados(request, response);
            
        }
        if(request.getParameter("bntactualizar")!=null){
            this.actualizarempleados(request, response);
            
        }
        
    }
    
    protected void insertarempleados(HttpServletRequest request, HttpServletResponse response)
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
            String c, n, a, t, s;
            boolean v;
            c=request.getParameter("ced");
            n=request.getParameter("nam");
            a=request.getParameter("ape");
            t=request.getParameter("tel");
            s=request.getParameter("sex");
            
            //JOptionPane.showMessageDialog(null, "Entro al insert empleados"+c+n+a+t+s);
            
            nomina1 cr=new nomina1(c, n, a, t, s);
            ModeloEmpleadoN mc=new ModeloEmpleadoN();
            v=mc.insertarempleado(cr);
            if(v){

                //JOptionPane.showMessageDialog(null, "Datos insertados");
                response.sendRedirect("nomina.jsp");
            }else{
                JOptionPane.showMessageDialog(null, "Datos no guardados");
                response.sendRedirect("nomina.jsp");
            }
 
        
        
        }
        
    }
    
    protected void actualizarempleados(HttpServletRequest request, HttpServletResponse response)
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
            String c, n, a, t, s;
            boolean v;
            c=request.getParameter("ced");
            n=request.getParameter("nam");
            a=request.getParameter("ape");
            t=request.getParameter("tel");
            s=request.getParameter("sex");
            
            //JOptionPane.showMessageDialog(null, "Entro al insert empleados"+c+n+a+t+s);
            
            nomina1 cr=new nomina1(c, n, a, t, s);
            ModeloEmpleadoN mc=new ModeloEmpleadoN();
            v=mc.modificarempleado(cr);
            if(v){

                //JOptionPane.showMessageDialog(null, "Datos modificados");
                response.sendRedirect("nomina.jsp");
            }else{
                JOptionPane.showMessageDialog(null, "Datos no guardados");
                response.sendRedirect("nomina.jsp");
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
