# Day06

## #노개북 #코딩 #개발자 #노마드북클럽

## TIL(Today I Learned) 날짜

- 2023-02-22

---

## 오늘 읽은 범위

Ep.16 ~ 21

---

## 책에서 기억하고 싶은 내용

### Ep.16(인터넷 익스플로러가 사라진 이유와 브라우저 엔진)

인터넷 익스플로러는 사람들이 좋아하는 기술을 가장 빨리 지원한 브라우저였다.

Ajax(Asynchronous JavaScript and XML): 웹사이트에서 어떤 내용을 업데이트하면 새로 고침으로 확인해야 하는데 그 과정 없이 업데이트한 내용을 볼 수 있게 해주는 기술

개발한 웹 브라우저의 핵심 프로그램을 ‘브라우저 엔진’ 또는 ‘렌더링 엔진’이라고 한다.

→ 엔진의 성능이 웹 브라우저의 성능을 지원한다.

점유율만 믿고 업데이트나 보안문제를 빨리 고치지 않았던 익스플로러는 결국 중단하게 되었다.

### Ep.17(아, 쿠키가 먹는 게 아니라고요?)

- 쿠키: 어떤 웹 사이트에 방문했을 때 브라우저를 통해 컴퓨터에 보관하는 기록물

- HTTP(HyperText Transfer Protocol): 인터넷에서 정보를 주고받기 위한 프로토콜, 인터넷에서 사용자와 서버가 정보를 주고받기 위한 일종의 규칙

  → HTTP는 우리와 서버가 항상 연결되어 있지 않다는 특징이 있다. 서버는 가끔 우리가 누구인지 기억하지 못하고 잊어버린다. 그래서 필요한 것이 쿠키이다.

- 쿠키는 웹 사이트에 접속할 때마다 서버에 전송되어서 서버의 기억을 되살리는 역할을 한다.

- 쿠키의 규칙
  - 쿠키는 도메인 1개에만 한정한다.
  - 쿠키는 자동으로 보낸다.
  - 쿠키는 컴퓨터에 자동으로 저장된다.

### Ep.18(프런트엔드, 백엔드?)

- 프런트엔드: 애플리케이션이나 웹 사이트에서 실제로 사용하는 화면, 즉 모든 프로그램의 가장 앞
- 백엔드: 애플리케이션이나 웹 사이트에서 뒤쪽을 책임지는 부분, 즉 모든 프로그램의 가장, 뒤(DB, 라우터 등등)

- 프론트엔드 개발자

  - 장점
    - 작업한 것을 바로 볼 수 있다.(피드백을 바로 할 수 있다.)
  - 단점
    - 기술이 빨리 발전해서 공부해야 할 내용이 많다.

- 백엔드 개발자
  - 장점
    - 개발 환경이 안정적이다.
    - 기술 선택지가 다양하다(Django, Ruby, Java 등등)
  - 단점
    - 사용자와 거리가 멀어서 흥미가 떨어진다.

### Ep.19(서버가 뭔지 아직도 모른다고?)

- 서버 : 항상 켜져 있는 컴퓨터이면서 인터넷에 연결되어 있고 접속 요청에 응답하는 컴퓨터

- 서버의 외부 모습

  - 모니터가 없거나 1개만 있다.
  - 항상 인터넷에 연결되어 있다.
  - 저장소와 메모리 크기는 모두 어마어마하다.

- 서버의 특징
  - 서버는 24시간 내내 주소 입력을 기다린다.
  - 주소가 입력되면 그 주소에 해당하는 데이터를 꺼내서 보여준다.

### Ep.20(슈퍼 개발자만 할 수 있다, 풀스택?)

데브옵스: 소프트웨어의 개발(Development)과 운영(Operation)의 합성어이다. 소프트웨어 개발자와 정보 기술 전문가 사이에 소통, 협업, 통합을 강조하는 개발 환경이나 문화를 말한다.

풀스택 개발자: 프론트엔드, 백엔드, 데브옵스를 모두 다 할 수 있는 개발자

### Ep.21(서버리스는 서버가 없다는 뜻?)

- 서버리스: 서버가 없는 것이 아니라 직접 관리하지 않는 서버를 말한다.

- 아마존의 등장으로 서버를 탄력적으로 운영할 수 있게 되었다.

→ 이런 서비스들은 하드웨어를 제공, 관리해줄 뿐이고 서버의 소프트웨어 관리는 여전히 우리가 해야햔다.

소프트웨어 관리는 운영체제 업데이트, 보안 점검, 장애 회복 시스템 구축, 데이터 백업 등을 말한다.

- 서버리스는 등록한 함수가 실행된 만큼 돈을 내면 된다. 외부에서 그 함수를 실행하는 요청이 들어오면 함수가 깨어나서 실행되고, 무언가를 수행할 때 그 때 돈을 내면 된다. 요청이 없을 시에는 함수는 잠만 잤을 테니 돈을 낼 필요가 없다.

- 서버리스의 단점

  - 서버리스의 함수는 잠에서 깰 때 시간이 필요하다: 콜드 스타트
  - 서버 제공자에게 지나치게 의존한다.

- 서버리스는 사이드 프로젝트를 하는 사람이나 프로토타입을 최대한 빠르게 출시하고 싶은 기업에서 사용하는 것이 좋다.

## 다른 사람의 TIL

**aytekin827님**

[[TIL_5 IT잡학사전] 에피소드 16~21 – 노마드 코더 Nomad Coders](https://nomadcoders.co/community/thread/6497)

**leezworld님**

[TIL 20230118/ IT잡학사전 E16~E21 – 노마드 코더 Nomad Coders](https://nomadcoders.co/community/thread/6547)

**mirabo님**

[[노개북] IT 5분 잡학사전 episode 16 ~ 21 – 노마드 코더 Nomad Coders](https://nomadcoders.co/community/thread/7339)

---

## 오늘의 소감

- 내 목표인 프론트엔드 개발자로서 어떤 것을 준비해야할지 알게 되었다.
  - 모던 자바스크립트 Deep Dive 책을 보면서 JS에 대해 더 깊게 공부하고 있는 중입니다.
