console.log('simple')

let operator;


const Operators ={
    ADD: 'add',
    SUBTRACT: 'subtract',
    MULTIPLY: 'multiply',
    DIVISION: 'division'
};

const main = () =>{
    console.log('main')
    first = parseInt(document.getElementById('first').value);
    second = parseInt(document.getElementById('second').value);
    console.log(`first: ${first}  second: ${second}`)

operator = getOperator();


switch (operator) {
    case Operators.ADD:
        add(first, second);
        break;
    case Operators.SUBTRACT:
        subtract(first, second);
        break;
    case Operators.MULTIPLY:
        multiply(first,second);
        break;
    case Operators.DIVIDE:
        divide(first,second);
        break;
    default:
        break;                
}

}


const getOperator = () => {
    console.log('triggered')
    var radioButtons = document.getElementsByName('operand')
    radioButtons.forEach(x => {
    if(x.checked){
        console.log(` getOperator value ${x.value}`)
        return x.value
    }
});
return add;
}


const add = (fist, second) => {
    console.log(operator)
    console.log(first + second)
}

const subtract = (first, second) => {
    console.log(operator)
}

const multiply = (first, second) => {
    console.log(operator)
}

const divide = (first, second) => {
    console.log(operator)
if(second == 0){prompt('Cannot Divide by 0.'), reload()}
}

const reload = () => location.reload()

const select = () => {
    console.log('clicked')
}