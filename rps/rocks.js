
const choices = [null, 'rock', 'paper', 'scissors'];
let user;
let computer;
let game;
let count = 0;
let user_total = 0;
let computer_total = 0;

const rock = () =>{
    user = 'rock'
    computer = Math.ceil(Math.random()*3)
    document.getElementById('result').innerHTML = `user : ${user}, computer : ${choices[computer]}`
    if(computer == 2){computer_total++; counter();};
    if(computer == 3){user_total++; counter();};
    updateScore();
};

const paper = () =>{
    user = 'paper'
    computer = Math.ceil(Math.random()*3)
    document.getElementById('result').innerHTML = `user : ${user}, computer : ${choices[computer]}`
    if(computer == 1){user_total++; counter();};
    if(computer == 3){computer_total++; counter();};
    updateScore();
};

const scissors = () =>{
    user = 'scissors'
    computer = Math.ceil(Math.random()*3)
    document.getElementById('result').innerHTML = `user : ${user}, computer : ${choices[computer]}`
    if(computer == 1){computer_total++; counter();};
    if(computer == 2){user_total++; counter();};
    updateScore();
};


const updateScore = (a,b) =>{
    document.getElementById('user_score').innerHTML =  user_total > computer_total ?
        `You are currently winning ${user_total} to ${computer_total}` :
        computer_total > user_total ?
         `The computer is currently winning ${computer_total} to ${user_total}` :
         `The game is currently tied ${user_total} to ${computer_total}`;
};


const start = ()=>{
    document.getElementById('start_btn').style.display = 'none';
    document.getElementById('rock').disabled = false;
    document.getElementById('paper').disabled = false;
    document.getElementById('scissors').disabled = false;
    game = prompt('How many games would you like to play?');
     if((/\D/g).test(game)){
         alert('Not a valid number.');
         location.reload();
     };
};



const counter = () =>{
    count++
    if(count == game && user_total > computer_total){
        alert(`Congragulations!! You managed to defeat the computer ${user_total} to ${computer_total}.`);
        location.reload();
    };
    if(count == game && user_total < computer_total){
        alert(`You were deafted by the computer ${computer_total} to ${user_total}.  Better luck next time.`);
        location.reload();
    };
    if(count == game && user_total == computer_total){
        alert(`The game ended in a tie.`);
        location.reload();
    };
};
