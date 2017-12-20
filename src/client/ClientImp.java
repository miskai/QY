package client;

import Utils.JdbcUtils;
import inerface.PublicInterface;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClientImp implements PublicInterface<Client> {
    @Override
    public int add(Client obj) {
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        int n = 0;
        try {
            ps = con != null ? con.prepareStatement("insert into client values(?,?,?,?)") : null;
            ps.setString(1, obj.getName());
            ps.setString(2, obj.getTelephone());
            ps.setString(3, obj.getAddress());
            ps.setString(4, obj.getEmail());
            n=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(null, ps, con);
            return n;
        }
    }

    @Override
    public int delete(String name) {
        int n = 0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        String sql = "delete from client where clientName=?";
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
    public List<Client> getAllobj() {
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Client> list = new ArrayList<>();
        try {
            ps = con.prepareStatement("SELECT * FROM client");
            rs = ps.executeQuery();
            while (rs.next()) {
                Client s = new Client();
                s.setName(rs.getString("ClientName"));
                s.setAddress(rs.getString("ClientAddress"));
                s.setEmail(rs.getString("clientEmail"));
                s.setTelephone(rs.getString("clientTelephone"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }


    public Client find(String name) {
        Connection con = JdbcUtils.getConnection();
        Statement st = null;
        String sql;
        ResultSet rs;
        Client s = new Client();
        try {
            sql = "select * from client where clientName='" + name + "'";

            // st =con.createStatement();
            st = con != null ? con.createStatement() : null;
            rs = st.executeQuery(sql);
            while (rs.next()) {
                s.setName(rs.getString("ClientName"));
                s.setAddress(rs.getString("ClientAddress"));
                s.setEmail(rs.getString("clientEmail"));
                s.setTelephone(rs.getString("clientTelephone"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(null, st, con);
            return s;
        }

    }

    public int Update(Client obj) {
        int n = 0;
        Connection con = JdbcUtils.getConnection();
        PreparedStatement ps = null;
        String sql = "UPDATE client SET clientTelephone=?,clientAddress=?,clientEmail=? Where clientName=?";
        try {
            assert con != null;
            ps = con.prepareStatement(sql);
            ps.setString(1, obj.getTelephone());
            ps.setString(2, obj.getAddress());
            ps.setString(3, obj.getEmail());
            ps.setString(4, obj.getName());
            n = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JdbcUtils.release(null, ps, con);
            return n;
        }
    }
}
