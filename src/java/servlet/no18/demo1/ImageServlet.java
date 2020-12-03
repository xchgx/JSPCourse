/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.no18.demo1;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 陈老师
 */
public class ImageServlet extends HttpServlet {

    private char charTable[] = {
        'a', 'b', 'c', 'd', 'e', 'f',
        'g', 'h', 'I', 'j', 'k', 'l',
        'm', 'n', 'o', 'p', 'q', 'r',
        's', 't', 'u', 'v', 'w', 'x',
        'y', 'z', '0', '1', '2', '3',
        '4', '5', '6', '7', '8', '9'};

    private String getVeriPic(int width, int height, OutputStream os) {
        if (width <= 0) {
            width = 60;
        }
        if (height <= 0) {
            height = 20;
        }
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics graphics = image.getGraphics();
        graphics.setColor(new Color(0xDCDCDC));
        graphics.fillRect(0, 0, width, height);
        graphics.drawRect(0, 0, width - 1, height - 1);
        String str = "";
        for (int i = 0; i < 4; i++) {
            str += charTable[(int) (charTable.length * Math.random())];
        }
        graphics.setColor(Color.black);
        graphics.setFont(new Font("Atlantic Inline", Font.PLAIN, 18));
        String str2 = str.substring(0, 1);
        graphics.drawString(str2, 8, 17);
        str2 = str.substring(1, 2);
        graphics.drawString(str2, 20, 15);
        str2 = str.substring(2, 3);
        graphics.drawString(str2, 35, 18);
        str2 = str.substring(3, 4);
        graphics.drawString(str2, 45, 15);
        Random rand = new Random();
        for (int i = 0; i < 10; i++) {
            int x = rand.nextInt(width);
            int y = rand.nextInt(height);
            graphics.drawOval(x, y, 1, 1);
        }
        graphics.dispose();
        try {
            ImageIO.write(image, "JPEG", os);
        } catch (IOException ex) {
            Logger.getLogger(ImageServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return str;
    }

    public static String getVeriCode(HttpSession session) {
        return (String) session.getAttribute("veriCode");
    }

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
        String str = getVeriPic(0, 0, response.getOutputStream());
        request.getSession().setAttribute("veriCode", str);
//        
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet ImageServlet</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet ImageServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
