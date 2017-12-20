package staff;

import Utils.JdbcUtils;
import inerface.PublicInterface;

import java.sql.*;
import java.util.List;

public class StaffImp implements PublicInterface<Staff> {
    @Override
    public int add(Staff obj) {
        int n = 0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con != null ? con.prepareStatement("insert into staff values(?,?,?,?,?,?,?,?)") : null;
            ps.setString(1, obj.getStaffName());
            ps.setString(2,obj.getStaffSex());
            ps.setString(3,obj.getStaffAge());
            ps.setString(4,obj.getStaffEducation());
            ps.setString(5,obj.getStaffDepartment());
            ps.setString(6,obj.getStaffDate());
            ps.setString(7,obj.getStaffDuty());
            ps.setString(8,obj.getStaffWage());
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
        String sql = "delete from staff where staffName=?";
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
    public List<Staff> getAllobj() {
        return null;
    }

    @Override
    public Staff find(String str) {
        Connection con = JdbcUtils.getConnection();
        Statement st = null;
        String sql;
        ResultSet rs;
        Staff s = new Staff();
        try {
            sql = "select * from staff where staffName='" + str + "'";

            // st =con.createStatement();
            st = con != null ? con.createStatement() : null;
            rs = st.executeQuery(sql);
            while (rs.next()) {
                s.setStaffName(rs.getString("staffName"));
                s.setStaffSex(rs.getString("staffSex"));
                s.setStaffAge(rs.getString("staffAge"));
                s.setStaffEducation(rs.getString("staffEducation"));
                s.setStaffDepartment(rs.getString("staffDepartment"));
                s.setStaffDate(rs.getString("staffDate"));
                s.setStaffDuty(rs.getString("staffDuty"));
                s.setStaffWage(rs.getString("staffWage"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(null, st, con);
            return s;
        }
    }

    @Override
    public int Update(Staff obj) {
        int n=0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        String sql = "UPDATE staff SET staffSex=?,staffAge=?,staffEducation=?,staffDepartment=?,staffDate=?,staffDuty=?,staffWage=?  Where staffName=?";
        try {
            assert con != null;
            ps = con.prepareStatement(sql);
            ps.setString(1, obj.getStaffSex());
            ps.setString(2,obj.getStaffAge());
            ps.setString(3, obj.getStaffEducation());
            ps.setString(4, obj.getStaffDepartment());
            ps.setString(5, obj.getStaffDate());
            ps.setString(6, obj.getStaffDuty());
            ps.setString(7, obj.getStaffWage());
            ps.setString(8, obj.getStaffName());
            n = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(null, ps, con);
            return n;
        }
    }

}
