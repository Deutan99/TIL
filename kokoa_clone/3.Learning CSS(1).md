# #3 LEARNING CSS (1)

### #3.0

CSS를 HTML에 추가하는 방법

1. HTML의 head안에 CSS코드를 작성해준다. (style)태그 안에 작성 후 닫아주기

2. CSS파일(\_.css)을 별도로 생성후, HTML파일에 두 파일을 연결해준다. (link)태그로 두 파일간 관계를 정의해주기. (link href="~.css" rel="stylesheet")

2번 방법이 더 좋다. 코드가 보기 간결하고, 동일한 형식의 CSS를 연결하기가 편하기 때문

### #3.1

- CSS가 하는 일은 HTML 태그를 가리키는 일. (이 태그는 초록색이다. 이 가리키는 것 자체를 'selector'
- CSS 작성에선 띄어쓰기를 하지 않는다.
- font-size:20px; 과 같이, 속성 다음 콜론(:), 값 다음 세미콜론(;)으로 닫아줘야 한다.
- 속성이름:속성값;
- 밑줄(\_) 또는 슬래쉬(/)도 사용해선 안된다.
- css 또한 어떤 값이든 쓸 수 있다. 하지만 속성에 맞는 값을 써야 브라우저에서 적용이 된다.
- css 또한 모든 속성을 일일이 다 기억할 필요 없다. 기본적으로 어떻게 동작하는지만 기억하면 된다.
- 동작 원리
  - 1. 태그를 지정
  - 2. 원하는 속성값을 쓴다.

### #3.2

CSS 뜻과 작동 방식

CSS : Cascading Style Sheet

Cascading : 위에서 아래로 내려오는 이미지(폭포가 흐르는 것 떠올리기)

어떤 것 다음에 어떤 것이 온다 이것이 cascading이 의미하는 바다.

브라우저가 CSS 코드를 읽을 때 cascading 방식으로, 즉 위에 있는 코드부터 차례차례로 읽힌다.

위에서 아래로 읽는다는 브라우저가 CSS를 읽는 방법을 아는게 가끔 유용하다.

inline CSS와 external CSS 두 CSS 코드가 같은 대상을 가리키게 되면 어떻게 될까?

→ 브라우저는 위에서 아래로 코드를 읽으므로 마지막에 있는 코드가 우리에게 보여지게 된다.

가장 마지막으로 변경된 속성이 우리에게 보여진다.

그래서 코드의 순서를 바꾸면 최종적으로 보여지는 모습이 달라진다.

CSS는 위에서 아래로 작동한다. 결국 적용 되는 건 가장 마지막 코드다.

### #3.3

- div는 옆에 다른 div가 오지 않는다.
- span은 옆에 다른 span이 올 수 있다.
- link는 옆에 올 수 있다.
- p는 옆에 올 수 없다.
- 옆에 다른 요소가 못 오는걸 block
- 올 수 있는걸 inline라고 한다. (in the same line)
- inline의 대표적인 태그 span, link, img

### #3.4

- block의 특징 (inline에는 없음)
- inline block 서로 바꿀 수 있다. (display속성이라고 함)
- 어떤 요소가 inline 이면, 높이와 너비를 가질 수 없다.
- block는 높이와 너비가 있다.
- block의 특징 margin, padding, border
- 브라우저는 기본적으로 style 속성을 준다.
- margin - 경계의 바깥에 있는 공간 (border보다 바깥)

MDN 참고: https://developer.mozilla.org/en-US/docs/Web/CSS/margin

### #3.5

- 방향 설정 없이 margin 하나를 주면 사방에 전부 다 적용된다.
- 두 개를 줄 경우 상하, 좌우 이다.
- 네 개를 줄 경우 시계방향 순으로 적용된다. (상 우 하 좌)
- Collapsing margin 현상 (상하에서만 발생함)
- body안에 div의 위 아래 마진이 body의 마진과 만나면 둘 중 큰 값의 마진으로 body에 적용된다.

### #3.6

- padding은 margin과 반대 개념이다.
- padding은 box의 경계로부터 '안쪽'에 있는 공간이다.
- 값의 개수에 따라 적용되는 방향은 margin과 동일하다.
- 여러 div를 생성했을 때 'id'를 이용하여 div들을 구분할 수 있고, 각각 다른 속성을 적용시킬 수 있다.
- CSS로 first div에 속성을 적용 시킬 땐, #first {}
- 이는 body, span 등에서도 마찬가지다.
- CSS 코드의 id명은 HTML 코드에서 썼던 id명과 같아야 한다.
- 한 요소는 하나의 id만을 가질 수 있다.

### #3.7

- border : box 의 경계
- 여러 border 가 있지만 보통 한 개만 쓴다.
- border : 두께 스타일 색; 으로 작성.
- - : 모든 요소를 가르킨다.
- border-style : 2개의 요소를 작성하지 않고 스타일 하나만 사용할 수 있다.
- border는 inline과 block 모두에 적용된다.

### #3.8

- span은 inline이기 때문에 높이와 너비를 가질 수 없으며, 그래서 위, 아래에 margin을 가질 수 없다.
- 하지만 padding은 사방에 가질 수 있다.
- 이와 같은 상황에 margin을 위, 아래에 적용하고 싶다면, inline 요소를 block으로 바꿔줘야 한다.
- 온점(.)은 class명이라는 뜻.
- id⇒ #tomato는 id="tomato" class⇒ .tomato는 class="tomato"
- id명과 다르게 class명은 유일할 필요가 없다. 여러 요소들이 같이 쓸 수 있다.
- class 속에는 btn과 tomato를 연이어 넣어 각각 다른 class 속성을 동시에 부여할 수도 있다.

### #3.9

- inline-block은 block이 inline속성을 가지게해줌
- 즉, 옆에 둘수도있고, width와 height를 가질 수있다.

→ but is's suck because it is old and have many problemes

- 정해진 형식이 없다. 그냥 본인 마음대로임. 그렇기때문에 잘 안쓴다.
- block 사이에 공간이 지멋대로 생긴다.
- 깔끔하지 못하다.
- inline-block은 Responsive Design(반응형 디자인) 을 지원하지 않는다.
- 즉, 모니터의 크기에 따라 달라진다.. .It's fuXX..

/_ ※ 결론!! inline-block은 안쓴다!! _/

### #3.10

inline block의 문제점을 해결하기 위해 flexblock를 생각해냈다.

flexbox 사용 규칙

1. 자식 엘리먼트에는 어떤 것도 적지 말아야 함.자식 엘리먼트를 움직이게 하려면 부모 엘리먼트를 flex container로 만들어야 한다.

ex) display: flex;

2. align-items : cross axis에서 작용 (교차축)

3. justify-content : main axis에서 작용 (주축) (디폴트)flex-container가 height를 가지고 있지 않으면 align-items를 사용하더라도 위치가 바뀌지 않음.

vh = viewport height (스크린에 따라 다름)
