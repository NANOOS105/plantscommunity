package student;
//여기에서는 StudentDTO를 List,Set,Map 넣고 출력하는 실습
/* 클래스 참조변수 = new 클래스명();
   상위클래스 참조변수 = new 하위클래스명();
   인터페이스 참조변수 = new 구현클래스명();
 
 */
import java.util.ArrayList;
import java.util.Date;
import java.util.Set;
import java.awt.dnd.Autoscroll;
import java.util.*;
import java.util.HashMap;

public class CFEx02_wihDTO {

	public static void main(String[] args) {
		System.out.println("=List에 StudentDTO객체 추가=====");
		//List에 StudentDTO객체를 추가	
		ArrayList<StudentDTO> list = new ArrayList<>();
		StudentDTO s1 = new StudentDTO("1234554","홍GD", new Date());
		System.out.println("s1="+s1);
		System.out.println("s1.toString()="+s1.toString());
		list.add(s1);
		list.add(new StudentDTO("1245455","세종대왕", new Date()));
		list.add(new StudentDTO("1234534","이순신", new Date()));
		
		//콘솔출력
		for(int i=0;i<list.size();i++) {
			StudentDTO studentDTO = list.get(i);
			System.out.println("studentDto > "+studentDTO);

		}
		
		//Set에 StudentDTO객체를 추가
		Set<StudentDTO> set = new HashSet<>();
		//여기에서는 기본생성자를 이용해서 객체를 생성 > 필드초기
		StudentDTO sDto1 = new StudentDTO();
		//setter()를 이용해서 필드값을 설정
		sDto1.setStuNum("213213");
		sDto1.setStuName("차은우");
		sDto1.setEnrollDate(new Date());
		set.add(sDto1);
		
		//2번째 학생
		StudentDTO sDto2 = new StudentDTO();
		
		sDto2.setStuNum("454654");
		sDto2.setStuName("고길동");
		sDto2.setEnrollDate(new Date());
		set.add(sDto2);
		
		//3번째 학생
		StudentDTO sDto3 = new StudentDTO();
		
		sDto3.setStuNum("4654521");
		sDto3.setStuName("둘리");
		sDto3.setEnrollDate(new Date());
		set.add(sDto3);
		
		for(StudentDTO stu : set) {
			System.out.println(stu);
		}
		
		System.out.println("\r\n=Map에 StudentDTO객체 추가===");
		//Map에 StudentDTO객체를 추가 
		Map<String,StudentDTO> map = new HashMap<>();
		map.put("3", sDto3);
		map.put("4", new StudentDTO("20392039", "박희수", new Date()));
		
		StudentDTO sDto4 = new StudentDTO();
		sDto4.setStuNum("121212");
		sDto4.setStuName("신사임당");
		sDto4.setEnrollDate(new Date());
		map.put("5",sDto4);
		map.put("6",sDto4); //value는 중복 허용해서 가능
		map.put(sDto4.getStudNum(), sDto4);
		
		Set<String> keys= map.keySet();
		Iterator<String> iter=keys.iterator();
		while(iter.hasNext()) {
			String key = iter.next();
			StudentDTO value = map.get(key);
			System.out.println(key+" : "+value);
		}
		
		
		
		

		//콘솔출력
		
		
		
		//Map에 StudentDTO객체를 추가

	}

}
