const userAge = 2;
const hasStudentCard = false; // 変数にfalseを代入
const minAge = 3; // 3歳~
const maxAge = 25; // 〜25歳

if (hasStudentCard === true) { // もし学生証を持って入れば
  console.log("学割適用");
} else if (userAge >= minAge && userAge <= maxAge) { // 学生証を持っていなくても年齢が条件にあって入れば...
  console.log("学割適用");
} else { // 条件に合わない場合
  console.log("条件に合わないので割引できません");
}
