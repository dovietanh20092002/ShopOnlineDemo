    /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class Constants {
   // Biến này chứa ID khách hàng được cấp bởi Google khi  đăng ký ứng dụng với Google API Console
    public static String GOOGLE_CLIENT_ID = "190979757404-qqtfgjs7udf5paclvgu2fdnd50tqqng0.apps.googleusercontent.com";
//Biến này chứa mã bí mật của khách hàng liên quan đến ID khách hàng
    public static String GOOGLE_CLIENT_SECRET = "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";
// Biến này đại diện cho Redirect URI hoặc URL chuyển hướng 
    public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/PROJECT/login";
//Biến này chứa URL được sử dụng để trao đổi mã xác thực lấy mã truy cập.
    public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";

    public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";

    public static String GOOGLE_GRANT_TYPE = "authorization_code";
}
