async function task() {
    const token = localStorage.getItem("token");
    const urlParams = window.location.search;
    const params = new URLSearchParams(urlParams);
    const id_lesson = params.get("lesson_id");
    const id_matter = params.get("matter_id");
    const id = atob(id_lesson);
    const userStorage = localStorage.getItem("user");
    const user_data = JSON.parse(userStorage);
    const id_user = user_data[0].id_user;

    document.querySelector("#back").addEventListener("click", (e) => {
        e.preventDefault();
        router.navigate("/lessons?id=" + id_matter);
    });

    const tasks = await fetch("task/lesson/" + id, {
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
        .then((data) => data);

    console.log(tasks);

    let index = 0;
    let percentage = 10;
    let correto = 0;
    let errado = 0;
    let xp = 0;
    let selectedAnswer = null;

    function showQuestion() {
        const q = tasks.data[index];

        document.querySelector("#question").innerText = q.question;
        document.querySelector("#optionA").innerText = q.option_a;
        document.querySelector("#optionB").innerText = q.option_b;
        document.querySelector("#optionC").innerText = q.option_c;
        document.querySelector("#optionD").innerText = q.option_d;
        document.querySelector("#number").textContent = index + 1;
        document.querySelector(".progress-fill").style.width = `${percentage}%`;

        const progressBar = document.querySelector('.progress-bg');
        progressBar.setAttribute('aria-valuenow', percentage);
        progressBar.setAttribute('aria-label', `Progresso da lição: ${percentage}%`);


        document.querySelector("#question-title").setAttribute('aria-label', `Questão ${index + 1}: ${q.question}`);

        selectedAnswer = null;
        const letters = [
            'A',
            'B',
            'C',
            'D'
        ]

        letters.map(letter => {
            document.querySelectorAll(`#option${letter}`).forEach(label => {
                label.classList.remove("correct", "error");
                label.setAttribute('aria-pressed', 'false');
            });
        })


        document.querySelector("#optionA").focus();

    }

    function checkAnswer() {
        if (!selectedAnswer) return;

        const q = tasks.data[index];

        const selectedLabel = document.querySelector(`label[for=${selectedAnswer}]`);
        const correctLabel = document.querySelector(`label[for=${q.correct_answer}]`);

        if (selectedAnswer === q.correct_answer) {
            selectedLabel.classList.add("correct");
            selectedLabel.setAttribute('aria-pressed', 'true');
            selectedLabel.setAttribute('aria-label', 'Resposta correta');
            correto++;
            xp += 50;

        } else {
            correctLabel.classList.add("correct");
            correctLabel.setAttribute('aria-pressed', 'true');
            correctLabel.setAttribute('aria-label', 'Resposta correta');
            selectedLabel.classList.add("error");
            selectedLabel.setAttribute('aria-pressed', 'true');
            selectedLabel.setAttribute('aria-label', 'Resposta incorreta');
            errado++;
            xp -= 25;

        }

        index++;
        percentage += 10;

        document.querySelector(".btn_submit").classList.add("d-none");
        document.querySelector(".btn_forward").classList.remove("d-none");

        document.querySelector(".btn_forward").focus();
    }

    function selectAnswer(letter) {
        selectedAnswer = letter;
        const letters = ['A', 'B', 'C', 'D'];

        letters.forEach(l => {
            const label = document.querySelector(`#option${l}`);
            if (l === letter) {
                label.setAttribute('aria-pressed', 'true');
                label.setAttribute('aria-label', `Opção ${letter} selecionada`);
            } else {
                label.setAttribute('aria-pressed', 'false');
                label.setAttribute('aria-label', `Opção ${l}`);
            }
        });
    }

    ['A', 'B', 'C', 'D'].forEach(letter => {
        const label = document.querySelector(`#option${letter}`);

        label.addEventListener("click", () => selectAnswer(letter));

        label.addEventListener("keydown", (e) => {
            if (e.key === 'Enter' || e.key === ' ') {
                e.preventDefault();
                selectAnswer(letter);
            }
        });
    });


    document.querySelector(".btn_submit").addEventListener("click", (e) => {
        e.preventDefault();
        checkAnswer();
    });


    document.querySelector(".btn_forward").addEventListener("click", async (e) => {
        e.preventDefault();
        if (index < tasks.data.length) {
            document.querySelector(".btn_forward").classList.add("d-none");
            document.querySelector(".btn_submit").classList.remove("d-none");
            showQuestion();
        } else {

            const data_progress = await fetch(`progress/${atob(id_matter)}/${id}/${id_user}`, {
                method: "GET",
                headers: {
                    "Content-Type": "application/json",
                    Authorization: `Bearer ${token}`,
                },
            }).then(response => {
                if (response.status === 200) return response.json();
                throw new Error("Erro: " + response.status);
            }).then(data => {
                return data
            })

            if (data_progress.data.length == 0) {
                fetch(`progress/add`, {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                        Authorization: `Bearer ${token}`,
                    },
                    body: JSON.stringify({
                        user: id_user,
                        lesson: id,
                        matter: atob(id_matter)
                    })
                }).then((response) => {
                    if (response.status === 200) return response.json();
                    throw new Error("Erro: " + response.status);
                }).then(data => console.log(data))
            }


            console.log(xp)

            fetch('user/xp/' + id_user, {
                method: 'GET',
                headers: {
                    "Content-Type": "application/json",
                    Authorization: `Bearer ${token}`,
                },
            }).then((response) => {
                if (response.status == 200) return response.json();
                throw new Error("Erro para devolver os dados");
            }).then((data) => console.log(data));

            fetch(`user/update_xp/${id_user}/${xp}`, {
                method: "PUT",
                headers: {
                    "Content-Type": "application/json",
                    Authorization: `Bearer ${token}`,
                },
            })
                .then((response) => {
                    if (response.status == 200) return response.json();
                    throw new Error("Erro para devolver os dados");
                })
                .then((data) => console.log(data));
            console.log('dps de att')

            fetch('user/xp/' + id_user, {
                method: 'GET',
                headers: {
                    "Content-Type": "application/json",
                    Authorization: `Bearer ${token}`,
                },
            }).then((response) => {
                if (response.status == 200) return response.json();
                throw new Error("Erro para devolver os dados");
            }).then((data) => console.log(data));
            
            router.navigate(`/finalTask?corrects=${correto}&xp=${xp}&id=${btoa(id_user)}`);
        }
    });



    showQuestion();
}

task();
