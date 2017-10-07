package com.shopping.po;

import java.util.Date;

public class Business {
    private Integer notesId;

    private Integer userId;

    private String type;

    private Date date;

    private String direction;

    private Double balance;

    public Integer getNotesId() {
        return notesId;
    }

    public void setNotesId(Integer notesId) {
        this.notesId = notesId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction == null ? null : direction.trim();
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }
}