/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Constants;
import Model.RegistrationDAO;
import Model.RegistrationDTO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

/**
 *
 * @author ADMIN
 */
public class LoginController extends HttpServlet {

    private final String Login_Page = "login.jsp";
    private final String Home_Page = "index.jsp";
    private static final long serialVersionUID = 1L;

    public static String getGoogleToken(String code) throws ClientProtocolException, IOException {
        // call api to get token
        String response;
        // gui request len gooogle
        response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();
        //sever tra ve kieu Json
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        //lay access_token ( authentication token )
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
        //Hàm này được sử dụng để lấy mã truy cập  (access token) từ Google 
    }

    //get user google info
    public static RegistrationDTO getUserGoogleInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        //goi request len sever de tra ve du lieu nguoi dung
        String response = Request.Get(link).execute().returnContent().asString();
        // cast thong tin google vao user model
        RegistrationDTO googlePojo = new Gson().fromJson(response, RegistrationDTO.class);
        return googlePojo;
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
        try {
            RegistrationDAO ud = new RegistrationDAO();
            HttpSession session = request.getSession();
            String code = request.getParameter("code");
         
            if (code == null || code.isEmpty()) {
                request.getRequestDispatcher(Login_Page).forward(request, response);
            }
           
            if (code != null) {
                    //lay access token
                    String accessToken = getGoogleToken(code);
                    //khoi tao user voi thong tin google
                    RegistrationDTO user = getUserGoogleInfo(accessToken);
                    System.out.println(user);
                    // kiem tra email google co ton tai trong database hay khong
                    if (ud.checkAccExist(user.getEmail())) {
                        RegistrationDTO newUser = ud.getDataAccountGoogle(user.getEmail());
                        System.out.println(newUser);
                        RegistrationDTO u = new RegistrationDTO(
                                newUser.getuID(), newUser.getAccount(), newUser.getPassword(),
                                newUser.getPhone(), newUser.getAddress(), newUser.isRoleID(),
                                newUser.getId(), newUser.getEmail(), newUser.getName());
                        session.setAttribute("acc", u);
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                        //nếu không tồn tại tài khoản trong database thì add tài khoản
                        //vào database trước sau đó mới login
                    } else {
                        ud.addUserGoogle(user.getEmail(), user.getName());
                        RegistrationDTO newUser = ud.getDataAccountGoogle(user.getEmail());
                        RegistrationDTO u = new RegistrationDTO(
                                newUser.getuID(), newUser.getAccount(), newUser.getPassword(),
                                newUser.getPhone(), newUser.getAddress(), newUser.isRoleID(),
                                newUser.getId(), newUser.getEmail(), newUser.getName());
                        System.out.println(u);
                        session.setAttribute("acc", u);
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                    //khong phai mail @fpt.edu.vn thi bao loi ve trang login
                } else {
                    String errorEmail = "Please login by email @fpt.edu.vn";
                    request.setAttribute("errorEmail", errorEmail);
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
              
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String url = Login_Page;
            String button = request.getParameter("btAction");
            String username = request.getParameter("txtUsername");
            String password = request.getParameter("txtPassword");

            String r = request.getParameter("remember");

            // tao 3 cookie  cookieU  , cookieP  , cookieR
            Cookie cookieU = new Cookie("cUser", username);
            Cookie cookieP = new Cookie("cPass", password);
            Cookie cookieR = new Cookie("cRem", r);
            if (r != null) {
                cookieU.setMaxAge(60 * 60 * 24);  // 1 day  
                cookieP.setMaxAge(60 * 60 * 24);
                cookieR.setMaxAge(60 * 60 * 24);

            } else {
                cookieU.setMaxAge(0);
                cookieP.setMaxAge(0);
                cookieR.setMaxAge(0);

            }
            response.addCookie(cookieU);
            response.addCookie(cookieP);

            response.addCookie(cookieR);
            // save browser 

            try {

                RegistrationDAO dao = new RegistrationDAO();
                boolean result = dao.checkLogin(username, password);

                RegistrationDTO a = dao.getDataAccount(username, password);
                if (result) {
                    HttpSession session = request.getSession();
                    session.setAttribute("acc", a);
                    url = Home_Page;

                }// End if username and password matched
                else {
                    request.setAttribute("mess1", " Sai Account hoặc Password ");
                    url = Login_Page;
                }

            } catch (SQLException ex) {
                ex.printStackTrace();
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            } finally {
//            response.sendRedirect(url);
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
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
