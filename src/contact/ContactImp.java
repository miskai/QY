package contact;

import Utils.JdbcUtils;;
import inerface.PublicInterface;

import java.sql.*;
import java.util.List;

public class ContactImp implements PublicInterface<Contact> {

    @Override
    public int add(Contact obj) {
        int n = 0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con != null ? con.prepareStatement("insert into contact values(?,?,?,?,?,?)") : null;
            ps.setString(1, obj.getClientName());
            ps.setString(2, obj.getContactName());
            ps.setString(3, obj.getContactContents());
            ps.setString(4, obj.getContactStart());
            ps.setString(5, obj.getContactEnd());
            ps.setString(6,obj.getStaffName());
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
        String sql = "delete from contact where contactName=?";
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
    public List<Contact> getAllobj() {
        return null;
    }

    @Override
    public Contact find(String str) {
        Connection con = JdbcUtils.getConnection();
        Statement st = null;
        String sql;
        ResultSet rs;
        Contact s = new Contact();
        try {
            sql = "select * from contact where contactName='" + str + "'";

            // st =con.createStatement();
            st = con != null ? con.createStatement() : null;
            rs = st.executeQuery(sql);
            while (rs.next()) {
                s.setClientName(rs.getString("ClientName"));
                s.setContactName(rs.getString("ContactName"));
                s.setContactContents(rs.getString("ContactContents"));
                s.setContactStart(rs.getString("ContactStart"));
                s.setContactEnd(rs.getString("ContactEnd"));
                s.setStaffName(rs.getString("StaffName"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(null, st, con);
            return s;
        }
    }

    @Override
    public int Update(Contact obj) {
        int n = 0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        String sql = "UPDATE contact SET contactContents=?,contactStart=?,contactEnd=?,StaffName=?,clientName=? Where contactName=?";
        try {
            assert con != null;
            ps = con.prepareStatement(sql);
            ps.setString(1, obj.getContactContents());
            ps.setString(2, obj.getContactStart());
            ps.setString(3, obj.getContactEnd());
            ps.setString(4, obj.getStaffName());
            ps.setString(5,obj.getClientName());
            ps.setString(6, obj.getContactName());
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
