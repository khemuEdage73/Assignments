let started = false;
let level = 0;
let btns = ["red", "green", "yellow", "purple"];
let gameSeq = [];
let userSeq = [];

let h2 = document.querySelector("h2");

document.addEventListener("keypress", function () {
  if (started === false) {
    started = true;

    levelUp();
  }
});

function btnFlash(btn) {
  btn.classList.add("flash");
  setTimeout(function () {
    btn.classList.remove("flash");
  }, 300);
}

function userFlash(btn) {
  btn.classList.add("userflash");
  setTimeout(function () {
    btn.classList.remove("userflash");
  }, 300);
}

function levelUp() {
  userSeq = [];
  level++;
  h2.innerText = `Level ${level}`;
  let rndIdx = Math.floor(Math.random() * 4);
  let rndColor = btns[rndIdx];
  let rndBtn = document.querySelector(`.${rndColor}`);
  gameSeq.push(rndColor);
  btnFlash(rndBtn);
}

function resetGame() {
  userSeq = [];
  gameSeq = [];
  started = false;
  level = 0;
}

function checkAns() {
  let idx = userSeq.length - 1;
  if (userSeq[idx] === gameSeq[idx]) {
    if (userSeq.length === gameSeq.length) {
      setTimeout(levelUp, 1000);
    }
  } else {
    h2.innerText = `Game Over! score ${level}, Press any Key to start again.`;
    resetGame();
  }
}

function btnPress() {
  userFlash(this);
  userColor = this.getAttribute("id");
  userSeq.push(userColor);

  checkAns();
}

let allBtn = document.querySelectorAll(".container .btn");

for (let btn of allBtn) {
  btn.addEventListener("click", btnPress);
}
