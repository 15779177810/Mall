package com.shopping.po;

public class Account {
    private Integer accountId;

    private Integer userId;

    private Double balance;



    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public Account(){
        super();
    }
    public Account(Integer userId, double balance) {
        this.userId = userId;
        this.balance = balance;
    }

	@Override
	public String toString() {
		return "Account [accountId=" + accountId + ", userId=" + userId
				+ ", balance=" + balance + "]";
	}
}