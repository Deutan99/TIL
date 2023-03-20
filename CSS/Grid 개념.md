# #2 GRID

### #2.1

Grid

CSS 그리드 레이아웃은 웹페이지를 위한 이차원 레이아웃 시스템입니다. 이 기능을 통해 콘텐츠를 행과 열에 배치할 수 있으며 복잡한 레이아웃을 직접 직관적으로 구축할 수 있는 많은 기능이 있습니다.

https://developer.mozilla.org/ko/docs/Learn/CSS/CSS_layout/Grids

그리드 레이아웃이란?

그리드는 수평선과 수직선으로 이루어진 집합체로, 디자인 요소를 정렬할 수 있는 대상 패턴을 생성한다. 이 디자인은 페이지에서 페이지로 이동할 때 요소가 널뛰거나 너비가 바뀌지 않는 디자인 생성에 도움을 주어 웹 사이트의 일관성을 높여준다.

https://developer.mozilla.org/ko/docs/Learn/CSS/CSS_layout/Grids#what_is_grid_layout

### #2.2

● grid-template-columns: (각 column의 크기와 개수);

□ grid-template-columns: 20px 55px 89px 100px;

▷ column 4개를 만들건데

첫 번째 column은 20px,

두 번째는 55px,

세 번째는 89px,

네 번째는 100px로 해라

■ 더 이상 column이 없다면 다음 줄로 넘어간다.

● column-gap: (column 사이 공간 크기);

● row-gap: (row 사이 공간 크기);

● gap: 10px; ▷ column과 row 사이에 10px의 공간을 줘라.

● grid-template-rows: (각 row의 크기와 개수);

### #2.3

grid- templates-areas가 적용되지 않을때 주의점

0. 자식 GRID의 grid-area에 있는 이름과부모 GRID의 grid-template-areas에 있는 이름이 같아야 한다.

1. 같은 영역은 전부 이어져 있어야 한다. (dot(.) 포함))

2. 이어지더라도 ㄴ자, ㄱ자 등의 모양이면 안되고, 속이 비지 않은 사각형의 형태여야 한다. (가장 작은 단위도 하나의 속이비지 않은 사각형으로 취급한다

AUTO의 주의점(6:39)

GRID-TEMPLATE-AREAS를 4\*4로 만들어 놓았다고 가정했을 때, auto 200px 는 두번째 GRID만 200px 적용이고 나머지 1, 3,4 그리드 들은 auto로 되서 auto 200px auto auto 이렇게 적용이 된다.

하지만 grid-template-areas를 적용하지 않은 상태에서 auto 200px은 단순히 row가 2개이고, 첫번째 그리드의 width는 될수 있는 한 최대로 생기고, 두번째 그리드의 width는 200고정이다

### #2.4

grid-column-start

grid-column-start는 그리드 배치에 line, span을 통해 그리드 열 내에서 그리드 아이템의 시작 위치를 지정합니다. 이 시작 위치는 그리드 영역의 블록 시작 가장자리를 정의합니다.

grid-column-start: auto;

grid-column-start: 2;

grid-column-start: -1;

grid-column-start: span 2; (줄이 아닌 블럭의 영역을 지정)

https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-start

grid-column-end

그리드 항목의 끝 위치를 지정함으로써 그리드 영역의 블록 끝 가장자리를 지정합니다.

https://developer.mozilla.org/en-US/docs/Web/CSS/grid-column-end

grid-row-start

https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-start

grid-row-end

https://developer.mozilla.org/en-US/docs/Web/CSS/grid-row-end

### #2.5

● grid-column: (start) / (end);

● grid-row: (start) / (end);

● -1, -2, -3, ··· ▷ 끝에서부터 line 세기

● (start) / span (cell 수) ▷ 시작점과 끝점을 적는걸 대신한다.

### #2.6

line에도 naming을 해줄 수 있다. 본인이 사용하기 편한 기법을 쓰면 됨.

### #2.7

fr-fraction(부분)

fraction은 grid에서 사용 가능한 공간을 뜻한다.

fr값 비율로 공간을 나눈다.

● grid-template:

"(이름)" (row크기)

"(이름)" (row크기)

"(이름)" (row크기)/ (각 column의 크기);

→ grid-templete 에서는 repeat이 적용되지 않는다.

### #2.8

● justify-items

● align-items

● place-items: (수직) (수평);

▷ stretch : grid를 늘려서 grid를 채우게 한다.

▷ start : item을 cell 시작에 배치한다.

▷ center : item을 cell 중앙에 배치한다.

▷ end : item을 cell 끝에 배치한다.

### #2.9

justify-content

justify-content 속성은 브라우저가 플렉스 컨테이너의 기본 축과 그리드 컨테이너의 인라인 축을 따라 콘텐츠 항목 사이와 주위에 공간을 분배하는 방법을 정의합니다.

```

justify-content: center;

justify-content: start;

justify-content: end;

```

https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content

align-content

align-content 속성은 콘텐츠 사이와 콘텐츠 주위 빈 공간을 플렉스 박스'의 교차축 또는 그리드의 블록 축을 따라 배치하는 방식을 결정합니다.

```

align-content: center;

align-content: start;

align-content: end;

```

https://developer.mozilla.org/ko/docs/Web/CSS/align-content

place-content (align-content and justify-content 단축어)

Syntax: 'align-content' 'justify-content'

https://developer.mozilla.org/en-US/docs/Web/CSS/place-content

### #2.10

● align-self

● justify-self

● place-self: (수직) (수평);

▷ child에만 적용돠는 property이다.

● grid-auto-rows: (크기);

▷ 만들어놓은 row보다 더 많은 content가 있으면, 자동으로 row를 만들어라.

● grid-auto-flow: (방향); [기본값: row]

▷ flex-direction과 비슷하다.

▷ row가 끝날 때 새로운 row를 만들지, 새로운 column을 만들지 결정한다.

● grid-auto-columns: (크기);

▷ grid-auto-flow: column;일때 작동한다.

### #2.11

[minmax]- Grid-template-columns: repeat(10, minmax(100px, 1fr)); //최대 1fr로 하되 최소 100px너비

### #2.12

[auto-fill, auto-fit]

- Grid-template-columns: repeat(auto-fill, minmax(100px, 1fr)); //창 너비가 늘어나면 빈 column들로 row를 채움
- Grid-template-columns: repeat(auto-fit, minmax(100px, 1fr)); // 창 너비가 늘어나면 element를 늘려서 row에 맞게 해줌

### #2.13

● max-content

▷ content의 크기만큼 cell의 크기를 늘린다.

● min-content

▷ content의 크기를 최대한 줄여 cell의 크기를 줄인다.

※ 어떻게 content가 보여야 하는지 디자인하는 것이다.

※ repeat(), minmax와 결합하여 반응형 디자인을 만들 수 있다.
