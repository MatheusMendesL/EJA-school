async function lessons() {
  const userStorage = localStorage.getItem("user");
  const user_data = JSON.parse(userStorage);

  const id_user = user_data[0].id_user;
  const urlParams = window.location.search;
  const params = new URLSearchParams(urlParams);
  const token = localStorage.getItem("token");
  const codified_id = params.get("id");
  const id = atob(codified_id);

  const matter = await fetch("matter/get_matter_id/" + id, {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${token}`,
    },
  })
    .then((response) => {
      if (response.status == 200) return response.json();
      throw new Error("Erro para devolver os dados");
    })
    .then((data) => {
      return data;
    });

  document
    .querySelectorAll("#matter")
    .forEach((e) => (e.textContent = matter.data[0].name));

  const data = await fetch("lesson/matter/" + id, {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${token}`,
    },
  })
    .then((response) => {
      if (response.status == 200) return response.json();
      throw new Error("Erro para devolver os dados");
    })
    .then((data) => {
      return data;
    });

  const lessons = data.data;
  const div = document.querySelector("#topics");

  const levels = {
    básico: 1,
    intermediário: 2,
    avançado: 3,
  };

  document.querySelectorAll(".btn-year").forEach((btnYear) => {
    btnYear.addEventListener("click", () => {
      div.innerHTML = "";

      const filtered = lessons.filter(
        (lesson) => levels[lesson.level] == btnYear.id
      );

      filtered.forEach((lesson) => {
        const btn = document.createElement("button");

        fetch(`progress/${id}/${lesson.id_lesson}/${id_user}`, {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
        })
          .then((response) => {
            if (response.status == 200) return response.json();
            throw new Error("Erro para devolver os dados");
          })
          .then((data) => {
            
            if (data.data.length != 0) {
              btn.classList.add("btn", "btn-success", "m-1", "w-25");
            } else {
              btn.classList.add("btn", "btnIncomplete", "m-1", "w-25", "text-light");
            }
          });

        btn.id = btoa(lesson.id_lesson);
        btn.textContent = lesson.title;
        div.appendChild(btn);

        btn.addEventListener("click", () => {
          fetch("lesson/" + atob(btn.id), {
            method: "GET",
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${token}`,
            },
          })
            .then((response) => {
              if (response.status == 200) return response.json();
              throw new Error("Erro para devolver os dados");
            })
            .then(() => {
              router.navigate(`/task?lesson_id=${btn.id}&matter_id=${btoa(id)}`);
            });
        });
      });
    });
  });
}

lessons();
