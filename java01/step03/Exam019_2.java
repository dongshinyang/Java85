//주제: 메모리를 사용하는 방법 - 메모리 초기화

public class Exam019_2 {
  public static void main(String[] args) {
    int v1; // 초기화 안한 상태
    //v1++; // 초기화 안한 상태에서 값을 조회하려 하면 컴파일 오류!
    System.out.println(v1); // 초기화 안한 상태에서 값을 조회하려 하면 컴파일 오류!
  }
}

/*
# 변수 초기화
- 로컬 변수는 반드시 초기화한 후 사용해야 한다.
- 초기화?
  값을 저장한 상태
- 초기화 안한 상태에서 메모리의 값을 사용하려하면 컴파일 오류가 발생한다.
- 단, 클래스 변수나 인스턴스 변수인 경우에는 자동 초기화된다.








*/
