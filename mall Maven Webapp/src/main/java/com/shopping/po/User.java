package com.shopping.po;

public class User {
    private Integer userId;

    private String userName;

    private String username;

    private String password;

    private String address;

    private String tel;

    private Integer sys;

    public User() {}
    
	public User(Integer sys) {
		super();
		this.sys = sys;
	}
  
    public User(String userName,String address, String tel) {
		super();
		this.userName = userName;
		this.address = address;
		this.tel = tel;
	}
    
	public User(Integer userId, String userName, String username2,
			String password, String address, String tel) {
		super();
		this.userId = userId;
		this.userName = userName;
		username = username2;
		this.password = password;
		this.address = address;
		this.tel = tel;
	}

	public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public Integer getSys() {
        return sys;
    }

    public void setSys(Integer sys) {
        this.sys = sys;
    }

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", username=" + username + ", password=" + password
				+ ", address=" + address + ", tel=" + tel + ", sys=" + sys
				+ "]";
	}
}