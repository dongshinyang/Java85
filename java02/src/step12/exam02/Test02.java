/* 주제: 캡슐화 문법 사용 후 */
package step12.exam02;

public class Test02 {

  public static void main(String[] args) {
    // 병원의 환자를 "Patient"라는 클래스로 추상화(데이터화)시켰다.
    Patient p2 = new Patient();
    p2.name = "홍길동";
    
    // 반드시 유효한 값이 들어가야 할 변수(critical 변수)는 직접 값을 넣지 못하게 막았다.
    /*
    p2.age = 300;     // 환자 나이로 적합하지 않다.
    p2.weight = 70;
    p2.height = -30;  // 환자의 키로 적합하지 않다.
    /*/
    
    // 대신 클래스에서 제공해주는 메서드를 사용하여 값을 넣어야 한다.
    p2.setAge(300);     // 유효하지 않은 값은 셋터에서 거른다.
    p2.setWeight(70.2f);
    p2.setHeight(-30);  // 유효하지 않은 값은 셋터에서 거른다.
    
    p2.gender = false;
    
    // 값을 꺼내주는 메서드의 도움을 받는다.
    System.out.printf("나이: %d\n", p2.getAge());
    System.out.printf("몸무게: %f\n", p2.getWeight());
    System.out.printf("키: %f\n", p2.getHeight());

  }

}

/* "셋터 메서드(setter)"
 * => setAge(), setWeight(), setHeight()와 같은 메서드를 말한다.
 * => 외부에서 인스턴스 변수에 직접 접근하는 대신 이 메서드를 호출하여 값을 저장한다.
 * => 메서드 내부에서 유효한 값을 검증한 후 인스턴스 변수에 저장한다.
 * => 유효하지 않은 값을 넣는 것을 방지할 수 있다.
 * 
 * 캡슐화(encapsulation)
 * => 중요한(critical) 멤버(변수 또는 메서드)의 직접 접근을 차단하여
 *    유효하고 적절한 데이터만 들어가도록 함으로써 데이터의 신뢰성을 높인다.
 * => 유효하지 않은 데이터가 들어가는 것을 방지함으로써
 *    추상화가 무너지지 않게 한다.
 * => 특히 중요한 변수는 셋터와 겟터 메서드를 사용하여 간접적으로 값을 넣고 꺼내게 만든다. 
 */












