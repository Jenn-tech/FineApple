package usersJoin;

public class usersJoinVo {
	private String id;
	private String password;
    private String passwordcheck;
    private String name;
    private String phone;
    private String address;
    private String email;
    private String date;
    
    // 생성자
    public usersJoinVo() {
    }
    
    public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordcheck() {
		return passwordcheck;
	}
	public void setPasswordcheck(String passwordcheck) {
		this.passwordcheck = passwordcheck;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	@Override
	public String toString() {
		return "usersJoinVo [id=" + id + ", password=" + password + ", passwordcheck=" + passwordcheck + ", name="
				+ name + ", phone=" + phone + ", address=" + address + ", email=" + email + ", date=" + date + "]";
	}
	
}