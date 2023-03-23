//Set
//Set 객체는 중복되지 않는 유일한 값들의 집합이다.
//Set 객체는 다음과 같은 특징을 가진다.
//1. 동일한 값을 중복하여 포함할 수 없다.
//2. 요소 순서에 의미가 없다.
//3. 인덱스로 요소에 접근할 수 없다.
//이러한 set 객체는 수학적 집합을 구현하기 위한 자료구조이다. 그래서 set을 통해 교집합, 합집합, 차집합, 여집합 등을 구현할 수 있다.

const set = new Set();
console.log(set); // Set(0) {}

const set1 = new Set([1, 2, 3, 3]);
console.log(set1); // Set(3) {1, 2, 3}

const set2 = new Set('hello');
console.log(set2); // Set(4) {"h", "e", "l", "o"}

// 배열의 중복 요소 제거
const uniq = array => array.filter((v, i, self) => self.indexOf(v) === i);
console.log(uniq([2, 1, 2, 3, 4, 3, 4])); // [2, 1, 3, 4]

// Set을 사용한 배열의 중복 요소 제거
const uniq2 = array => [...new Set(array)];
console.log(uniq([2, 1, 2, 3, 4, 3, 4])); // [2, 1, 3, 4]