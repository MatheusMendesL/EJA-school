function login() {

const form = document.querySelector("form");

form.addEventListener("submit", (e) => {
  e.preventDefault();

  const email = form.querySelector('input[name="email"]').value;
  const password = form.querySelector('input[name="password"]').value;

  const body = { email, password };

  fetch("http://localhost:3000/user/login", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(body),
  })
    .then((response) => {
      if (response.status === 200) return response.json();
      throw new Error("Erro no login: " + response.status);
    })
    .then((data) => {
      if (data.status === "success") {
        localStorage.setItem("token", data.data.token);
        localStorage.setItem("user", JSON.stringify(data.data));
        router.navigate("/home");
      }
    })
    .catch((err) => {
      console.error(err);
    });
});

}

login()