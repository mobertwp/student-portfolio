function getResult(){
    let name = document.getElementById("txtName").value;
    let email = document.getElementById("txtEmail").value;
    let password = document.getElementById("txtPassword").value;
    let male = document.getElementById("rbMale").checked;
    let female = document.getElementById("rbFemale").checked;
    let agreed = document.getElementById("cbAgree").checked;

    if(name.length == 0){
        alert("Name must be filled!");
    }else if(email.length == 0){
        alert("Email must be filled!");
    }else if(!IsEmail(email)){
        alert("Email must be written in email format");
    }else if(password.length == 0){
        alert("Password must be filled!")
    }else if(password.length < 3 || password.length >= 32){
        alert("Password length must be between 3 and 32 characters")
    }else if(!male && !female){
        alert("Gender must be filled!")
    }else if(!agreed){
        alert("Terms and Conditions must be agreed!");
    }else{
        var con = confirm("You are Registered, have fun playing the game. GOOD LUCK!")
        if(con){
            window.open("./HomePage.html","_self");
        }
    }
}

function IsEmail(email) {
    var atSymbol = email.indexOf("@");
    if(atSymbol < 1) return false;
    
    var atdot = email.indexOf(".");
    if(atdot <= atSymbol + 2) return false;

    if (atdot === email.length - 1) return false;
    
    return true;
}