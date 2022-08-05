package service;

//CRUD의 기능은 필수적으로 가져야 함
//예외처리는 미루어둠
public interface UserService {
	public boolean creatUser() throws Exception;
	public void getUser() throws Exception;
	public boolean updateUser() throws Exception;
	public boolean deleteUser() throws Exception;
	
	
	
}
