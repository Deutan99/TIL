class Wizard {
    constructor(health, mana, armor) {
      this.health = health;
      this.mana = mana;
      this.armor = armor;
    }
    attack() {
      console.log("파이어볼");
    }
} // const Wizard = class Wizard {}로 선언해도 무방하다.
  
const x = new Wizard(545, 210, 10);
console.log(x.health, x.mana, x.armor);
x.attack();
