package cs;

import Utils.JdbcUtils;
import inerface.PublicInterface;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class CsImp implements PublicInterface<Cs> {
    @Override
    public int add(Cs obj) {
        int n = 0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con != null ? con.prepareStatement("insert into cs values(?,?,?)") : null;
            ps.setString(1, obj.getClientName());
           ps.setString(2,obj.getClientOpinion());
            ps.setString(3,obj.getStaffName());
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
        String sql = "delete from cs where clientName=?";
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
    public List<Cs> getAllobj() {
        return null;
    }

    @Override
    public Cs find(String str) {
        return null;
    }

    @Override
    public int Update(Cs obj) {
        int n=0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        String sql = "UPDATE cs SET clientOpinion=? Where clientName=? AND StaffName=?";
        try {
            assert con != null;
            ps = con.prepareStatement(sql);
            ps.setString(1, obj.getClientOpinion());
            ps.setString(2,obj.getClientName());
            ps.setString(3, obj.getStaffName());
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
