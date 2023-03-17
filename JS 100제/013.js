var planets = [
    "수성",
    "금성",
    "지구",
    "화성",
    "목성",
    "토성",
    "천왕성",
    "해왕성"
  ];
  
  var planet_name = prompt("태양계 몇번째 행성을 알고 싶나요?");
  
  console.log(planets[planet_name - 1]);