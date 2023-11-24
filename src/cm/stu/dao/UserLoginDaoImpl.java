package cm.stu.dao;

import cm.stu.bean.Person;
import cm.stu.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserLoginDaoImpl implements UserLoginDao{
    @Override
    public Person getLogin(Person person) {
        String sql="select * from person where userAccount='"+person.getUserAccount()+"' and userPassword='"+person.getUserPassword()+"'";
        System.out.println(sql);
        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res=null;
        Person newPerson=null;
        try{
            pre=connection.prepareStatement(sql);
            res=pre.executeQuery()  ;
            while (res.next()){
                newPerson=new Person();
                //`userAccount``userName``userGender``userBirthday``userIdCard``userPassword``userIdentify``userOtherName`
                newPerson.setUserAccount(res.getString("userAccount"));
                newPerson.setUserName(res.getString("userName"));
                newPerson.setUserGender(res.getString("userGender"));
                newPerson.setUserBirthday(res.getString("userBirthday"));
                newPerson.setUserIdCard(res.getString("userIdCard"));
                newPerson.setUserPassword(res.getString("userPassword"));
                newPerson.setUserIdentify(res.getInt("userIdentify"));
                newPerson.setUserOtherName(res.getString("userOtherName"));
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }

        return newPerson;

    }
}
