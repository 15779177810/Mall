package com.shopping.po;

import java.util.Date;

public class GoodComment {
    private Integer commentId;

    private Integer userId;

    private Integer goodId;

    private String goodComment;

    private Date time;
    
    private Goods goods;
    
    

    public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public String getGoodComment() {
        return goodComment;
    }

    public void setGoodComment(String goodComment) {
        this.goodComment = goodComment == null ? null : goodComment.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}