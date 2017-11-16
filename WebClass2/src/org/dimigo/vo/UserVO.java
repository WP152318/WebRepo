package org.dimigo.vo;

public class UserVO {
	
	public UserVO(String id, String name, String nickname) {
		super();
		this.id = id;
		this.name = name;
		this.nickname = nickname;
		
	}
	private String id;
	private String name;
	private String nickname;
	private String pwd;
	
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public UserVO() {}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "UserVO [id=" + id + ", name=" + name + ", nickname=" + nickname + ", pwd=" + pwd + "]";
	}
	
	

	
	
}
