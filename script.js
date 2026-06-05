const form = document.getElementById("userForm");

form.addEventListener("submit", async(e)=>{

e.preventDefault();

const user = {
name: document.getElementById("name").value,
email: document.getElementById("email").value,
password: document.getElementById("password").value
};

const response = await fetch(
"http://localhost:8080/users",
{
method:"POST",
headers:{
"Content-Type":"application/json"
},
body:JSON.stringify(user)
}
);

const data = await response.json();

document.getElementById("result").innerHTML =
`Registered Successfully: ${data.name}`;
});