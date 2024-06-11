package com.example.entity;

import javax.persistence.*;

@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name")
    private String name;
    @Column(name = "password")
    private String password;
    @Column(name = "sex")
    private String sex;
    @Column(name = "age")
    private Integer age;
    @Column(name = "phone")
    private String phone;
    @Column(name = "role")
    private String role;
    @Column(name = "avatar")
    private String avatar;

    @Column(name = "inmoney")
    private String inmoney;

    @Column(name = "outmoney")
    private String outmoney;

    @Column(name = "zongmoney")
    private String zongmoney;


    @Transient
    private String token;
    @Transient
    private String verCode;
    @Transient
    private String newPassword;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getVerCode() {
        return verCode;
    }

    public void setVerCode(String verCode) {
        this.verCode = verCode;
    }

    public String getOutmoney() {
        return outmoney;
    }

    public void setOutmoney(String outmoney) {
        this.outmoney = outmoney;
    }

    public String getZongmoney() {
        return zongmoney;
    }

    public void setZongmoney(String zongmoney) {
        this.zongmoney = zongmoney;
    }




    public String getInmoney() {
        return inmoney;
    }

    public void setInmoney(String inmoney) {
        this.inmoney = inmoney;
    }


    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }



    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
}
