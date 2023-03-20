# #1 Flexbox

### #1.0

■ display 속성

- block: box 개념, 너비와 높이를 가짐, 옆으로 margin이 있음, element가 한 줄을 차지하여 옆에 다른 element가 올 수 없어 아래로 배치
- inline: 같은 직선 상에 있다는 뜻으로 옆에 다른 element가 올 수 있음, box가 아니라 너비와 높이를 가질 수 없음(element contents에 따라 유동적임)
- inline-block: inline과 block의 속성을 모두 지님, element가 일직선 상에 배치되어 옆에 다른 element가 올 수 있음, 너비와 높이를 가질 수 있음, 단 element 사이에 정체불명의 margin이 생겨 layout을 계산해야하는 불편함이 있음
- flexbox : inline-block의 문제점을 해결한 방식(이거는 잘 안쓰는 게 좋다)

### #1.1

■ flexbox

- box의 위치를 바꾸고 싶을 때, box가 아닌 box의 바로 위 부모(parent)의 속성을 조절해줘야함
- flex-container

display: flex

### #1.2

flex의 세계에는 두 가지가 있다.

1. row(행): 가로를 의미한다.

2. column(열): 세로를 의미한다.

flex container의 flex-direction 기본 값은 row다.

이때 해당 row에 있는 item의 위치를 변경시키기 위해서는 justify-content를 사용하는데 수평 축에 있는 flex children의 위치를 변경한다. (flex container에서는 부모가 자식의 위치를 변경한다는 것이 저번 수업의 핵심 내용이었다.)

이제 수평 축에 main-axis라는 멋드러진 이름을 붙여주자.

이 이름을 적용시켜 위 예시를 다시 생각해보면 다음과 같다.flex-direction의 기본 값이 row일 때 수평축이 곧 main-axis다.

다시 말해 가로가 곧 main-axis인 것이다.이때 main-axis에서 justify-content를 사용하면 item을 움직일 수 있는 것인데 main-axis가 수평축, 가로이기 때문에 가로로 item이 움직인다.

다른 axis로는 cross-axis가 존재한다. flex container가 row을 가질 때 cross-axis는 단어 그대로 가로지르기 때문에 수직(vertical)이다.

이때 cross-axis에서 item을 움직이기 위해서는 align-content를 사용한다.

수직, 세로로 움직이는 것이다.이는 차후 direction을 배울 때 매우 중요하므로 main-axis와 cross-axis 용어 및 개념을 잊지 말자.

align-center를 사용할 때는 반드시 flex container(부모)의 높이가 어느 정도 되는지 반드시 확인하자. 이미 item과 높이가 동일하여 위치를 변환시킬 수 없는 경우가 많기 때문이다.

### #1.3

flex direction 의 기본방향은 row (가로)

row방향일때 : main axis =가로(justify-content) / Cross axis=세로(align-items)

column방향일때 : main axis=세로(justify-content) / Cross axis=가로(align-items)

### #1.4

align-self

align-self CSS 속성은 하나의 그리드 또는 하나의 플렉스 아이템의 align-items 값을 재정의합니다.

(하나의 엘리먼트에 align-items값을 개별적으로 주는 것이다.)

그리드에서는 grid area 안에 항목을 정렬합니다. Flexbox에서는 item을 cross axis에 정렬합니다.

https://developer.mozilla.org/en-US/docs/Web/CSS/align-self

order

order CSS 속성은 플렉스 또는 그리드 컨테이너 안에서 현재 요소의 배치 순서를 지정합니다. 컨테이너 아이템의 정렬 순서는 오름차순 order 값이고, 같은 값일 경우 소스 코드의 순서대로 정렬됩니다. Flex 항목의 기본 order 값은 0이므로 0보다 큰 정수 값을 가진 항목은 지정되지 않은 항목 뒤에 표시됩니다.

(order는 숫자 값이 적을 수록 앞에 배치됨)

참고: order 속성은 논리적인 순서나 탭 순서와는 전혀 상관 없이 화면에 보이는 순서에만 영향을 줍니다. 따라서 비시각적 매체에 적용해선 안됩니다.

https://developer.mozilla.org/ko/docs/Web/CSS/order

### #1.5

wrap, nowrap, reverse, align-content

- father, child 모두 flex로 해주면 child에 있던 글자가 중앙에 위치하게 됨

1. flex-wrap

- flexbox는 width보다도, '같은 줄'에 있도록 하는 것을 우선시함

-> flex-wrap: wrap; (child의 사이즈를 유지하라고 하는 것)

-> nowrap; (child를 모두 같은 줄에 정렬함, 이때 width가 줄어들 수 있음)

2. reverse

- flex-direction: row-reverse; (오른쪽에서부터 1이 시작)

- column-reverse;

- flex-wrap: wrap-reverse; (한 줄이 되지 않아도 아래에서 위로 정렬되게)

* wrap으로 정렬 시 (여러 줄으로, 각 item의 width를 유지하면서)각 줄(기본: row) 간의 간격이 생기는데, 이것을 'align-content'라는 property로 조절 가능

3. align-content (line을 변경, line은 cross-axis에 있는 상태)- justify-content와 비슷하지만 'line'에 관한 것 (각 block이 여러 행에 걸쳐 나올 때, 행간 공백을 얼마나 둘 건지?)

- align-content: flex-start; - align-content: space-around;

→ 내가 이해한 게 맞다면 align-items는 아이템들의 위치, align-items는 아이템들 간의 간격

### #1.6

- flex-grow, flex-shrink는 child에게 줄 수 있는 property이다. 반응형 디자인을 할 때 도움이 된다.
- flex-shrink : element의 너비 또는 높이가 줄어들 때 주어진 값만큼 다른 element들에 비해 더 줄어든다 (기본값 1)
- flex-grow : element들 사이에 공간이 남을때 남는 공간만큼 늘어난다. / 화면이 커질 때 같이 커지길 원할 때 사용 (기본값 0)

### #1.7

flex-basis

shrink, grow 되기전에 element에게 초기 size를 주는 것.

but 자주 사용 X basis 정의 안할시 width와 같은 값이니까.
