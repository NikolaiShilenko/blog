package net.shilenko.blog.entity;

import java.sql.Timestamp;

/**
 * @author Nikolay Shilenko
 *
 */
public class Comment extends AbstractEntity<Long> {

	private static final long serialVersionUID = 7701319921892232044L;
	
	private Account account;
	private Long idArticle;
	private String contetnt;
	private Timestamp created;
	
	public Comment() {
		super();
	}
	public Comment(Account account, Long idArticle, String contetnt, Timestamp created) {
		super();
		this.account = account;
		this.idArticle = idArticle;
		this.contetnt = contetnt;
		this.created = created;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public Long getIdArticle() {
		return idArticle;
	}
	public void setIdArticle(Long idArticle) {
		this.idArticle = idArticle;
	}
	public String getContetnt() {
		return contetnt;
	}
	public void setContetnt(String contetnt) {
		this.contetnt = contetnt;
	}
	public Timestamp getCreated() {
		return created;
	}
	public void setCreated(Timestamp created) {
		this.created = created;
	}
}
