// # 문제31 : 자바스크립트 자료형의 복잡도

// 다음 배열 내장함수의 시간 복잡도가 O(1)이 아닌 것을 모두 고르시오.

// 1)  arr[i]
// 2)  arr.push(5)
// 3)  arr.slice()
// 4)  arr.pop()
// 5)  arr.includes(5)

//정답 : 3번, 5번
//O(n): 빅오 표기법 -> 알고리즘에 필요한 단계 수
//O(1) : 한 단계가 걸림
//O(n) : 자료구조의 길이만큼 걸림.
//배열에서 읽기는 O(1)이라고 할 수 있다. 컴퓨터는 인덱스를 통해서 바로 값을 읽을 수 있기 때문이다. 그리고 배열의 마지막에 값을 삽입하거나, 배열의 마지막에 값을 넣는 것 또한 O(1)이다. 그래서 정답은 그 이외의 것인 3번과 5번이다.
// 중간에 넣거나 빼는 것은 왜 O(1)이 아닐까?
// 넣기 위해 값을 미뤄야하거나, 삭제하고 난 뒤에 중간에 값을 땡겨와야 하는 과정이 있기 때문이다.
// slice의 경우 배열을 복사한다. 복사하기 위해서는 빈 값을 만들고 원래 값을 돌면서 push작업을 해준다. 또한 includes는 처음 값부터 하나하나씩 다 찾으면서 값이 들어있는 지 확인하기 때문에 O(n)이다.