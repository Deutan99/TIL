//getTime() 사용하기

//getTime메소드 
let myDate = new Date();
let year = myDate.getTime();
year = Math.floor(year/(3600*24*365*1000))+1970
console.log(year);
