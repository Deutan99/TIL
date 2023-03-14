const n = prompt('숫자를 입력하세요.'); // prompt는 대화창을 띄워주는 함수이다.
let tree = '';

for(let i=1; i<=n; i++){
  let star = '';
  for(let j=1; j<=n-i; j++){
    star += ' ';
  }
  for(let k=1; k<=2*i-1; k++){
    star += '*';
  }
  tree += star + '\n';
}

console.log(tree);

// 다른 방법도 찾아보는 중..