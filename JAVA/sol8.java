import java.util.*;

class Solution {
    public String solution(String[] participant, String[] completion) {
        // 참가자의 이름과 출현 빈도를 저장하는 HashMap 생성
        HashMap<String, Integer> map = new HashMap<>();

        // completion 명단에 있는 이름의 출현 빈도를 먼저 저장
        for (String name : completion) {
            // 기존에 이미 이름이 있으면 해당 이름의 출현 빈도를 1 증가시킴
            map.put(name, map.getOrDefault(name, 0) + 1);
        }

        // participant 명단에 있는 이름의 출현 빈도를 먼저 저장
        for (String name : participant) {
            // 이름의 출현 빈도가 0이거나 없으면 완주하지 못한 선수
            if (!map.containsKey(name) || map.get(name) == 0) {
                return name;
            }
            // 이름의 출현 빈도를 1 감소시킴
            map.put(name, map.get(name) - 1);
        }

        // 완주하지 못한 선수가 없을 경우, 빈 문자열 반환
        return "";
    }
}
