package cn.hrbcu.com.servlet.adminServlet;

import cn.hrbcu.com.entity.Institution;
import cn.hrbcu.com.service.impl.AdminServiceImpl;
import org.apache.commons.beanutils.BeanUtils;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/**
 * @author: XuYi
 * @date: 2021/5/25 21:37
 * @description: 培训机构列表管理的修改控制层
 */
@WebServlet("/UpdateInsServlet")
public class UpdateInsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*设置编码*/
        req.setCharacterEncoding("utf-8");
        /*获取数据集*/
        Map<String, String[]> map = req.getParameterMap();
        /*封装对象*/
        Institution institution = new Institution();
        try {
            BeanUtils.populate(institution,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        /*调用服务层更新*/
        AdminServiceImpl adminService = new AdminServiceImpl();
        adminService.updateIns(institution);
        /*设置路径转发*/
        String path = req.getContextPath()+"/AdminBaseServlet";
        /*转发执行*/
        resp.sendRedirect(path);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
