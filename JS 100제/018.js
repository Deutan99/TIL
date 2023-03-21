// # 문제18 : 평균 점수

// 영하네 반은 국어, 수학, 영어 시험을 보았습니다. 영하는 친구들의 평균 점수를 구해주기로 했습니다.

// 공백으로 구분하여 세 과목의 점수가 주어지면 **전체 평균 점수**를 구하는 프로그램을 작성하세요. 
// **단, 소숫점 자리는 모두 버립니다.**
// 입출력

// 입력 : 20 30 40
// 출력 : 30

const num = new Array(3); // 배열 요소(데이터) 값이 4개인 배열 생성
let i = 0; // 인덱스
let sum = 0; // 합계

while(i < num.length) {
    let score = prompt('점수를 입력해 주세요.');
    score = Number(score); // 입력 받은 숫자형 문자열을 숫자로 리턴하여 재대입 -> prompt에서 입력 받은 값이 숫자형 문자열이라 숫자열로 변경해야 됨
    num[i] = score; // 각각의 배열 요소에 대입
    sum += num[i];
    i++;
}

console.log(Math.floor(sum / num.length));
//new Array()는 모호해서 비권장하는 함수이다.

//다른 답안
const scores = prompt('세 과목의 점수를 입력하세요.').split(' ');
let sum2 = 0;

for (let i=0; i<3; i++){
  sum2 += parseInt(scores[i], 10); // 십진수의 형태의 숫자로 데이터 타입을 변환합니다.
}

console.log(Math.floor(sum2/3)); //Math.floor 메서드는 소수점 자리를 모두 버림합니다.