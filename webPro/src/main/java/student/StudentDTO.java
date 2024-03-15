package student;

import java.util.Date;

//DAO(Data Access  Object) : DB에 접근용도의 클래스
//DTO(Data Transfer Object) : Data를 전송역할하는 클래스 
//						  	  읽기getter 설정 setter
//VO(Value Object) : value를 보관, 읽기전용 getter
//					 불변의 특징.
//					 hashCode()오버라이딩, equals()오버라이딩

public class StudentDTO extends Object{
	//field [접제] [modifier] 타입 필드명[=초기값]
	private String stuName;
	private String stuNum;
	private Date enrollDate;
	
	//constructor[접제] 클래스명(파라미터리스트){}
	public StudentDTO() {}
	public StudentDTO(String stuNum,String stuName
			,Date enrollDate){
		this.stuNum = stuNum;
		this.stuName = stuName;
		this.enrollDate = enrollDate;
	}
	 
	//method[접제] [modifier] 리턴타입 메서드명(파라미터리스트){}
	
	//getter
	public String getStudName() {
		return this.stuName;
	}
	
	//setter
	public void setStuName(String stuName) {
		 this.stuName= stuName;
	}
	
	
	//getter
	public String getStudNum() {
		return this.stuNum;
	}
	
	//setter
	public void setStuNum(String stuNum) {
		this.stuNum= stuNum;
	}
	
	
	//getter
	public Date getEnrollDate() {
		return this.enrollDate;
	}
	
	//setter
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate= enrollDate;
	}
	@Override
	public String toString() {
		return "StudentDTO [stuName=" + stuName + ", stuNum=" + stuNum + ", enrollDate=" + enrollDate + "]";
	}
	
//	@Override
//	public String toString() {
//	return "학번="+stuNum+"/학생명="+stuName+"/입학일="+this.enrollDate;
//	}
	
}
