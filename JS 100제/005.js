var a = 10;
var b = 2;

for(var i=1; i<5; i+=2){
    a += i;
}

console.log(a+b);

//정답 16 
// for문 두 번 순환
// i = i + 2 , a = a + i