package product;

import Utils.JdbcUtils;
import inerface.PublicInterface;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class ProductImp implements PublicInterface<Product> {
    @Override
    public int add(Product obj) {
        int n = 0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con != null ? con.prepareStatement("insert into product values(?,?,?,?)") : null;
            ps.setString(1, obj.getProductName());
            ps.setString(2,obj.getProductModel());
            ps.setString(3,obj.getProductNumber());
            ps.setString(4,obj.getProductPrice());
            n = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(null, ps, con);
            return n;
        }

    }

    @Override
    public int delete(String name) {
        int n=0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        String sql = "delete from product where productName=?";
        try {
            assert con != null;
            ps = con.prepareStatement(sql);
            ps.setString(1, name);
            n = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(null, ps, con);
            return n;
        }
    }

    @Override
    public List<Product> getAllobj() {
        return null;
    }

    @Override
    public Product find(String str) {
        return null;
    }

    @Override
    public int Update(Product obj) {
        int n=0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        String sql = "UPDATE product SET productModel=?,productNumber=?,productPrice=? Where productName=?";
        try {
            assert con != null;
            ps = con.prepareStatement(sql);
            ps.setString(1, obj.getProductModel());
            ps.setString(2,obj.getProductNumber());
            ps.setString(3, obj.getProductPrice());
            ps.setString(4, obj.getProductName());
            n = ps.executeUpdate();
            System.out.println(n);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(null, ps, con);
            return n;
        }
    }
}
