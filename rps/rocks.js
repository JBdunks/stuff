console.log('loaded')
const choices = [null, 'rock', 'paper', 'scissors']
var user;
var computer;
var game;
var counter = 0;
var user_total = 0;
var computer_total = 0;

const rock =() =>{
    user = 'rock'
    computer = Math.ceil(Math.random()*3)
    console.log(`user: ${user}, computer: ${choices[computer]}`)
    document.getElementById('result').innerHTML = `user: ${user}, computer: ${choices[computer]}`
    if(computer == 1){console.log(`tie`)};
    if(computer == 2){console.log('computer wins')};
    if(computer == 3){console.log('you win!')}
    counter ++
};

const paper = () =>{
    user = 'paper'
    computer = Math.ceil(Math.random()*3)
    console.log(`user: ${user}, computer: ${choices[computer]}`)
    document.getElementById('result').innerHTML = `user: ${user}, computer: ${choices[computer]}`
    if(computer == 1){console.log(`you win!`)};
    if(computer == 2){console.log('tie')};
    if(computer == 3){console.log('computer wins')}
    counter ++
};

const scissors = () =>{
    user = 'scissors'
    computer = Math.ceil(Math.random()*3)
    console.log(`user: ${user}, computer: ${choices[computer]}`)
    document.getElementById('result').innerHTML = `user: ${user}, computer: ${choices[computer]}`
    if(computer == 1){console.log(`you lose`)};
    if(computer == 2){console.log('you win!')};
    if(computer == 3){console.log('tie')}
    counter ++
};

/*
const start = ()=>{
     game = parseInt(prompt('How many games would you like to play?'),10)
     console.log(typeof game)
     //location.reload();
}

start()
*/
