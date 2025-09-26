/* localStorage.clear() */
// vou comentar oq é necessário aq
async function home() {
  const userStorage = localStorage.getItem("user");
  const token = localStorage.getItem("token");
  const user_data = JSON.parse(userStorage);
  console.log(user_data)
  const id = user_data[0].id_user;

  try {
    // faz tudo na base de um await sem um then, separado, soq eu gosto de then
    const userData = await fetch("user/get_user_data/" + id, {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    })
      .then((response) => {
        if (response.status == 200) return response.json();
        throw new Error("Erro ao pegar as matérias: " + response.status);
      })
      .then((data) => {
        return data;
      });

    const user_data = userData;
    console.log(user_data);

    document.querySelector("#name").textContent = user_data.data[0].name;
    document.querySelector("#level").textContent = user_data.data[0].ranking;
    document.querySelectorAll("#xp").forEach((e) => {
      e.textContent = user_data.data[0].xp;
    });
    document.querySelector("progress").value = user_data.data[0].xp;

    const mattersResponse = await fetch("matter/get_matters", {
      method: "GET",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${token}`,
      },
    })
      .then((response) => {
        if (response.status == 200) return response.json();
        throw new Error("Erro ao pegar as matérias: " + response.status);
      })
      .then((data) => {
        return data;
      });
    const response = mattersResponse;
    const mattersData = mattersResponse.data;
    if (response.status === "success") {
      // guarda as promessas aq dentro
      const progressPromises = [];

      // executa essa bagunça
      for (const matter of mattersData) {
        progressPromises.push(
          fetch(`progress/${matter.id_matter}/${id}`, {
            method: "GET",
            headers: {
              "Content-Type": "application/json",
              Authorization: `Bearer ${token}`,
            },
          }).then((res) => {
            if (res.status !== 200) {
              throw new Error(
                `Erro ao pegar o progresso de ${matter.name}: ${res.status}`
              );
            }
            return res.json();
          })
        );
      }

      // executa a promessa
      const allProgressData = await Promise.all(progressPromises);
      const progress = {};

      // passa p o obj os dados
      for (let i = 0; i < mattersData.length; i++) {
        progress[mattersData[i].name] = allProgressData[i].data;
      }

      // aq é minha parte msm

      const colors_background = {
        Português: "#e74c3c",
        Matemática: " #3498db",
        Ciências: " #2ecc71",
        História: " #8e5e3f",
        Geografia: "#f39c12",
      };

      const icons = {
        Português: "fas fa-book-open fs-6",
        Matemática: "fas fa-calculator fs-6",
        Ciências: "fas fa-atom fs-6",
        História: "fas fa-landmark fs-6",
        Geografia: "fas fa-globe fs-6",
      };

      for (const matter of mattersData) {
        const section = document.querySelector(".sec-matters");
        const card_matter = document.createElement("article");
        card_matter.classList.add("col-sm-6");

        const matterProgress = progress[matter.name] || [];
        const completedLessons = matterProgress.length;
        const totalLessons = 12;
        const progressPercentage = (completedLessons / totalLessons) * 100;

        card_matter.innerHTML = `
          <div class="card p-4">
            <div class="d-flex align-items-center gap-3 mb-2">
              <div class="d-flex align-items-center justify-content-center rounded-3"
                style="width: 40px; height: 40px; background-color:${colors_background[matter.name]
          }; color: #fff;">
                <i class="${icons[matter.name]}"></i>
              </div>
              <div>
                <p class="fw-semibold fs-6 text-dark mb-0">${matter.name}</p>
                <p class="fs-7 text-secondary mb-0">${completedLessons} de ${totalLessons} lições</p>
              </div>
            </div>
            <div class="d-flex justify-content-between align-items-center fs-7 text-dark-emphasis mb-1">
              <span>Progresso</span>
            </div>
            <div class="progress mb-3" role="progressbar" aria-label="Progresso de ${matter.name
          }" aria-valuenow="${progressPercentage}"
              aria-valuemin="0" aria-valuemax="100">
              <div class="progress-bar" style="width: ${progressPercentage}%; background-color:${colors_background[matter.name]
          };"></div>
            </div>
            <button class="btnLesson btn btn-outline-secondary w-100 fs-7 py-1" type="button">
              Fazer lições
            </button>
          </div>
        `;

        const btn = card_matter.querySelector(".btnLesson");
        btn.addEventListener("click", () => {
          const id = btoa(matter.id_matter);
          router.navigate("/lessons?id=" + id);
        });

        section.appendChild(card_matter);
      }
    }
  } catch (error) {
    console.error("Erro na função home:", error);
  }
}

home();