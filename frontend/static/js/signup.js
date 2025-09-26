function signup() {



  const form = document.querySelector("form");

  form.addEventListener("submit", (e) => {
    e.preventDefault();

    const name = form.querySelector('input[name="name"]').value;
    const email = form.querySelector('input[name="email"]').value;
    const tel = form.querySelector('input[name="tel"]').value;
    const password = form.querySelector('input[name="password"]').value;

    const body = { name, email, tel, password };

    fetch("http://localhost:3000/user/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(body),
    })
      .then((response) => {
        if (response.status === 200) return response.json();
        throw new Error("Erro no cadastro: " + response.status);
      })
      .then((data) => {
        if (data.status === "success") {
          router.navigate("/login");
        }
        console.log(data);
      });
  });
}

signup()