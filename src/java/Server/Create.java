package Server;

import Data.DataBase;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Dong Dao Hieu
 */
public class Create extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "ImageUpload";

    private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB

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
        request.setCharacterEncoding("UTF-8");
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
        request.getRequestDispatcher("../Create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        processRequest(request, response);
        String tensanpham = "";
        String GiaCa = "";
        String Style = "";
        String Size = "";
        String mota = "";
        String date = "";
        String gioitinh = "";
        String url1 = "";

        if (!ServletFileUpload.isMultipartContent(request)) {
            return;
        }

        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(MAX_FILE_SIZE);
        upload.setSizeMax(MAX_REQUEST_SIZE);
        String uploadPath = "C:\\Users\\Dong Dao Hieu\\Documents\\NetBeansProjects\\Project_Web_NgoTungSon\\web\\ImageUpload";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        try {
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);

            if (formItems != null && formItems.size() > 0) {
                // iterates over form's fields
                for (FileItem item : formItems) {
                    // processes only fields that are not form fields
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        url1 ="ImageUpload/"+fileName;
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);

                        // saves the file on disk
                        item.write(storeFile);
                    } else {
                        String fieldname = item.getFieldName();
                        String fieldvalue = item.getString();
                        if (fieldname.equals("tensanpham")) {
                            tensanpham = item.getString();
                        } else if (fieldname.equals("giaca")) {
                            GiaCa = item.getString();
                        } else if (fieldname.equals("kieu")) {
                            Style = item.getString();
                        } else if (fieldname.equals("kichco")) {
                            Size = item.getString();
                        } else if (fieldname.equals("mota")) {
                            mota = item.getString();
                        } else if (fieldname.equals("date")) {
                            date = item.getString();
                        } else if (fieldname.equals("gioitinh")) {
                            gioitinh = item.getString();
                        }
                    }
                }
            }
        } catch (Exception ex) {
        }
        request.setAttribute("notification", "ahihi");
        Data.DataBase them = new DataBase();
        them.ThemSanPham(tensanpham, GiaCa, Size, mota, date, gioitinh, url1, Style);
        request.getRequestDispatcher("../Create.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
