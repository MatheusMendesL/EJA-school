    -- Inserir matérias
    -- Matters 

    INSERT INTO matter (name, description) VALUES
    ('Português', 'Estudo da língua portuguesa, literatura e análise textual avançada.'),
    ('Matemática', 'Estudo de álgebra, geometria, funções e estatística avançada.'),
    ('Ciências', 'Biologia, química, física e ecologia aplicadas.'),
    ('História', 'História do Brasil e mundial com análise crítica.'),
    ('Geografia', 'Geografia física e humana com estudo de processos globais.');


    -- Themes
    -- PORTUGUÊS

    INSERT INTO lesson (matter_id, title, content, level, created_at, updated_at) VALUES
    -- 1º ano médio (básico/avançado)
    (1, 'Fonética e Fonologia Avançada', 'Estudo detalhado dos fonemas e prosódia.', 'básico', NOW(), NOW()),
    (1, 'Morfologia Avançada', 'Análise de classes gramaticais e formação de palavras.', 'básico', NOW(), NOW()),
    (1, 'Sintaxe Complexa', 'Orações subordinadas e coordenação avançada.', 'básico', NOW(), NOW()),
    -- 2º ano médio (intermediário)
    (1, 'Concordância e Regência Avançada', 'Regras complexas de concordância verbal e nominal.', 'intermediário', NOW(), NOW()),
    (1, 'Figuras de Linguagem e Semântica', 'Análise de figuras de linguagem e sentidos do texto.', 'intermediário', NOW(), NOW()),
    (1, 'Crase, Pontuação e Coesão', 'Uso avançado de crase, pontuação e conectores textuais.', 'intermediário', NOW(), NOW()),
    -- 3º ano médio (avançado)
    (1, 'Literatura Brasileira Contemporânea', 'Movimentos literários do século XX e XXI.', 'avançado', NOW(), NOW()),
    (1, 'Análise Sintática Avançada', 'Termos essenciais e funções sintáticas complexas.', 'avançado', NOW(), NOW()),
    (1, 'Interpretação e Produção de Texto', 'Compreensão crítica e produção textual.', 'avançado', NOW(), NOW());


    -- MATEMÁTICA

    INSERT INTO lesson (matter_id, title, content, level, created_at, updated_at) VALUES
    -- 1º ano médio
    (2, 'Funções e Gráficos', 'Funções do 1º e 2º grau e suas representações gráficas.', 'básico', NOW(), NOW()),
    (2, 'Progressões e Sequências', 'PA, PG e aplicações em problemas.', 'básico', NOW(), NOW()),
    (2, 'Geometria Analítica Básica', 'Pontos, retas e distâncias no plano cartesiano.', 'básico', NOW(), NOW()),
    -- 2º ano médio
    (2, 'Trigonometria Avançada', 'Razões, identidades trigonométricas e aplicações.', 'intermediário', NOW(), NOW()),
    (2, 'Estatística e Probabilidade', 'Análise de dados, médias, variância e probabilidade.', 'intermediário', NOW(), NOW()),
    (2, 'Funções Exponenciais e Logarítmicas', 'Propriedades e aplicações.', 'intermediário', NOW(), NOW()),
    -- 3º ano médio
    (2, 'Cálculo Básico e Limites', 'Noções de derivadas e limites.', 'avançado', NOW(), NOW()),
    (2, 'Geometria Espacial Avançada', 'Volumes, áreas e sólidos complexos.', 'avançado', NOW(), NOW()),
    (2, 'Análise Combinatória Avançada', 'Permutações, combinações e problemas complexos.', 'avançado', NOW(), NOW());


    -- CIÊNCIAS

    INSERT INTO lesson (matter_id, title, content, level, created_at, updated_at) VALUES
    -- 1º ano médio
    (3, 'Citologia e Bioquímica', 'Estrutura celular e processos bioquímicos essenciais.', 'básico', NOW(), NOW()),
    (3, 'Genética Mendeliana e Molecular', 'Leis de Mendel e DNA.', 'básico', NOW(), NOW()),
    (3, 'Física Básica e Mecânica', 'Conceitos de força, energia e movimento.', 'básico', NOW(), NOW()),
    -- 2º ano médio
    (3, 'Física Moderna', 'Relatividade, física quântica e ondas.', 'intermediário', NOW(), NOW()),
    (3, 'Química Orgânica', 'Estruturas, funções e reações.', 'intermediário', NOW(), NOW()),
    (3, 'Ecologia e Biomas', 'Dinâmicas populacionais e impactos ambientais.', 'intermediário', NOW(), NOW()),
    -- 3º ano médio
    (3, 'Biotecnologia e Genética Avançada', 'Aplicações modernas da genética.', 'avançado', NOW(), NOW()),
    (3, 'Física Aplicada e Termodinâmica', 'Leis da termodinâmica e aplicações.', 'avançado', NOW(), NOW()),
    (3, 'Química Analítica e Industrial', 'Processos químicos e análises laboratoriais.', 'avançado', NOW(), NOW());


    -- HISTÓRIA

    INSERT INTO lesson (matter_id, title, content, level, created_at, updated_at) VALUES
    -- 1º ano médio
    (4, 'Brasil Colonial e Império', 'Colonização, economia açucareira e escravidão.', 'básico', NOW(), NOW()),
    (4, 'Sociedades Indígenas e Cultura Afro-brasileira', 'Organização social e tradições culturais.', 'básico', NOW(), NOW()),
    (4, 'Revoluções e Movimentos Sociais', 'Revoluções no mundo e no Brasil.', 'básico', NOW(), NOW()),
    -- 2º ano médio
    (4, 'Era Napoleônica e Guerras Mundiais', 'Impactos políticos e sociais.', 'intermediário', NOW(), NOW()),
    (4, 'Independência e República no Brasil', 'Transição do Império à República.', 'intermediário', NOW(), NOW()),
    (4, 'Guerra Fria e Globalização', 'Polarização mundial e economia global.', 'intermediário', NOW(), NOW()),
    -- 3º ano médio
    (4, 'Movimentos Sociais Contemporâneos', 'Lutas sociais e direitos civis.', 'avançado', NOW(), NOW()),
    (4, 'Brasil Contemporâneo', 'Política, economia e sociedade no século XX e XXI.', 'avançado', NOW(), NOW()),
    (4, 'História Mundial Contemporânea', 'Globalização, conflitos e integração.', 'avançado', NOW(), NOW());


    -- GEOGRAFIA

    INSERT INTO lesson (matter_id, title, content, level, created_at, updated_at) VALUES
    -- 1º ano médio
    (5, 'Relevo e Hidrografia Avançada', 'Formas de relevo e drenagem.', 'básico', NOW(), NOW()),
    (5, 'Climas e Vegetação do Brasil', 'Tipos climáticos e biomas brasileiros.', 'básico', NOW(), NOW()),
    (5, 'População e Urbanização', 'Distribuição populacional e crescimento urbano.', 'básico', NOW(), NOW()),
    -- 2º ano médio
    (5, 'Geopolítica e Conflitos Globais', 'Relações internacionais e economia.', 'intermediário', NOW(), NOW()),
    (5, 'Sustentabilidade e Meio Ambiente', 'Impactos ambientais e políticas de preservação.', 'intermediário', NOW(), NOW()),
    (5, 'Globalização e Economia', 'Fluxos financeiros, comerciais e culturais.', 'intermediário', NOW(), NOW()),
    -- 3º ano médio
    (5, 'Geografia Física Avançada', 'Processos naturais complexos, climas e solos.', 'avançado', NOW(), NOW()),
    (5, 'Geografia Humana Avançada', 'Urbanização, migrações e planejamento urbano.', 'avançado', NOW(), NOW()),
    (5, 'Desenvolvimento Regional e Territorial', 'Disparidades econômicas e políticas públicas.', 'avançado', NOW(), NOW());


    -- Questions

    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    -- PORTUGUÊS - lesson_id 1: Fonética e Fonologia Avançada
    (1, 'A palavra "táxi" possui quantos fonemas?', '3 fonemas', '4 fonemas', '5 fonemas', '6 fonemas', 'B', NOW(), NOW()),
    (1, 'O que estuda a fonologia?', 'Apenas a pronúncia das palavras.', 'O som das palavras e sua organização no sistema da língua.', 'A escrita e a grafia correta das palavras.', 'O significado dos sons e a prosódia.', 'B', NOW(), NOW()),
    (1, 'Em qual das palavras a letra "X" representa o fonema /z/?', 'xícara', 'exame', 'texto', 'tóxico', 'B', NOW(), NOW()),
    (1, 'Qual par de palavras possui dígrafo?', 'caro e claro', 'quilo e bola', 'telhado e sapato', 'nascer e ninho', 'D', NOW(), NOW()),
    (1, 'A prosódia estuda o quê?', 'A variação regional da fala.', 'A melodia e o ritmo da fala, incluindo a entonação.', 'Apenas a tonicidade das palavras.', 'A articulação dos sons da fala.', 'B', NOW(), NOW()),
    (1, 'Qual das alternativas apresenta um ditongo decrescente?', 'mãe', 'pau', 'série', 'muito', 'C', NOW(), NOW()),
    (1, 'Em "A lua brilhou na imensidão do céu", a sílaba tônica da palavra "imensidão" é:', 'men', 'men-si', 'si', 'dão', 'D', NOW(), NOW()),
    (1, 'A palavra "psicologia" tem um encontro consonantal. Qual é ele?', 'ps', 'co', 'lo', 'gi', 'A', NOW(), NOW()),
    (1, 'Na palavra "guarda", o encontro vocálico é classificado como:', 'hiato', 'ditongo crescente', 'ditongo decrescente', 'tritongo', 'B', NOW(), NOW()),
    (1, 'Qual a classificação do acento tônico na palavra "café"?', 'oxítona', 'paroxítona', 'proparoxítona', 'monossílaba', 'A', NOW(), NOW()),

    -- PORTUGUÊS - lesson_id 2: Morfologia Avançada
    (2, 'Qual das palavras abaixo é formada por derivação parassintética?', 'entristecer', 'infelizmente', 'desleal', 'planalto', 'A', NOW(), NOW()),
    (2, 'O que é um morfema?', 'A menor unidade da frase.', 'A menor unidade de som da palavra.', 'A menor unidade de significado da palavra.', 'A menor unidade gramatical.', 'C', NOW(), NOW()),
    (2, 'A palavra "planalto" é formada por qual processo de formação?', 'Justaposição', 'Aglutinação', 'Derivação regressiva', 'Derivação imprópria', 'B', NOW(), NOW()),
    (2, 'Em "super-herói", o prefixo "super" indica:', 'negação', 'superioridade', 'movimento', 'posterioridade', 'B', NOW(), NOW()),
    (2, 'A flexão de grau nos adjetivos é um estudo da:', 'Sintaxe', 'Fonologia', 'Semântica', 'Morfologia', 'D', NOW(), NOW()),
    (2, 'Qual a classe de palavra da palavra "felizmente"?', 'Substantivo', 'Adjetivo', 'Advérbio', 'Verbo', 'C', NOW(), NOW()),
    (2, 'Em "o andar do prédio", a palavra "andar" é classificada como:', 'Verbo', 'Substantivo', 'Adjetivo', 'Advérbio', 'B', NOW(), NOW()),
    (2, 'A palavra "fielmente" é formada por qual processo?', 'Derivação prefixal', 'Derivação sufixal', 'Derivação parassintética', 'Composição por justaposição', 'B', NOW(), NOW()),
    (2, 'Em qual alternativa há um substantivo composto por aglutinação?', 'pés de moleque', 'cabeça-chata', 'passatempo', 'girassol', 'C', NOW(), NOW()),
    (2, 'Qual o afixo que indica a flexão de número em "carros"?', '-os', '-s', '-o', '-ro', 'B', NOW(), NOW()),

    -- PORTUGUÊS - lesson_id 3: Sintaxe Complexa
    (3, 'Na oração "É fundamental que você estude para a prova", a oração "que você estude para a prova" é uma oração subordinada:', 'substantiva subjetiva', 'substantiva objetiva direta', 'substantiva predicativa', 'adjetiva restritiva', 'A', NOW(), NOW()),
    (3, 'Na frase "Os alunos, que estavam cansados, foram embora", a oração "que estavam cansados" é uma oração subordinada adjetiva:', 'restritiva', 'explicativa', 'substantiva', 'adverbial', 'B', NOW(), NOW()),
    (3, 'Qual conjunção coordena as orações em "Ele estudou, **mas** não passou no exame"?', 'conclusiva', 'explicativa', 'adversativa', 'alternativa', 'C', NOW(), NOW()),
    (3, 'Em "Caso chova, não sairemos de casa", a oração subordinada adverbial é classificada como:', 'causal', 'concessiva', 'condicional', 'conformativa', 'C', NOW(), NOW()),
    (3, 'Na frase "Ele agiu como se nada tivesse acontecido", a oração subordinada adverbial é:', 'comparativa', 'consecutiva', 'conformativa', 'causal', 'A', NOW(), NOW()),
    (3, 'Qual a oração principal na frase "Os pais disseram que o filho se comportou bem"?', 'que o filho se comportou bem', 'Os pais disseram', 'se comportou bem', 'não há oração principal', 'B', NOW(), NOW()),
    (3, 'A oração "Fui à feira **e** comprei frutas" é um exemplo de oração coordenada:', 'adversativa', 'aditiva', 'conclusiva', 'alternativa', 'B', NOW(), NOW()),
    (3, 'A frase "Ele é o professor **a quem** me referi" contém uma oração subordinada adjetiva:', 'restritiva', 'explicativa', 'conclusiva', 'subjetiva', 'A', NOW(), NOW()),
    (3, 'Qual a classificação sintática da oração "Eu quero **que você seja feliz**"?', 'Oração Subordinada Substantiva Objetiva Direta', 'Oração Subordinada Adjetiva Explicativa', 'Oração Coordenada Sindética Aditiva', 'Oração Subordinada Substantiva Subjetiva', 'A', NOW(), NOW()),
    (3, 'Em "Ele fala alto, logo deve ter um problema na audição", a conjunção "logo" introduz uma oração coordenada:', 'adversativa', 'conclusiva', 'explicativa', 'aditiva', 'B', NOW(), NOW()),

    -- PORTUGUÊS - lesson_id 4: Concordância e Regência Avançada
    (4, 'Assinale a alternativa em que a concordância verbal está incorreta:', 'Faz dois anos que não o vejo.', 'Havia muitos carros na rua.', 'Choveu em toda a cidade.', 'Existem problemas sérios.', 'A', NOW(), NOW()),
    (4, 'A regência do verbo "assistir" no sentido de "ver" exige qual preposição?', 'com', 'a', 'em', 'para', 'B', NOW(), NOW()),
    (4, 'Qual a forma correta: "Eu me **lembrei** do seu nome" ou "Eu me **lembrei** o seu nome"?', 'Eu me lembrei do seu nome.', 'Eu me lembrei o seu nome.', 'Ambas as formas estão corretas.', 'Nenhuma das formas está correta.', 'A', NOW(), NOW()),
    (4, 'Em qual das frases a concordância nominal está errada?', 'As alunas e os alunos dedicados passaram de ano.', 'Os alunos e as alunas dedicadas passaram de ano.', 'Os alunos e alunas dedicados passaram de ano.', 'Os alunos e alunas dedicadas passaram de ano.', 'B', NOW(), NOW()),
    (4, 'Qual a regência do verbo "obedece" na frase "O aluno obedece **ao** professor"?', 'Verbo transitivo direto', 'Verbo transitivo indireto', 'Verbo transitivo direto e indireto', 'Verbo intransitivo', 'B', NOW(), NOW()),
    (4, 'O verbo "fazer" no sentido de tempo decorrido, como em "Faz anos...", é:', 'impessoal', 'personal', 'intransitivo', 'transitivo', 'A', NOW(), NOW()),
    (4, 'A concordância verbal com o sujeito "a maioria dos alunos" pode ser feita de duas formas. Quais?', 'Sempre no singular.', 'Sempre no plural.', 'No singular (com "maioria") ou no plural (com "alunos").', 'Apenas no plural, pois "alunos" está no plural.', 'C', NOW(), NOW()),
    (4, 'O verbo "namorar" é transitivo direto. Qual a frase correta?', 'Eu namoro com ela.', 'Eu namoro ela.', 'Eu namoro a ela.', 'Eu namoro de ela.', 'B', NOW(), NOW()),
    (4, 'O pronome "anexo" concorda em gênero e número com o substantivo. Qual a forma correta?', 'A carta vai anexo.', 'A carta vai anexa.', 'A carta vai anexas.', 'As cartas vão anexo.', 'B', NOW(), NOW()),
    (4, 'A regência do verbo "aspirar" no sentido de "almejar" exige a preposição:', 'em', 'com', 'a', 'de', 'C', NOW(), NOW()),

    -- PORTUGUÊS - lesson_id 5: Figuras de Linguagem e Semântica
    (5, 'Qual figura de linguagem é usada na frase "Ele tem uma boca de ouro"?', 'Metáfora', 'Comparação', 'Metonímia', 'Hipérbole', 'A', NOW(), NOW()),
    (5, 'Em "Chorei um rio de lágrimas", temos um exemplo de:', 'Eufemismo', 'Ironia', 'Hipérbole', 'Metáfora', 'C', NOW(), NOW()),
    (5, 'A frase "Ele é o Sol que ilumina minhas manhãs" é um exemplo de:', 'Comparação', 'Metáfora', 'Personificação', 'Eufemismo', 'B', NOW(), NOW()),
    (5, 'Qual figura de linguagem é "O pé da mesa quebrou"?', 'Antítese', 'Sinestesia', 'Catacrese', 'Hipérbole', 'C', NOW(), NOW()),
    (5, 'A substituição do autor pela obra ("Adoro ler Machado de Assis") é um exemplo de:', 'Metáfora', 'Metonímia', 'Eufemismo', 'Ironia', 'B', NOW(), NOW()),
    (5, 'A frase "Ele viveu os últimos anos em um leito de hospital" é um exemplo de:', 'Sinestesia', 'Metonímia', 'Hipérbole', 'Eufemismo', 'B', NOW(), NOW()),
    (5, 'Qual figura de linguagem está presente em "A luz fria da manhã invadiu o quarto"?', 'Metáfora', 'Catacrese', 'Sinestesia', 'Hipérbole', 'C', NOW(), NOW()),
    (5, 'A frase "Que delícia de tortura!" é um exemplo de:', 'Paradoxo', 'Eufemismo', 'Ironia', 'Metonímia', 'A', NOW(), NOW()),
    (5, 'Em "Ele faltou com a verdade", temos um exemplo de:', 'Ironia', 'Eufemismo', 'Metáfora', 'Comparação', 'B', NOW(), NOW()),
    (5, 'Qual figura de linguagem atribui características humanas a seres inanimados?', 'Metáfora', 'Catacrese', 'Personificação', 'Sinestesia', 'C', NOW(), NOW()),

    -- PORTUGUÊS - lesson_id 6: Crase, Pontuação e Coesão
    (6, 'Em qual alternativa o uso da crase está incorreto?', 'Fui à escola.', 'Fomos à praia.', 'Ele foi a pé.', 'Dedico-me à leitura.', 'C', NOW(), NOW()),
    (6, 'A vírgula é usada para separar termos com a mesma função sintática. Qual a função da vírgula em "Mãe, o jantar está pronto"?', 'Separar o aposto.', 'Separar o vocativo.', 'Separar o sujeito.', 'Separar o adjunto adverbial deslocado.', 'B', NOW(), NOW()),
    (6, 'Assinale a frase em que o acento grave (crase) é obrigatório:', 'Ele se refere a essa pessoa.', 'À noite, as estrelas brilham.', 'A partir de hoje, vou estudar mais.', 'Ela foi a pé ao trabalho.', 'B', NOW(), NOW()),
    (6, 'Qual a função do conectivo "porém" em um texto?', 'Adição', 'Conclusão', 'Alternância', 'Oposição', 'D', NOW(), NOW()),
    (6, 'Em qual caso a crase é facultativa?', 'Antes de palavra masculina.', 'Antes de pronomes pessoais.', 'Antes de nomes próprios femininos.', 'Antes de verbo.', 'C', NOW(), NOW()),
    (6, 'A coesão textual é a responsável por:', 'Deixar o texto mais bonito.', 'Conectar as partes do texto, dando sentido e fluidez.', 'Apenas evitar repetições de palavras.', 'Garantir a concordância verbal e nominal.', 'B', NOW(), NOW()),
    (6, 'Qual o sinal de pontuação utilizado para indicar uma interrupção da fala, um suspense ou uma citação incompleta?', 'Ponto final.', 'Vírgula.', 'Ponto e vírgula.', 'Reticências.', 'D', NOW(), NOW()),
    (6, 'Qual a frase com pontuação correta?', 'Os alunos, estudaram, e passaram no exame.', 'Os alunos, que estudaram, passaram no exame.', 'Os alunos que estudaram, passaram no exame.', 'Os alunos que, estudaram, passaram no exame.', 'B', NOW(), NOW()),
    (6, 'A crase é a fusão de:', 'Preposição "a" e artigo definido feminino "a".', 'Preposição "a" e artigo definido masculino "o".', 'Preposição "a" e pronome demonstrativo "aquele".', 'Preposição "a" e artigo indefinido "uma".', 'A', NOW(), NOW()),
    (6, 'Qual o conectivo de conclusão mais adequado para a frase "Ele estudou muito, ... passou no vestibular"?', 'mas', 'portanto', 'porque', 'e', 'B', NOW(), NOW()),

    -- PORTUGUÊS - lesson_id 7: Literatura Brasileira Contemporânea
    (7, 'O "Auto da Compadecida", obra de Ariano Suassuna, é um exemplo de literatura que se destaca por:', 'Seu realismo fantástico.', 'Sua linguagem regionalista e oralidade.', 'Seu engajamento social e político.', 'Seu experimentalismo formal.', 'B', NOW(), NOW()),
    (7, 'Qual das seguintes características não é comum à literatura brasileira contemporânea?', 'Fragmentação narrativa.', 'Forte presença de metalinguagem.', 'Visão otimista e romântica do país.', 'Engajamento social e questionamento de identidades.', 'C', NOW(), NOW()),
    (7, 'A obra de Clarice Lispector se destaca pelo(a):', 'Realismo social.', 'Foco no fluxo de consciência e no intimismo.', 'Linguagem regionalista.', 'Prosa poética com temas urbanos.', 'B', NOW(), NOW()),
    (7, 'O modernismo e o concretismo influenciaram a produção de qual poeta contemporâneo?', 'Carlos Drummond de Andrade.', 'Ferreira Gullar.', 'Manuel Bandeira.', 'Cecília Meireles.', 'B', NOW(), NOW()),
    (7, 'Qual autor contemporâneo é conhecido por suas crônicas e pela capacidade de observar o cotidiano?', 'Dalton Trevisan.', 'Rubem Braga.', 'Guimarães Rosa.', 'Lygia Fagundes Telles.', 'B', NOW(), NOW()),
    (7, 'A literatura contemporânea, especialmente a poesia, apresenta uma tendência ao(a):', 'Formalismo rígido.', 'Verso livre e a experimentalidade.', 'Temas mitológicos e clássicos.', 'Linguagem rebuscada e complexa.', 'B', NOW(), NOW()),
    (7, 'Qual das obras abaixo é de Lygia Fagundes Telles?', '"Sagarana"', '"Vidas Secas"', '"As Meninas"', '"O Auto da Compadecida"', 'C', NOW(), NOW()),
    (7, 'A temática da violência urbana e das minorias sociais é uma forte característica da literatura de:', 'Jorge Amado.', 'Machado de Assis.', 'Lima Barreto.', 'Paulo Lins.', 'D', NOW(), NOW()),
    (7, 'O termo "literatura contemporânea" refere-se às obras produzidas a partir de qual período, aproximadamente?', 'Século XIX.', 'Primeira metade do século XX.', 'Segunda metade do século XX e XXI.', 'Período colonial.', 'C', NOW(), NOW()),
    (7, 'A poesia de Adélia Prado é marcada por uma linguagem que mistura o cotidiano e o sagrado, com influências do(a):', 'Realismo.', 'Parnasianismo.', 'Modernismo.', 'Romantismo.', 'C', NOW(), NOW()),

    -- PORTUGUÊS - lesson_id 8: Análise Sintática Avançada
    (8, 'Qual a função sintática do termo em destaque: "Ele comeu **a torta**"?', 'Sujeito', 'Objeto direto', 'Objeto indireto', 'Predicativo do sujeito', 'B', NOW(), NOW()),
    (8, 'Em "O carro, **completamente amassado**, foi guinchado", qual a função sintática de "completamente amassado"?', 'Adjunto adverbial', 'Adjunto adnominal', 'Aposto', 'Predicativo do objeto', 'B', NOW(), NOW()),
    (8, 'Na frase "Ele parece **cansado**", o termo em destaque é:', 'Objeto direto', 'Adjunto adnominal', 'Predicativo do sujeito', 'Predicativo do objeto', 'C', NOW(), NOW()),
    (8, 'Qual a função sintática do termo sublinhado em: "Fomos ao cinema **com os amigos**"?', 'Objeto indireto', 'Objeto direto', 'Complemento nominal', 'Adjunto adverbial de companhia', 'D', NOW(), NOW()),
    (8, 'Qual o termo que completa o sentido de um nome, com preposição?', 'Objeto direto', 'Objeto indireto', 'Complemento nominal', 'Aposto', 'C', NOW(), NOW()),
    (8, 'Em "A prova, **aquela que fizemos ontem**, foi difícil", o termo em destaque é:', 'Objeto direto', 'Vocativo', 'Aposto explicativo', 'Adjunto adnominal', 'C', NOW(), NOW()),
    (8, 'A função sintática de "do professor" na frase "A aula do professor foi cancelada" é:', 'Complemento nominal', 'Objeto indireto', 'Adjunto adnominal', 'Objeto direto', 'C', NOW(), NOW()),
    (8, 'Qual a função sintática do termo em destaque: "**A ele** não lhe agrada a ideia"?', 'Objeto direto', 'Objeto indireto', 'Sujeito', 'Predicativo do sujeito', 'B', NOW(), NOW()),
    (8, 'A frase "Ele, **o diretor**, chegou" contém um termo que funciona como:', 'Objeto indireto', 'Vocativo', 'Aposto', 'Adjunto adnominal', 'C', NOW(), NOW()),
    (8, 'O verbo "telefonar" é transitivo indireto. Qual a frase correta?', 'Eu telefonei ele.', 'Eu telefonei para ele.', 'Eu telefonei de ele.', 'Eu telefonei a ele.', 'B', NOW(), NOW()),

    -- PORTUGUÊS - lesson_id 9: Interpretação e Produção de Texto
    (9, 'Qual o objetivo principal da interpretação de texto?', 'Achar a ideia principal do texto.', 'Decifrar o código da linguagem utilizada.', 'Reconstruir o sentido e as intenções do autor.', 'Decorar as informações do texto.', 'C', NOW(), NOW()),
    (9, 'A coesão textual se refere a que aspecto?', 'A beleza do texto.', 'A organização das ideias e a conexão entre frases e parágrafos.', 'O vocabulário utilizado pelo autor.', 'A originalidade do tema.', 'B', NOW(), NOW()),
    (9, 'O que é a coerência textual?', 'A correta aplicação da gramática.', 'A clareza das frases e parágrafos.', 'O sentido lógico e a harmonia entre as ideias do texto.', 'A utilização de conectivos.', 'C', NOW(), NOW()),
    (9, 'Qual a diferença entre interpretação e compreensão de texto?', 'Não há diferença.', 'Interpretação foca na superfície do texto, compreensão foca na intenção.', 'Compreensão foca no que está explícito, interpretação no que está implícito.', 'Compreensão é mais complexa que a interpretação.', 'C', NOW(), NOW()),
    (9, 'Em um texto dissertativo-argumentativo, a tese é:', 'A introdução do texto.', 'A ideia central que será defendida.', 'A conclusão do texto.', 'O desenvolvimento dos argumentos.', 'B', NOW(), NOW()),
    (9, 'A produção de um texto eficaz exige, principalmente:', 'Uma caligrafia bonita.', 'Um vocabulário rico e complexo.', 'A adequação da linguagem ao gênero e público-alvo.', 'Uma introdução muito longa.', 'C', NOW(), NOW()),
    (9, 'O que é intertextualidade?', 'O diálogo entre diferentes textos.', 'A repetição de palavras no texto.', 'A criação de um texto inédito.', 'O uso de gírias e expressões populares.', 'A', NOW(), NOW()),
    (9, 'O que é um texto injuntivo?', 'Um texto que conta uma história.', 'Um texto que dá instruções e orientações.', 'Um texto que expressa opiniões.', 'Um texto que descreve algo.', 'B', NOW(), NOW()),
    (9, 'Qual o primeiro passo para uma boa interpretação de texto?', 'Fazer um resumo do texto.', 'Ler o texto com atenção, procurando as ideias principais.', 'Sublinhar todas as palavras desconhecidas.', 'Ler apenas o título e a conclusão.', 'B', NOW(), NOW()),
    (9, 'Em um texto, a coerência está ligada principalmente a:', 'A gramática.', 'A ortografia.', 'O sentido.', 'A pontuação.', 'C', NOW(), NOW());


    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    -- MATEMÁTICA - lesson_id 10: Funções e Gráficos
    (10, 'Qual é o domínio da função $f(x) = \frac{1}{x-2}$?', '$x \in \mathbb{R}, x \neq 2$', '$x \in \mathbb{R}$', '$x > 2$', '$x < 2$', 'A', NOW(), NOW()),
    (10, 'A função $f(x) = 2x + 1$ é uma função:', 'Do segundo grau', 'Do primeiro grau', 'Exponencial', 'Constante', 'B', NOW(), NOW()),
    (10, 'O vértice da parábola da função $f(x) = x^2 - 4x + 3$ é:', '$(2, 1)$', '$(2, -1)$', '$(-2, 1)$', '$(-2, -1)$', 'B', NOW(), NOW()),
    (10, 'Qual a raiz da função $f(x) = 3x - 9$?', '$x=-3$', '$x=3$', '$x=1/3$', '$x=-1/3$', 'B', NOW(), NOW()),
    (10, 'O que representa o coeficiente "a" em uma função do segundo grau $f(x) = ax^2 + bx + c$?', 'O ponto onde a parábola corta o eixo y.', 'A concavidade da parábola.', 'As raízes da função.', 'O vértice da parábola.', 'B', NOW(), NOW()),
    (10, 'Se $f(x) = 2x - 3$, qual o valor de $f(5)$?', '2', '7', '10', '-7', 'B', NOW(), NOW()),
    (10, 'A reta que representa uma função do primeiro grau é crescente quando o coeficiente angular é:', 'Negativo', 'Positivo', 'Nulo', 'Indefinido', 'B', NOW(), NOW()),
    (10, 'Qual a função cujo gráfico é uma parábola?', 'Função linear', 'Função quadrática', 'Função exponencial', 'Função logarítmica', 'B', NOW(), NOW()),
    (10, 'O ponto de interseção do gráfico da função $f(x) = 4x + 8$ com o eixo y é:', '$(2, 0)$', '$(0, 2)$', '$(0, 8)$', '$(-2, 0)$', 'C', NOW(), NOW()),
    (10, 'Qual a imagem da função $f(x) = x^2$ para $x \in \mathbb{R}$?', '$[0, +\infty)$', '$(-\infty, 0]$', '$\mathbb{R}$', '$[1, +\infty)$', 'A', NOW(), NOW()),

    -- MATEMÁTICA - lesson_id 11: Progressões e Sequências
    (11, 'Qual o 5º termo de uma PA com $a_1 = 3$ e razão $r = 2$?', '$9$', '$11$', '$13$', '$15$', 'B', NOW(), NOW()),
    (11, 'O 4º termo de uma PG com $a_1 = 2$ e razão $q = 3$ é:', '$18$', '$27$', '$54$', '$81$', 'C', NOW(), NOW()),
    (11, 'Qual a soma dos 3 primeiros termos da PA $(5, 8, 11, ...)$?', '$21$', '$24$', '$27$', '$30$', 'B', NOW(), NOW()),
    (11, 'Em uma PG, o quociente entre um termo e o seu antecessor é chamado de:', 'Termo geral', 'Razão', 'Limite', 'Sequência', 'B', NOW(), NOW()),
    (11, 'Qual o termo geral de uma PA?', '$a_n = a_1 + (n-1)r$', '$a_n = a_1 \cdot q^{n-1}$', '$S_n = \frac{n(a_1+a_n)}{2}$', '$S_n = \frac{a_1(q^n-1)}{q-1}$', 'A', NOW(), NOW()),
    (11, 'A soma dos termos de uma PA finita é dada por:', '$S_n = n \cdot a_1$', '$S_n = \frac{n(a_1+a_n)}{2}$', '$S_n = n \cdot r$', '$S_n = \frac{a_n}{r}$', 'B', NOW(), NOW()),
    (11, 'Qual a razão de uma PA em que $a_1 = 7$ e $a_4 = 16$?', '$2$', '$3$', '$4$', '$5$', 'B', NOW(), NOW()),
    (11, 'Se o 3º termo de uma PG é 12 e o 5º é 48, qual a razão?', '$2$', '$3$', '$4$', '$1/2$', 'A', NOW(), NOW()),
    (11, 'Qual o 10º termo de uma PG com $a_1 = 1$ e $q = 2$?', '$256$', '$512$', '$1024$', '$2048$', 'B', NOW(), NOW()),
    (11, 'Qual a soma dos 4 primeiros termos de uma PG com $a_1 = 3$ e $q = 2$?', '$30$', '$45$', '$51$', '$60$', 'C', NOW(), NOW()),

    -- MATEMÁTICA - lesson_id 12: Geometria Analítica Básica
    (12, 'Qual a distância entre os pontos A(2, 3) e B(5, 7)?', '$\sqrt{13}$', '$\sqrt{25}$', '$5$', '$\sqrt{17}$', 'C', NOW(), NOW()),
    (12, 'O ponto médio do segmento de reta entre A(1, 4) e B(3, 8) é:', '$(2, 6)$', '$(4, 12)$', '$(2, 4)$', '$(1, 2)$', 'A', NOW(), NOW()),
    (12, 'A equação geral da reta que passa pelos pontos A(0, 2) e B(3, 5) é:', '$x - y + 2 = 0$', '$x + y + 2 = 0$', '$2x - y + 3 = 0$', '$x - y - 2 = 0$', 'A', NOW(), NOW()),
    (12, 'A distância de um ponto P(x₀, y₀) à origem (0, 0) é dada por:', '$\sqrt{x₀^2 - y₀^2}$', '$x₀ + y₀$', '$\sqrt{x₀^2 + y₀^2}$', '$(x₀ - y₀)^2$', 'C', NOW(), NOW()),
    (12, 'Qual o coeficiente angular da reta que passa pelos pontos (1, 5) e (3, 9)?', '$2$', '$3$', '$4$', '$1/2$', 'A', NOW(), NOW()),
    (12, 'As retas $y = 3x + 2$ e $y = - \frac{1}{3}x + 5$ são:', 'Paralelas', 'Coincidentes', 'Concorrentes e perpendiculares', 'Concorrentes, mas não perpendiculares', 'C', NOW(), NOW()),
    (12, 'A área de um triângulo com vértices (0,0), (2,0) e (0,4) é:', '2', '4', '8', '16', 'B', NOW(), NOW()),
    (12, 'O ponto que está sobre o eixo das abscissas tem a coordenada:', '$x = 0$', '$y = 0$', '$x = y$', '$x \neq 0$', 'B', NOW(), NOW()),
    (12, 'A equação da circunferência com centro em (0, 0) e raio 3 é:', '$x^2 + y^2 = 3$', '$x^2 + y^2 = 9$', '$x + y = 3$', '$(x-3)^2 + (y-3)^2 = 9$', 'B', NOW(), NOW()),
    (12, 'Qual a distância entre as retas $y = 2x + 1$ e $y = 2x + 5$? (não há)', '0', '2', '4', '$\frac{4}{\sqrt{5}}$', 'D', NOW(), NOW()),

    -- MATEMÁTICA - lesson_id 13: Trigonometria Avançada
    (13, 'Se $\sin(x) = \frac{3}{5}$ e $x$ está no 1º quadrante, qual o valor de $\cos(x)$?', '$\frac{4}{5}$', '$-\frac{4}{5}$', '$\frac{3}{4}$', '$-\frac{3}{4}$', 'A', NOW(), NOW()),
    (13, 'O valor de $\tan(60^\circ)$ é:', '$\frac{\sqrt{3}}{3}$', '$1$', '$\sqrt{3}$', '$2$', 'C', NOW(), NOW()),
    (13, 'A identidade trigonométrica fundamental é:', '$\sin^2(x) + \cos^2(x) = 1$', '$\sin(x) + \cos(x) = 1$', '$\tan(x) = \frac{\cos(x)}{\sin(x)}$', '$\sec(x) = \sin(x)$', 'A', NOW(), NOW()),
    (13, 'Qual o período da função $f(x) = \sin(2x)$?', '$2\pi$', '$\pi$', '$\frac{\pi}{2}$', '$4\pi$', 'B', NOW(), NOW()),
    (13, 'O que é a secante de um ângulo?', 'O inverso do seno.', 'O inverso do cosseno.', 'O inverso da tangente.', 'O inverso da cotangente.', 'B', NOW(), NOW()),
    (13, 'Em um triângulo retângulo, a tangente de um ângulo agudo é a razão entre:', 'Cateto adjacente e hipotenusa.', 'Cateto oposto e hipotenusa.', 'Cateto oposto e cateto adjacente.', 'Hipotenusa e cateto oposto.', 'C', NOW(), NOW()),
    (13, 'Qual o valor de $\sin(\frac{\pi}{2})$?', '0', '$1$', '$-1$', '$\frac{\sqrt{2}}{2}$', 'B', NOW(), NOW()),
    (13, 'Se $\cos(x) = -\frac{1}{2}$ e $x$ está no 2º quadrante, qual o valor de $\sin(x)$?', '$\frac{\sqrt{3}}{2}$', '$-\frac{\sqrt{3}}{2}$', '$1/2$', '$-1/2$', 'A', NOW(), NOW()),
    (13, 'A Lei dos Cossenos em um triângulo ABC é $a^2 = b^2 + c^2 - 2bc \cos(A)$. Para um triângulo retângulo, onde o ângulo A é $90^\circ$, o que acontece com a fórmula?', 'Ela vira a Lei dos Senos.', 'Ela vira o Teorema de Pitágoras.', 'Ela se torna $a^2 = b^2 - c^2$.', 'Ela se torna $a^2 = b^2 + c^2 + 2bc$.', 'B', NOW(), NOW()),
    (13, 'A função $f(x) = \cos(x)$ tem imagem:', '$[-1, 1]$', '$[0, 1]$', '$\mathbb{R}$', '$(-\infty, 1]$', 'A', NOW(), NOW()),

    -- MATEMÁTICA - lesson_id 14: Estatística e Probabilidade
    (14, 'Qual a média aritmética dos números 10, 12, 15, 18 e 20?', '15', '16', '17', '18', 'A', NOW(), NOW()),
    (14, 'Em um lançamento de um dado honesto, qual a probabilidade de sair um número par?', '$1/2$', '$1/3$', '$1/6$', '$2/3$', 'A', NOW(), NOW()),
    (14, 'O que é a moda em um conjunto de dados?', 'O valor que mais se repete.', 'O valor central do conjunto.', 'A média dos valores.', 'A diferença entre o maior e o menor valor.', 'A', NOW(), NOW()),
    (14, 'A mediana de um conjunto de dados ordenado é o(a):', 'O valor que está no centro.', 'A média dos valores.', 'O valor que aparece com mais frequência.', 'A soma dos valores dividida pelo número de valores.', 'A', NOW(), NOW()),
    (14, 'Qual a mediana do conjunto de dados {2, 5, 8, 10, 12}?', '5', '8', '10', '12', 'B', NOW(), NOW()),
    (14, 'A probabilidade de um evento A ou B ocorrer é dada por $P(A \cup B) = P(A) + P(B)$ se os eventos A e B forem:', 'Independentes', 'Dependentes', 'Mutuamente exclusivos', 'Complementares', 'C', NOW(), NOW()),
    (14, 'Qual a variância do conjunto {2, 2, 6, 6}?', '0', '2', '4', '8', 'B', NOW(), NOW()),
    (14, 'Em uma urna com 5 bolas azuis e 3 vermelhas, qual a probabilidade de tirar uma bola azul?', '$5/8$', '$3/8$', '$1/5$', '$1/3$', 'A', NOW(), NOW()),
    (14, 'O desvio padrão é:', 'A raiz quadrada da variância.', 'O quadrado da variância.', 'A média dos desvios.', 'O desvio de cada valor em relação à média.', 'A', NOW(), NOW()),
    (14, 'Em um baralho de 52 cartas, qual a probabilidade de tirar uma carta de copas?', '$1/4$', '$1/13$', '$1/52$', '$1/2$', 'A', NOW(), NOW()),

    -- MATEMÁTICA - lesson_id 15: Funções Exponenciais e Logarítmicas
    (15, 'Qual a solução da equação $3^x = 81$?', '$x=2$', '$x=3$', '$x=4$', '$x=5$', 'C', NOW(), NOW()),
    (15, 'Qual a propriedade que afirma que $\log_a(x \cdot y) = \log_a(x) + \log_a(y)$?', 'Logaritmo de um quociente', 'Logaritmo de uma potência', 'Logaritmo de um produto', 'Logaritmo de uma raiz', 'C', NOW(), NOW()),
    (15, 'Se $f(x) = 2^x$, qual o valor de $f(3)$?', '6', '8', '10', '12', 'B', NOW(), NOW()),
    (15, 'A função exponencial é crescente quando a base "a" é:', 'Maior que 1.', 'Entre 0 e 1.', 'Igual a 1.', 'Negativa.', 'A', NOW(), NOW()),
    (15, 'Qual o valor de $\log_2(16)$?', '2', '4', '8', '16', 'B', NOW(), NOW()),
    (15, 'O que é o logaritmo de 1 em qualquer base?', 'A própria base.', '1', '0', 'Indefinido.', 'C', NOW(), NOW()),
    (15, 'A função logarítmica é a função inversa da:', 'Função quadrática', 'Função do primeiro grau', 'Função trigonométrica', 'Função exponencial', 'D', NOW(), NOW()),
    (15, 'Se $\log(x) = 2$, qual o valor de $x$ (base 10)?', '10', '20', '100', '200', 'C', NOW(), NOW()),
    (15, 'A expressão $\ln(e^x)$ é igual a:', '$e$', '$x$', '1', '$0$', 'B', NOW(), NOW()),
    (15, 'Qual a solução da equação $\log_3(x) = 2$?', '$x=3$', '$x=6$', '$x=9$', '$x=1/9$', 'C', NOW(), NOW()),

    -- MATEMÁTICA - lesson_id 16: Cálculo Básico e Limites
    (16, 'Qual o limite de $\lim_{x \to 2} (3x + 1)$?', '6', '7', '8', '9', 'B', NOW(), NOW()),
    (16, 'A derivada de $f(x) = x^2$ é:', '$2x$', '$x$', '$2$', '$x^3/3$', 'A', NOW(), NOW()),
    (16, 'O limite de $\lim_{x \to \infty} \frac{1}{x}$ é:', '$0$', '$1$', '$\infty$', '$-1$', 'A', NOW(), NOW()),
    (16, 'A derivada da função constante $f(x) = 5$ é:', '$5$', '$x$', '$0$', '$1$', 'C', NOW(), NOW()),
    (16, 'A derivada de uma função em um ponto representa:', 'A área sob a curva.', 'O volume de um sólido.', 'O coeficiente angular da reta tangente.', 'A integral da função.', 'C', NOW(), NOW()),
    (16, 'Qual a regra de derivação para a função $f(x) = x^n$?', '$nx^{n-1}$', '$nx^{n+1}$', '$x^{n-1}/n$', '$n/x^{n+1}$', 'A', NOW(), NOW()),
    (16, 'O limite de $\lim_{x \to 0} \frac{\sin(x)}{x}$ é:', '$0$', '$1$', '$\infty$', '$-1$', 'B', NOW(), NOW()),
    (16, 'Se $f(x) = 3x^2 + 2x - 1$, qual o valor de $f(x)$?', '$6x - 1$', '$6x + 2$', '$3x + 2$', '$6x$', 'B', NOW(), NOW()),
    (16, 'A integral é a operação inversa da:', 'Derivada', 'Limite', 'Função', 'Equação', 'A', NOW(), NOW()),
    (16, 'Qual o limite de $\lim_{x \to 3} \frac{x^2-9}{x-3}$?', '3', '6', '9', 'Indeterminado', 'B', NOW(), NOW()),

    -- MATEMÁTICA - lesson_id 17: Geometria Espacial Avançada
    (17, 'Qual o volume de uma esfera de raio 3 cm?', '$9\pi$', '$18\pi$', '$27\pi$', '$36\pi$', 'D', NOW(), NOW()),
    (17, 'A área total de um cubo de aresta 4 cm é:', '$16 cm^2$', '$64 cm^2$', '$96 cm^2$', '$24 cm^2$', 'C', NOW(), NOW()),
    (17, 'Um paralelepípedo retângulo tem dimensões 2 cm x 3 cm x 5 cm. Qual seu volume?', '$15 cm^3$', '$20 cm^3$', '$30 cm^3$', '$60 cm^3$', 'C', NOW(), NOW()),
    (17, 'Qual a área lateral de um cilindro circular reto de raio 2 cm e altura 5 cm?', '$10\pi$', '$20\pi$', '$30\pi$', '$40\pi$', 'B', NOW(), NOW()),
    (17, 'O volume de um cone é $\frac{1}{3} \cdot$ (área da base) $\cdot$ altura. O que representa o fator $\frac{1}{3}$?', 'É uma constante de proporcionalidade.', 'É a relação entre o volume do cone e o volume do cilindro de mesma base e altura.', 'É a raiz cúbica da altura.', 'É a razão entre o raio e a altura.', 'B', NOW(), NOW()),
    (17, 'A área de um tetraedro regular de aresta "a" é:', '$\frac{a^2\sqrt{3}}{4}$', '$a^2\sqrt{3}$', '$a^2$', '$\frac{a^2\sqrt{2}}{4}$', 'B', NOW(), NOW()),
    (17, 'Qual a relação entre o volume de um cubo e o volume de uma pirâmide com a mesma base e altura?', 'O volume da pirâmide é o dobro do volume do cubo.', 'O volume do cubo é o triplo do volume da pirâmide.', 'Os volumes são iguais.', 'O volume da pirâmide é a metade do volume do cubo.', 'B', NOW(), NOW()),
    (17, 'A área da superfície de uma esfera de raio R é:', '$4\pi R^2$', '$2\pi R$', '$\frac{4}{3}\pi R^3$', '$\pi R^2$', 'A', NOW(), NOW()),
    (17, 'Qual o volume de uma pirâmide de base quadrada (lado 3) e altura 4?', '$12$', '$36$', '$48$', '$60$', 'A', NOW(), NOW()),
    (17, 'Qual a área total de um prisma triangular regular de aresta da base 2 e altura 5?', '$20 + 2\sqrt{3}$', '$30 + \sqrt{3}$', '$30 + 2\sqrt{3}$', '$40 + \sqrt{3}$', 'C', NOW(), NOW()),

    -- MATEMÁTICA - lesson_id 18: Análise Combinatória Avançada
    (18, 'De quantas maneiras podemos arrumar 5 pessoas em uma fila?', '$5$', '$10$', '$24$', '$120$', 'D', NOW(), NOW()),
    (18, 'Quantos números de 3 algarismos distintos podemos formar com os algarismos {1, 2, 3, 4, 5}?', '$125$', '$60$', '$25$', '$15$', 'B', NOW(), NOW()),
    (18, 'De quantas maneiras podemos escolher 3 pessoas de um grupo de 8?', '$24$', '$56$', '$120$', '$336$', 'B', NOW(), NOW()),
    (18, 'O número de permutações de $n$ objetos é dado por:', '$n!$', '$n$', '$n-1$', '$n^2$', 'A', NOW(), NOW()),
    (18, 'Qual a diferença entre arranjo e combinação?', 'Não há diferença.', 'No arranjo a ordem importa, na combinação não.', 'Na combinação a ordem importa, no arranjo não.', 'Arranjo usa todos os elementos, combinação não.', 'B', NOW(), NOW()),
    (18, 'Um cadeado possui 4 dígitos (0-9). Quantas senhas diferentes podem ser criadas?', '$10 \cdot 9 \cdot 8 \cdot 7$', '$10^4$', '$4^10$', '$10 + 4$', 'B', NOW(), NOW()),
    (18, 'De quantas maneiras podemos escolher 2 homens e 3 mulheres de um grupo de 5 homens e 6 mulheres?', '$10 \cdot 20 = 200$', '$5 \cdot 6 = 30$', '$2 \cdot 3 = 6$', '$10 + 20 = 30$', 'A', NOW(), NOW()),
    (18, 'Em um jogo da Mega-Sena, 6 números são sorteados de 60. O cálculo é um exemplo de:', 'Arranjo', 'Permutação', 'Combinação', 'Probabilidade', 'C', NOW(), NOW()),
    (18, 'Quantos anagramas a palavra "AMOR" possui?', '$12$', '$24$', '$36$', '$48$', 'B', NOW(), NOW()),
    (18, 'Quantas combinações de 2 elementos de um conjunto de 5 elementos podem ser formadas?', '$10$', '$20$', '$15$', '$5$', 'A', NOW(), NOW());

    -- 1º ano médio: Citologia e Bioquímica (lesson_id = 19)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (19, 'Qual é a função da mitocôndria?', 'Produzir proteínas', 'Armazenar água', 'Gerar energia ATP', 'Digestão celular', 'C', NOW(), NOW()),
    (19, 'Qual organela é responsável pela síntese de proteínas?', 'Ribossomo', 'Lisossomo', 'Cloroplasto', 'Mitocôndria', 'A', NOW(), NOW()),
    (19, 'Qual o principal componente da membrana celular?', 'Fosfolipídios', 'Carboidratos', 'Ácidos nucleicos', 'Aminoácidos', 'A', NOW(), NOW()),
    (19, 'O DNA está localizado principalmente em qual organela?', 'Mitocôndria', 'Núcleo', 'Ribossomo', 'Lisossomo', 'B', NOW(), NOW()),
    (19, 'Qual molécula é responsável pelo armazenamento de energia a curto prazo?', 'ATP', 'Glicose', 'Lipídios', 'Proteínas', 'A', NOW(), NOW()),
    (19, 'Qual dos seguintes não é um monossacarídeo?', 'Glicose', 'Frutose', 'Sacarose', 'Galactose', 'C', NOW(), NOW()),
    (19, 'Qual ácido nucleico é responsável por transportar informação genética?', 'DNA', 'RNA', 'ATP', 'ADN', 'A', NOW(), NOW()),
    (19, 'Qual a função dos lisossomos?', 'Produzir energia', 'Digestão intracelular', 'Armazenamento de proteínas', 'Síntese de lipídios', 'B', NOW(), NOW()),
    (19, 'Qual componente celular é exclusivo de células vegetais?', 'Cloroplasto', 'Mitocôndria', 'Ribossomo', 'Núcleo', 'A', NOW(), NOW()),
    (19, 'O que são enzimas?', 'Proteínas que aceleram reações', 'Carboidratos de reserva', 'Lipídios estruturais', 'Ácidos nucleicos', 'A', NOW(), NOW());

    -- 1º ano médio: Genética Mendeliana e Molecular (lesson_id = 20)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (20, 'Quem é considerado o pai da genética?', 'Watson', 'Mendel', 'Crick', 'Darwin', 'B', NOW(), NOW()),
    (20, 'Qual é a unidade básica da hereditariedade?', 'Gene', 'Cromossomo', 'DNA', 'Alelo', 'A', NOW(), NOW()),
    (20, 'Como se chama a versão alternativa de um gene?', 'Cromossomo', 'Alelo', 'Núcleo', 'Exon', 'B', NOW(), NOW()),
    (20, 'Qual molécula carrega a informação genética?', 'RNA', 'DNA', 'ATP', 'Proteína', 'B', NOW(), NOW()),
    (20, 'Quantos cromossomos humanos existem em células somáticas?', '23', '46', '44', '92', 'B', NOW(), NOW()),
    (20, 'Qual tipo de RNA leva a informação do DNA para o ribossomo?', 'tRNA', 'rRNA', 'mRNA', 'snRNA', 'C', NOW(), NOW()),
    (20, 'Como se chama a combinação de alelos de um organismo?', 'Fenótipo', 'Genótipo', 'Genoma', 'Cromossomo', 'B', NOW(), NOW()),
    (20, 'O cruzamento entre dois heterozigotos resulta em qual proporção fenotípica?', '1:2:1', '3:1', '2:2', '1:3', 'B', NOW(), NOW()),
    (20, 'Qual é a base nitrogenada que não está presente no RNA?', 'Uracila', 'Timina', 'Citosina', 'Adenina', 'B', NOW(), NOW()),
    (20, 'Qual processo gera gametas com metade dos cromossomos?', 'Mitose', 'Meiose', 'Fissão binária', 'Duplicação', 'B', NOW(), NOW());

    -- 1º ano médio: Física Básica e Mecânica (lesson_id = 21)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (21, 'Qual é a unidade de força no SI?', 'Newton', 'Joule', 'Pascal', 'Watt', 'A', NOW(), NOW()),
    (21, 'O que é velocidade?', 'Mudança de posição por unidade de tempo', 'Energia armazenada', 'Força aplicada', 'Massa de um objeto', 'A', NOW(), NOW()),
    (21, 'Qual a fórmula da segunda lei de Newton?', 'F = m/a', 'F = m*a', 'F = m+a', 'F = m-a', 'B', NOW(), NOW()),
    (21, 'O que é trabalho em física?', 'Força aplicada', 'Energia transferida por força', 'Massa multiplicada pela aceleração', 'Velocidade ao quadrado', 'B', NOW(), NOW()),
    (21, 'Qual é a unidade de energia no SI?', 'Newton', 'Joule', 'Pascal', 'Watt', 'B', NOW(), NOW()),
    (21, 'A aceleração da gravidade na Terra é aproximadamente?', '9,8 m/s²', '10 m/s²', '9,8 km/s²', '8,9 m/s²', 'A', NOW(), NOW()),
    (21, 'Qual a relação entre massa e peso?', 'P = m/g', 'P = m*g', 'P = g/m', 'P = m+g', 'B', NOW(), NOW()),
    (21, 'Qual tipo de movimento descreve uma velocidade constante em linha reta?', 'Uniforme', 'Acelerado', 'Circular', 'Oscilatório', 'A', NOW(), NOW()),
    (21, 'O que representa o gráfico posição x tempo?', 'Aceleração', 'Velocidade', 'Força', 'Energia', 'B', NOW(), NOW()),
    (21, 'O que é energia cinética?', 'Energia de movimento', 'Energia armazenada', 'Força aplicada', 'Velocidade constante', 'A', NOW(), NOW());

    -- 2º ano médio: Física Moderna (lesson_id = 22)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (22, 'Quem formulou a teoria da relatividade?', 'Newton', 'Einstein', 'Galileu', 'Bohr', 'B', NOW(), NOW()),
    (22, 'O que descreve a física quântica?', 'Movimento de planetas', 'Comportamento de partículas subatômicas', 'Mecânica clássica', 'Gravitação', 'B', NOW(), NOW()),
    (22, 'Qual fenômeno explica a dualidade onda-partícula?', 'Efeito Doppler', 'Experimento da dupla fenda', 'Lei de Newton', 'Teoria da relatividade', 'B', NOW(), NOW()),
    (22, 'Qual é a velocidade da luz no vácuo?', '3x10^8 m/s', '1x10^6 m/s', '3x10^6 m/s', '1x10^8 m/s', 'A', NOW(), NOW()),
    (22, 'O que é fóton?', 'Partícula de luz', 'Átomo de hidrogênio', 'Eletrão', 'Núcleo', 'A', NOW(), NOW()),
    (22, 'Quem propôs o modelo atômico de Bohr?', 'Thomson', 'Rutherford', 'Bohr', 'Einstein', 'C', NOW(), NOW()),
    (22, 'O princípio da incerteza de Heisenberg está relacionado a:', 'Posição e velocidade de partículas', 'Energia e massa', 'Força e aceleração', 'Tempo e espaço', 'A', NOW(), NOW()),
    (22, 'Qual fenômeno é explicado pelo efeito fotoelétrico?', 'Luz como partícula', 'Gravitação universal', 'Movimento uniforme', 'Energia cinética', 'A', NOW(), NOW()),
    (22, 'O que a relatividade restrita aborda?', 'Gravidade e espaço-tempo', 'Movimento a altas velocidades', 'Energia química', 'Ondas sonoras', 'B', NOW(), NOW()),
    (22, 'A física moderna difere da clássica porque:', 'Ignora forças', 'Estuda fenômenos extremos ou microscópicos', 'Não usa equações', 'Foca em mecânica básica', 'B', NOW(), NOW());

    -- 2º ano médio: Química Orgânica (lesson_id = 23)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (23, 'Qual elemento é base da química orgânica?', 'Carbono', 'Oxigênio', 'Nitrogênio', 'Hidrogênio', 'A', NOW(), NOW()),
    (23, 'O que é uma hidrocarboneto?', 'Composto só de carbono e hidrogênio', 'Composto só de oxigênio', 'Proteína', 'Sal', 'A', NOW(), NOW()),
    (23, 'Qual grupo funcional é característico dos álcoois?', 'OH', 'COOH', 'NH2', 'CHO', 'A', NOW(), NOW()),
    (23, 'Qual a fórmula geral dos alcanos?', 'CnH2n+2', 'CnH2n', 'CnH2n-2', 'CnHn', 'A', NOW(), NOW()),
    (23, 'O que é isomeria?', 'Mesma fórmula molecular, diferentes estruturas', 'Moléculas iguais', 'Diferença de massa', 'Mesma estrutura', 'A', NOW(), NOW()),
    (23, 'Qual composto é considerado aromático?', 'Benzeno', 'Etano', 'Metano', 'Propano', 'A', NOW(), NOW()),
    (23, 'Qual reação substitui um átomo de hidrogênio por outro grupo?', 'Substituição', 'Adição', 'Eliminação', 'Combustão', 'A', NOW(), NOW()),
    (23, 'Qual é a principal função dos ácidos carboxílicos?', 'Doar elétrons', 'Formar ligações peptídicas', 'Ação ácida e reação com bases', 'Produzir energia', 'C', NOW(), NOW()),
    (23, 'O que é uma reação de adição?', 'Dois átomos se combinam com outro', 'Substituição de um átomo', 'Perda de água', 'Quebra de moléculas grandes', 'A', NOW(), NOW()),
    (23, 'Qual composto é um aldeído?', 'Formaldeído', 'Etanol', 'Acetona', 'Ácido acético', 'A', NOW(), NOW());

    -- 2º ano médio: Ecologia e Biomas (lesson_id = 24)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (24, 'O que estuda a ecologia?', 'Rochas e minerais', 'Relações entre seres vivos e o ambiente', 'Movimento dos planetas', 'Energia nuclear', 'B', NOW(), NOW()),
    (24, 'Qual é o principal fator limitante de um ecossistema?', 'Luz solar', 'Água', 'Recursos disponíveis', 'Todos os anteriores', 'D', NOW(), NOW()),
    (24, 'O que é biodiversidade?', 'Número de espécies em um ecossistema', 'Quantidade de água em um rio', 'Número de rios em um bioma', 'Número de árvores em uma floresta', 'A', NOW(), NOW()),
    (24, 'Qual bioma brasileiro é conhecido por ser cerrado?', 'Amazônia', 'Caatinga', 'Cerrado', 'Pampa', 'C', NOW(), NOW()),
    (24, 'O que são biomas?', 'Espécies individuais', 'Regiões com características climáticas e vegetação similares', 'Pequenas populações', 'Áreas urbanas', 'B', NOW(), NOW()),
    (24, 'O que caracteriza uma cadeia alimentar?', 'Fluxo de energia entre organismos', 'Número de espécies', 'Clima', 'Solo', 'A', NOW(), NOW()),
    (24, 'Qual efeito humano impacta mais os biomas?', 'Desmatamento', 'Fotossíntese', 'Respiração', 'Erosão natural', 'A', NOW(), NOW()),
    (24, 'O que é sucessão ecológica?', 'Mudança gradual na estrutura de um ecossistema', 'Efeito da gravidade', 'Movimento das marés', 'Ciclo do carbono', 'A', NOW(), NOW()),
    (24, 'Qual bioma apresenta maior diversidade?', 'Deserto', 'Floresta Amazônica', 'Pampa', 'Cerrado', 'B', NOW(), NOW()),
    (24, 'O que é um ecossistema?', 'Um conjunto de fatores abióticos e bióticos interagindo', 'Somente animais', 'Somente plantas', 'Somente água', 'A', NOW(), NOW());

    -- 3º ano médio: Biotecnologia e Genética Avançada (lesson_id = 25)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (25, 'O que é biotecnologia?', 'Uso de seres vivos para aplicações práticas', 'Estudo de planetas', 'Análise de energia', 'Pesquisa química', 'A', NOW(), NOW()),
    (25, 'O que é clonagem?', 'Produção de organismos geneticamente idênticos', 'Mudança climática', 'Mutação natural', 'Seleção natural', 'A', NOW(), NOW()),
    (25, 'Qual ferramenta é usada para cortar DNA?', 'Enzimas de restrição', 'Ribossomos', 'Proteínas estruturais', 'RNA polimerase', 'A', NOW(), NOW()),
    (25, 'O que é PCR?', 'Amplificação de DNA', 'Proteína regulatória', 'Processo químico', 'Sequenciamento', 'A', NOW(), NOW()),
    (25, 'Qual técnica permite alterar genes de organismos?', 'CRISPR-Cas9', 'Meiose', 'Fotossíntese', 'Eletrofotografia', 'A', NOW(), NOW()),
    (25, 'O que é engenharia genética?', 'Manipulação de genes para fins específicos', 'Estudo de fósseis', 'Processo de evaporação', 'Produção de energia', 'A', NOW(), NOW()),
    (25, 'Qual aplicação da biotecnologia é usada em medicina?', 'Produção de insulina recombinante', 'Construção civil', 'Agronomia', 'Petróleo', 'A', NOW(), NOW()),
    (25, 'Qual técnica analisa a sequência de DNA?', 'Sequenciamento genético', 'Clonagem', 'Fissão binária', 'PCR', 'A', NOW(), NOW()),
    (25, 'O que é um transgênico?', 'Organismo com gene de outra espécie', 'Bactéria comum', 'Planta nativa', 'Molécula de água', 'A', NOW(), NOW()),
    (25, 'A terapia gênica visa:', 'Corrigir genes defeituosos em pacientes', 'Eliminar água do corpo', 'Aumentar força física', 'Estudar planetas', 'A', NOW(), NOW());

    -- 3º ano médio: Física Aplicada e Termodinâmica (lesson_id = 26)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (26, 'O que é termodinâmica?', 'Estudo do movimento de planetas', 'Estudo de calor e energia', 'Estudo de química orgânica', 'Estudo de genética', 'B', NOW(), NOW()),
    (26, 'Qual lei da termodinâmica define conservação de energia?', '1ª Lei', '2ª Lei', '3ª Lei', 'Lei zero', 'A', NOW(), NOW()),
    (26, 'O que representa entropia?', 'Quantidade de energia útil', 'Desordem de um sistema', 'Temperatura', 'Massa', 'B', NOW(), NOW()),
    (26, 'Qual é a unidade de calor no SI?', 'Joule', 'Caloria', 'Newton', 'Watt', 'A', NOW(), NOW()),
    (26, 'O que é um processo adiabático?', 'Sem troca de calor com o ambiente', 'Com troca de calor', 'Energia cinética nula', 'Reação química', 'A', NOW(), NOW()),
    (26, 'O que é energia interna?', 'Energia total de um sistema', 'Energia de movimento', 'Força aplicada', 'Massa multiplicada pela aceleração', 'A', NOW(), NOW()),
    (26, 'Qual lei estabelece que a entropia do universo tende a aumentar?', '1ª Lei', '2ª Lei', '3ª Lei', 'Lei zero', 'B', NOW(), NOW()),
    (26, 'O que é calor específico?', 'Energia necessária para elevar 1 kg de substância 1ºC', 'Massa multiplicada pela aceleração', 'Força aplicada', 'Energia cinética', 'A', NOW(), NOW()),
    (26, 'Qual conceito relaciona pressão, volume e temperatura em gases?', 'Lei de Newton', 'Equação de estado dos gases', 'Lei da gravidade', 'Princípio da incerteza', 'B', NOW(), NOW()),
    (26, 'O que significa um processo isotérmico?', 'Temperatura constante', 'Pressão constante', 'Volume constante', 'Energia constante', 'A', NOW(), NOW());

    -- 3º ano médio: Química Analítica e Industrial (lesson_id = 27)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (27, 'O que é química analítica?', 'Estudo da composição de substâncias', 'Estudo de planetas', 'Estudo de energia', 'Estudo de genética', 'A', NOW(), NOW()),
    (27, 'Qual técnica separa componentes de uma mistura líquida?', 'Destilação', 'Filtração', 'Decantação', 'Extração', 'A', NOW(), NOW()),
    (27, 'O que é titulação?', 'Determinar concentração de uma solução', 'Separar sólidos', 'Reação de combustão', 'Medição de temperatura', 'A', NOW(), NOW()),
    (27, 'Qual é o objetivo da cromatografia?', 'Separar misturas de componentes', 'Calcular massa', 'Medir volume', 'Aumentar energia', 'A', NOW(), NOW()),
    (27, 'O que é espectroscopia?', 'Estudo da interação da luz com a matéria', 'Separação de líquidos', 'Reação química simples', 'Produção de calor', 'A', NOW(), NOW()),
    (27, 'Qual análise é usada para verificar pureza de substâncias?', 'Análise qualitativa', 'Análise quantitativa', 'Análise física', 'Análise ambiental', 'B', NOW(), NOW()),
    (27, 'O que é um reagente padrão?', 'Solução de concentração conhecida', 'Composto desconhecido', 'Mistura de gases', 'Água destilada', 'A', NOW(), NOW()),
    (27, 'O que significa “precipitação”?', 'Formação de sólido em solução', 'Evaporação de líquido', 'Fusão de sólidos', 'Oxidação de metais', 'A', NOW(), NOW()),
    (27, 'Qual análise determina a quantidade de substância presente?', 'Qualitativa', 'Quantitativa', 'Espectroscópica', 'Cromatográfica', 'B', NOW(), NOW()),
    (27, 'Qual técnica industrial separa metais de minérios?', 'Lixiviação', 'Destilação', 'Filtração', 'Titulacão', 'A', NOW(), NOW());

    -- 1º ano médio: Brasil Colonial e Império (lesson_id = 28)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (28, 'Qual foi a principal atividade econômica do Brasil Colonial?', 'Cana-de-açúcar', 'Café', 'Mineração', 'Pecuária', 'A', NOW(), NOW()),
    (28, 'Qual população foi escravizada principalmente no período colonial?', 'Indígenas', 'Africanos', 'Europeus', 'Asiáticos', 'B', NOW(), NOW()),
    (28, 'O que foi o ciclo do ouro?', 'Exploração mineral no século XVIII', 'Cultivo de cana-de-açúcar', 'Produção de café', 'Fundação das vilas', 'A', NOW(), NOW()),
    (28, 'Qual a primeira capital do Brasil colonial?', 'Salvador', 'Rio de Janeiro', 'São Paulo', 'Olinda', 'A', NOW(), NOW()),
    (28, 'Qual era o objetivo das capitanias hereditárias?', 'Colonização e exploração do território', 'Fazer guerras', 'Criar universidades', 'Comércio com a África', 'A', NOW(), NOW()),
    (28, 'Qual tratado definiu limites coloniais entre Portugal e Espanha?', 'Tratado de Tordesilhas', 'Tratado de Madri', 'Tratado de Paris', 'Tratado de Utrecht', 'A', NOW(), NOW()),
    (28, 'Quem proclamou a independência do Brasil?', 'D. Pedro I', 'D. João VI', 'Marechal Deodoro', 'José Bonifácio', 'A', NOW(), NOW()),
    (28, 'Qual foi a principal motivação para a independência do Brasil?', 'Manutenção da elite colonial', 'Fim da escravidão', 'Industrialização', 'Guerra Napoleônica', 'A', NOW(), NOW()),
    (28, 'Qual sistema de produção predominou nas fazendas coloniais?', 'Latifúndio escravista', 'Pequenas propriedades', 'Cooperativas', 'Assentamentos urbanos', 'A', NOW(), NOW()),
    (28, 'Qual o período do Brasil Império?', '1822-1889', '1500-1822', '1889-1930', '1930-1964', 'A', NOW(), NOW());

    -- 1º ano médio: Sociedades Indígenas e Cultura Afro-brasileira (lesson_id = 29)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (29, 'Como eram organizadas as sociedades indígenas?', 'Clãs e tribos', 'Reinos centralizados', 'Impérios militares', 'Cidades-estados', 'A', NOW(), NOW()),
    (29, 'Qual cultura influenciou a música e a culinária brasileira?', 'Africana', 'Europeia', 'Asiática', 'Ameríndia', 'A', NOW(), NOW()),
    (29, 'O que é quilombo?', 'Comunidade de escravizados fugidos', 'Feudo colonial', 'Cidade portuguesa', 'Escola indígena', 'A', NOW(), NOW()),
    (29, 'Qual era a base da economia indígena?', 'Caça, pesca e agricultura', 'Mineração', 'Comércio internacional', 'Produção de açúcar', 'A', NOW(), NOW()),
    (29, 'O que caracteriza a religião afro-brasileira?', 'Sincretismo com catolicismo', 'Politeísmo europeu', 'Monoteísmo islâmico', 'Animismo asiático', 'A', NOW(), NOW()),
    (29, 'Qual língua indígena influenciou o português brasileiro?', 'Tupi', 'Guarani', 'Yanomami', 'Xavante', 'A', NOW(), NOW()),
    (29, 'Qual é a prática cultural de origem africana muito presente no Brasil?', 'Capoeira', 'Futebol', 'Carnaval europeu', 'Arquitetura grega', 'A', NOW(), NOW()),
    (29, 'O que foram as missões jesuíticas?', 'Tentativa de catequese indígena', 'Plantação de cana', 'Mineração de ouro', 'Exploração de café', 'A', NOW(), NOW()),
    (29, 'Qual o impacto da escravidão africana na sociedade?', 'Formação cultural e social do país', 'Fim da economia', 'Criação de universidades', 'Industrialização imediata', 'A', NOW(), NOW()),
    (29, 'Qual era a principal atividade econômica dos quilombos?', 'Autossuficiência e agricultura', 'Mineração', 'Comércio internacional', 'Indústria', 'A', NOW(), NOW());

    -- 1º ano médio: Revoluções e Movimentos Sociais (lesson_id = 30)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (30, 'Qual revolução aboliu a monarquia na França?', 'Revolução Francesa', 'Revolução Industrial', 'Revolução Russa', 'Revolução Americana', 'A', NOW(), NOW()),
    (30, 'O que foi a Independência dos EUA?', 'Rebelião contra a Inglaterra', 'Expansão da França', 'Guerra Civil', 'Movimento operário', 'A', NOW(), NOW()),
    (30, 'Qual revolução teve grande influência do Iluminismo?', 'Francesa', 'Industrial', 'Americana', 'Russas', 'A', NOW(), NOW()),
    (30, 'O que caracterizou a Revolução Industrial?', 'Mudanças na produção e tecnologia', 'Rebelião camponesa', 'Fim da escravidão', 'Guerras napoleônicas', 'A', NOW(), NOW()),
    (30, 'Quem liderou movimentos de independência na América Latina?', 'Simón Bolívar', 'Napoleão', 'George Washington', 'Pedro I', 'A', NOW(), NOW()),
    (30, 'O que é sufrágio universal?', 'Direito de todos ao voto', 'Propriedade de terra', 'Monarquia absoluta', 'Sistema feudal', 'A', NOW(), NOW()),
    (30, 'Qual foi um movimento social importante no Brasil Imperial?', 'Confederação do Equador', 'Revolução Francesa', 'Independência dos EUA', 'Revolução Industrial', 'A', NOW(), NOW()),
    (30, 'O que caracteriza uma revolução social?', 'Mudança significativa na sociedade', 'Movimento esportivo', 'Descoberta científica', 'Conquista territorial', 'A', NOW(), NOW()),
    (30, 'Qual revolução promoveu direitos trabalhistas no século XX?', 'Revolução Russa', 'Revolução Industrial', 'Revolução Francesa', 'Revolução Americana', 'A', NOW(), NOW()),
    (30, 'O que foi o movimento abolicionista no Brasil?', 'Fim da escravidão', 'Independência', 'Proclamação da República', 'Colonização portuguesa', 'A', NOW(), NOW());


    -- 2º ano médio: Era Napoleônica e Guerras Mundiais (lesson_id = 31)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (31, 'Quem foi Napoleão Bonaparte?', 'Imperador da França', 'Rei da Inglaterra', 'Presidente dos EUA', 'Czar da Rússia', 'A', NOW(), NOW()),
    (31, 'Qual guerra marcou a ascensão de Napoleão?', 'Guerras Napoleônicas', 'Guerra Fria', 'Primeira Guerra Mundial', 'Segunda Guerra Mundial', 'A', NOW(), NOW()),
    (31, 'O que foi o Congresso de Viena?', 'Reorganização política da Europa após Napoleão', 'Tratado de paz dos EUA', 'Fim da Guerra Fria', 'Independência da América Latina', 'A', NOW(), NOW()),
    (31, 'Quando ocorreu a Primeira Guerra Mundial?', '1914-1918', '1939-1945', '1800-1815', '1870-1871', 'A', NOW(), NOW()),
    (31, 'Qual foi o estopim da Primeira Guerra Mundial?', 'Assassinato do arquiduque Francisco Ferdinando', 'Ataque a Pearl Harbor', 'Revolução Russa', 'Crise de 1929', 'A', NOW(), NOW()),
    (31, 'Quando ocorreu a Segunda Guerra Mundial?', '1939-1945', '1914-1918', '1800-1815', '1947-1953', 'A', NOW(), NOW()),
    (31, 'Qual evento marcou a entrada dos EUA na Segunda Guerra Mundial?', 'Ataque a Pearl Harbor', 'Queda do Muro de Berlim', 'Tratado de Versalhes', 'Invasão da Polônia', 'A', NOW(), NOW()),
    (31, 'O que foi o Tratado de Versalhes?', 'Fim da Primeira Guerra Mundial', 'Fim da Segunda Guerra Mundial', 'Início da Revolução Russa', 'Criação da ONU', 'A', NOW(), NOW()),
    (31, 'Qual foi o principal objetivo da Liga das Nações?', 'Manter a paz mundial', 'Expandir territórios', 'Industrializar países', 'Criar blocos econômicos', 'A', NOW(), NOW()),
    (31, 'O que caracterizou a Era Napoleônica?', 'Centralização do poder e reformas legais', 'Colonização da América', 'Revoluções operárias', 'Exploração do ouro', 'A', NOW(), NOW());

    -- 2º ano médio: Independência e República no Brasil (lesson_id = 32)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (32, 'Quando o Brasil proclamou a independência?', '1822', '1808', '1889', '1500', 'A', NOW(), NOW()),
    (32, 'Quem foi o primeiro imperador do Brasil?', 'D. Pedro I', 'D. João VI', 'Deodoro da Fonseca', 'José Bonifácio', 'A', NOW(), NOW()),
    (32, 'Qual foi o principal motivo da independência do Brasil?', 'Manter a elite local no poder', 'Fim da escravidão', 'Industrialização', 'Chegada da corte portuguesa', 'A', NOW(), NOW()),
    (32, 'Quando ocorreu a Proclamação da República?', '1889', '1822', '1808', '1831', 'A', NOW(), NOW()),
    (32, 'Quem proclamou a República no Brasil?', 'Marechal Deodoro da Fonseca', 'D. Pedro II', 'D. João VI', 'Getúlio Vargas', 'A', NOW(), NOW()),
    (32, 'Qual sistema de governo foi instaurado após 1889?', 'República', 'Monarquia', 'Ditadura', 'Império', 'A', NOW(), NOW()),
    (32, 'O que foi a Constituição de 1891?', 'Primeira constituição republicana do Brasil', 'Lei Áurea', 'Código Civil', 'Código Penal', 'A', NOW(), NOW()),
    (32, 'Quem foi o principal articulador da Proclamação da República?', 'Benjamin Constant', 'D. Pedro II', 'José Bonifácio', 'Getúlio Vargas', 'A', NOW(), NOW()),
    (32, 'Qual foi o sistema econômico predominante no Brasil Império?', 'Latifúndio escravista', 'Industrial', 'Cooperativo', 'Serviço', 'A', NOW(), NOW()),
    (32, 'O que caracteriza a Primeira República Brasileira?', 'Política do café com leite e coronelismo', 'Monarquia constitucional', 'Ditadura militar', 'Independência', 'A', NOW(), NOW());

    -- 2º ano médio: Guerra Fria e Globalização (lesson_id = 33)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (33, 'O que foi a Guerra Fria?', 'Conflito político-ideológico entre EUA e URSS', 'Guerra mundial', 'Revolução industrial', 'Expansão colonial', 'A', NOW(), NOW()),
    (33, 'O que caracteriza a globalização?', 'Integração econômica, política e cultural mundial', 'Colonização da África', 'Industrialização europeia', 'Guerras napoleônicas', 'A', NOW(), NOW()),
    (33, 'Qual foi o principal bloco capitalista?', 'EUA e aliados', 'URSS e aliados', 'China e Japão', 'Brasil e Argentina', 'A', NOW(), NOW()),
    (33, 'Qual foi o principal bloco socialista?', 'URSS e aliados', 'EUA e aliados', 'Alemanha e França', 'Inglaterra e Canadá', 'A', NOW(), NOW()),
    (33, 'O que foi a corrida armamentista?', 'Competição por armas nucleares', 'Corrida espacial', 'Guerra convencional', 'Independência da Índia', 'A', NOW(), NOW()),
    (33, 'O que foi a queda do Muro de Berlim?', 'Fim da divisão da Alemanha e símbolo do fim da Guerra Fria', 'Início da Segunda Guerra', 'Revolução Francesa', 'Formação da ONU', 'A', NOW(), NOW()),
    (33, 'O que foi o Plano Marshall?', 'Ajuda econômica dos EUA à Europa', 'Criação da ONU', 'Tratado de Versalhes', 'Aliança militar', 'A', NOW(), NOW()),
    (33, 'Qual foi o período da Guerra Fria?', '1947-1991', '1939-1945', '1914-1918', '1808-1822', 'A', NOW(), NOW()),
    (33, 'O que caracteriza a globalização econômica?', 'Mercado mundial integrado', 'Feudos locais', 'Economia autárquica', 'Indústria artesanal', 'A', NOW(), NOW()),
    (33, 'Qual país se tornou potência global após a Segunda Guerra Mundial?', 'Estados Unidos', 'Alemanha', 'Japão', 'Brasil', 'A', NOW(), NOW());

    -- 3º ano médio: Movimentos Sociais Contemporâneos (lesson_id = 34)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (34, 'O que são movimentos sociais?', 'Ações coletivas por mudanças sociais', 'Revoluções militares', 'Tratados internacionais', 'Movimentos econômicos', 'A', NOW(), NOW()),
    (34, 'Qual movimento lutou pelo fim do apartheid?', 'Movimento anti-apartheid', 'Movimento feminista', 'Movimento estudantil', 'Movimento operário', 'A', NOW(), NOW()),
    (34, 'Qual movimento buscou direitos civis nos EUA?', 'Movimento pelos Direitos Civis', 'Movimento Ambiental', 'Movimento Trabalhista', 'Movimento Revolucionário', 'A', NOW(), NOW()),
    (34, 'O que caracteriza o feminismo?', 'Luta por igualdade de gênero', 'Controle econômico', 'Conquista territorial', 'Produção industrial', 'A', NOW(), NOW()),
    (34, 'Qual movimento é relacionado à preservação ambiental?', 'Movimento ecológico', 'Movimento social', 'Movimento estudantil', 'Movimento cultural', 'A', NOW(), NOW()),
    (34, 'O que é ativismo social?', 'Ação direta para promover mudanças', 'Guerra civil', 'Tratado internacional', 'Desenvolvimento econômico', 'A', NOW(), NOW()),
    (34, 'Qual movimento combateu o racismo estrutural?', 'Movimento negro', 'Movimento indígena', 'Movimento estudantil', 'Movimento ambiental', 'A', NOW(), NOW()),
    (34, 'O que é cidadania ativa?', 'Participação social e política', 'Passividade política', 'Controle governamental', 'Exclusão social', 'A', NOW(), NOW()),
    (34, 'Qual movimento luta por direitos LGBTQIA+?', 'Movimento LGBTQIA+', 'Movimento trabalhista', 'Movimento ambiental', 'Movimento estudantil', 'A', NOW(), NOW()),
    (34, 'Qual é a função de ONGs em movimentos sociais?', 'Apoiar e organizar ações sociais', 'Governar países', 'Explorar recursos', 'Produzir energia', 'A', NOW(), NOW());

    -- 3º ano médio: Brasil Contemporâneo (lesson_id = 35)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (35, 'Qual período é considerado Brasil Contemporâneo?', 'Século XX e XXI', 'Século XIX', 'Colonial', 'Império', 'A', NOW(), NOW()),
    (35, 'Quem foi presidente durante o período da ditadura militar?', 'Vários presidentes militares', 'Getúlio Vargas', 'D. Pedro II', 'Juscelino Kubitschek', 'A', NOW(), NOW()),
    (35, 'O que caracteriza a Nova República?', 'Restabelecimento da democracia em 1985', 'Período militar', 'Independência do Brasil', 'Império', 'A', NOW(), NOW()),
    (35, 'Qual foi a Constituição promulgada em 1988?', 'Constituição Cidadã', 'Constituição de 1824', 'Constituição de 1891', 'Constituição de 1934', 'A', NOW(), NOW()),
    (35, 'Qual política econômica marcou a década de 1990?', 'Plano Real', 'Industrialização', 'Mercantilismo', 'Colonialismo', 'A', NOW(), NOW()),
    (35, 'O que é estabilidade política?', 'Governo democrático e instituições funcionando', 'Ditadura militar', 'Império', 'Conflitos internos', 'A', NOW(), NOW()),
    (35, 'O que caracteriza a globalização no Brasil?', 'Integração econômica e cultural mundial', 'Colonização', 'Escravidão', 'Ciclo do ouro', 'A', NOW(), NOW()),
    (35, 'Qual é um problema social contemporâneo do Brasil?', 'Desigualdade social', 'Colonização', 'Descobrimento do Brasil', 'Monarquia', 'A', NOW(), NOW()),
    (35, 'Quem foi responsável pela redemocratização do Brasil?', 'Tancredo Neves e José Sarney', 'Getúlio Vargas', 'D. Pedro I', 'Deodoro da Fonseca', 'A', NOW(), NOW()),
    (35, 'O que caracteriza o sistema político atual do Brasil?', 'República Federativa', 'Monarquia', 'Ditadura', 'Império', 'A', NOW(), NOW());

    -- 3º ano médio: História Mundial Contemporânea (lesson_id = 36)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (36, 'O que caracteriza a História Mundial Contemporânea?', 'Globalização, conflitos e integração', 'Colonização portuguesa', 'Idade Média', 'Renascimento', 'A', NOW(), NOW()),
    (36, 'Qual evento marcou o início do século XX?', 'Primeira Guerra Mundial', 'Segunda Guerra Mundial', 'Revolução Industrial', 'Guerra Fria', 'A', NOW(), NOW()),
    (36, 'Quando ocorreu a Segunda Guerra Mundial?', '1939-1945', '1914-1918', '1800-1815', '1947-1953', 'A', NOW(), NOW()),
    (36, 'O que foi a ONU?', 'Organização das Nações Unidas', 'Organização do Mercado Europeu', 'Aliança militar', 'Bloco econômico', 'A', NOW(), NOW()),
    (36, 'Qual foi o símbolo do fim da Guerra Fria?', 'Queda do Muro de Berlim', 'Tratado de Versalhes', 'Revolução Russa', 'Independência da Índia', 'A', NOW(), NOW()),
    (36, 'O que caracteriza a Guerra Fria?', 'Conflito ideológico sem combate direto entre superpotências', 'Conflito mundial total', 'Colonização', 'Expansão militar colonial', 'A', NOW(), NOW()),
    (36, 'Qual país se tornou potência global no pós-Segunda Guerra?', 'Estados Unidos', 'Alemanha', 'Japão', 'Itália', 'A', NOW(), NOW()),
    (36, 'O que é globalização cultural?', 'Difusão de cultura, tecnologia e comunicação mundial', 'Colonização', 'Industrialização', 'Monarquia', 'A', NOW(), NOW()),
    (36, 'O que é integração econômica?', 'Unificação de mercados e fluxos comerciais', 'Colonização', 'Escravidão', 'Conflito bélico', 'A', NOW(), NOW()),
    (36, 'Qual foi a principal causa de conflitos mundiais no século XX?', 'Disputas territoriais e ideológicas', 'Colonização africana', 'Expansão marítima', 'Descobrimento do Brasil', 'A', NOW(), NOW());

    -- 1º ano médio: Relevo e Hidrografia Avançada (lesson_id = 37)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (37, 'O que é relevo?', 'Formas da superfície terrestre', 'Clima', 'Vegetação', 'População', 'A', NOW(), NOW()),
    (37, 'Qual é o maior rio do Brasil?', 'Rio Amazonas', 'Rio São Francisco', 'Rio Paraná', 'Rio Tocantins', 'A', NOW(), NOW()),
    (37, 'O que caracteriza a Planície Amazônica?', 'Terreno baixo e alagadiço', 'Montanhas altas', 'Desertos arenosos', 'Planalto seco', 'A', NOW(), NOW()),
    (37, 'O que é uma bacia hidrográfica?', 'Área drenada por um rio principal e seus afluentes', 'Montanha isolada', 'Deserto', 'Planalto', 'A', NOW(), NOW()),
    (37, 'O que são planaltos?', 'Áreas elevadas e geralmente planas', 'Baixas e úmidas', 'Rios subterrâneos', 'Cidades', 'A', NOW(), NOW()),
    (37, 'Qual a importância dos rios para o Brasil?', 'Transporte, energia e abastecimento', 'Produção industrial', 'Clima árido', 'Fronteiras internacionais', 'A', NOW(), NOW()),
    (37, 'O que é hidrografia?', 'Estudo das águas superficiais e subterrâneas', 'Formas de relevo', 'Vegetação', 'População', 'A', NOW(), NOW()),
    (37, 'Qual é o rio mais extenso da América do Sul?', 'Rio Amazonas', 'Rio Paraná', 'Rio Orinoco', 'Rio São Francisco', 'A', NOW(), NOW()),
    (37, 'O que caracteriza um rio de planície?', 'Curso sinuoso e baixo declive', 'Curso rápido e estreito', 'Cachoeiras altas', 'Rio subterrâneo', 'A', NOW(), NOW()),
    (37, 'Qual unidade de relevo predomina no Brasil Central?', 'Planalto', 'Planície', 'Montanha', 'Depressão', 'A', NOW(), NOW());

    -- 1º ano médio: Climas e Vegetação do Brasil (lesson_id = 38)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (38, 'Qual é o clima predominante na Amazônia?', 'Equatorial', 'Semiárido', 'Tropical de Altitude', 'Subtropical', 'A', NOW(), NOW()),
    (38, 'O que caracteriza o clima semiárido?', 'Pouca chuva e altas temperaturas', 'Chuva intensa', 'Frio extremo', 'Umidade constante', 'A', NOW(), NOW()),
    (38, 'Qual bioma predomina no Nordeste brasileiro?', 'Caatinga', 'Mata Atlântica', 'Pantanal', 'Amazônia', 'A', NOW(), NOW()),
    (38, 'Qual bioma é conhecido pela fauna diversificada e rios caudalosos?', 'Amazônia', 'Cerrado', 'Pampa', 'Caatinga', 'A', NOW(), NOW()),
    (38, 'O que caracteriza o Cerrado?', 'Vegetação de savana e clima tropical', 'Floresta densa', 'Deserto', 'Região fria', 'A', NOW(), NOW()),
    (38, 'Qual bioma brasileiro possui campos e clima subtropical?', 'Pampa', 'Amazônia', 'Caatinga', 'Cerrado', 'A', NOW(), NOW()),
    (38, 'O que caracteriza a Mata Atlântica?', 'Vegetação densa e biodiversidade alta', 'Solo árido', 'Clima gelado', 'Planícies alagadas', 'A', NOW(), NOW()),
    (38, 'Qual é o principal problema ambiental do Cerrado?', 'Desmatamento e queimadas', 'Geadas frequentes', 'Inundação', 'Falta de fauna', 'A', NOW(), NOW()),
    (38, 'O que influencia a distribuição de climas no Brasil?', 'Latitude, relevo e massas de ar', 'População', 'Indústria', 'Religião', 'A', NOW(), NOW()),
    (38, 'Qual região brasileira tem clima subtropical?', 'Sul', 'Norte', 'Nordeste', 'Centro-Oeste', 'A', NOW(), NOW());

    -- 1º ano médio: População e Urbanização (lesson_id = 39)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (39, 'O que é urbanização?', 'Crescimento das cidades', 'Distribuição rural', 'População indígena', 'Agricultura', 'A', NOW(), NOW()),
    (39, 'Qual a cidade mais populosa do Brasil?', 'São Paulo', 'Rio de Janeiro', 'Brasília', 'Salvador', 'A', NOW(), NOW()),
    (39, 'O que é migração interna?', 'Movimento de pessoas dentro de um país', 'Imigração internacional', 'Êxodo rural', 'Urbanização', 'A', NOW(), NOW()),
    (39, 'Qual é o principal problema urbano no Brasil?', 'Favelização e trânsito', 'Clima frio', 'Falta de rios', 'Agricultura insuficiente', 'A', NOW(), NOW()),
    (39, 'O que é densidade demográfica?', 'Número de habitantes por km²', 'Altura das construções', 'Produção agrícola', 'Fluxo de comércio', 'A', NOW(), NOW()),
    (39, 'O que caracteriza a população brasileira?', 'Concentração nas áreas urbanas', 'Distribuição uniforme', 'Predomínio rural', 'Isolamento geográfico', 'A', NOW(), NOW()),
    (39, 'Qual é a tendência do crescimento urbano?', 'Aumento contínuo da população urbana', 'Redução da cidade', 'Estagnação populacional', 'Migração internacional', 'A', NOW(), NOW()),
    (39, 'O que é metrópole?', 'Cidade de grande porte e influência regional', 'Pequena vila', 'Cidade média', 'Aldeia rural', 'A', NOW(), NOW()),
    (39, 'Qual fenômeno afeta cidades brasileiras costeiras?', 'Urbanização acelerada e favelização', 'Desertificação', 'Geada intensa', 'Terreno plano', 'A', NOW(), NOW()),
    (39, 'O que é periferia urbana?', 'Áreas de baixa infraestrutura e habitação', 'Centro histórico', 'Zona industrial', 'Área rural', 'A', NOW(), NOW());

    -- 2º ano médio: Geopolítica e Conflitos Globais (lesson_id = 40)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (40, 'O que é geopolítica?', 'Relações de poder entre Estados', 'Clima global', 'Biomas', 'Urbanização', 'A', NOW(), NOW()),
    (40, 'O que caracteriza os conflitos globais?', 'Disputas territoriais e ideológicas', 'Expansão agrícola', 'Urbanização', 'Distribuição populacional', 'A', NOW(), NOW()),
    (40, 'Qual guerra marcou o século XX e redefiniu fronteiras?', 'Segunda Guerra Mundial', 'Primeira Guerra Mundial', 'Guerra Fria', 'Guerras Napoleônicas', 'A', NOW(), NOW()),
    (40, 'O que é ONU?', 'Organização das Nações Unidas', 'Organização Mundial de Comércio', 'FMI', 'OTAN', 'A', NOW(), NOW()),
    (40, 'O que é bloco econômico?', 'Aliança entre países para fins econômicos', 'Fronteira política', 'Bioma', 'Clima', 'A', NOW(), NOW()),
    (40, 'Qual é o papel da diplomacia?', 'Negociação pacífica entre Estados', 'Guerra militar', 'Exploração econômica', 'Urbanização', 'A', NOW(), NOW()),
    (40, 'O que caracteriza a Guerra Fria?', 'Conflito ideológico sem combate direto', 'Invasão territorial', 'Colonização', 'Industrialização', 'A', NOW(), NOW()),
    (40, 'O que são armas nucleares?', 'Recursos bélicos de grande destruição', 'Ferramenta agrícola', 'Fonte de energia renovável', 'Instrumento de urbanização', 'A', NOW(), NOW()),
    (40, 'Qual é o principal objetivo da ONU?', 'Manutenção da paz mundial', 'Exploração territorial', 'Controle climático', 'Urbanização global', 'A', NOW(), NOW()),
    (40, 'O que é terrorismo global?', 'Ações violentas visando objetivos políticos', 'Movimento ambiental', 'Urbanização', 'Comércio internacional', 'A', NOW(), NOW());

    -- 2º ano médio: Sustentabilidade e Meio Ambiente (lesson_id = 41)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (41, 'O que é sustentabilidade?', 'Uso responsável dos recursos naturais', 'Exploração econômica', 'Urbanização', 'Conflito territorial', 'A', NOW(), NOW()),
    (41, 'Qual é o principal problema ambiental?', 'Desmatamento e poluição', 'Urbanização', 'Conflito global', 'Comércio', 'A', NOW(), NOW()),
    (41, 'O que é efeito estufa?', 'Aquecimento da Terra por gases na atmosfera', 'Resfriamento global', 'Erosão do solo', 'Seca', 'A', NOW(), NOW()),
    (41, 'O que é aquecimento global?', 'Aumento da temperatura média do planeta', 'Redução da temperatura', 'Aumento da biodiversidade', 'Formação de rios', 'A', NOW(), NOW()),
    (41, 'O que é preservação ambiental?', 'Proteção da natureza e ecossistemas', 'Construção de cidades', 'Expansão agrícola', 'Exploração mineral', 'A', NOW(), NOW()),
    (41, 'O que é poluição hídrica?', 'Contaminação de rios e lagos', 'Desmatamento', 'Expansão urbana', 'Erosão do solo', 'A', NOW(), NOW()),
    (41, 'O que é poluição do ar?', 'Emissão de gases prejudiciais à atmosfera', 'Uso de energia renovável', 'Reflorestamento', 'Reciclagem', 'A', NOW(), NOW()),
    (41, 'Qual é o conceito de desenvolvimento sustentável?', 'Atender às necessidades presentes sem comprometer o futuro', 'Exploração econômica ilimitada', 'Urbanização acelerada', 'Conflitos territoriais', 'A', NOW(), NOW()),
    (41, 'O que são energias renováveis?', 'Fontes de energia que se regeneram naturalmente', 'Combustíveis fósseis', 'Indústrias poluentes', 'Agricultura', 'A', NOW(), NOW()),
    (41, 'Qual a importância da educação ambiental?', 'Conscientizar sobre preservação e sustentabilidade', 'Exploração de recursos', 'Urbanização', 'Conflitos bélicos', 'A', NOW(), NOW());

    -- 2º ano médio: Globalização e Economia (lesson_id = 42)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (42, 'O que é globalização econômica?', 'Integração dos mercados mundiais', 'Produção local', 'Isolamento econômico', 'Colonização', 'A', NOW(), NOW()),
    (42, 'O que são fluxos comerciais?', 'Movimento de bens e serviços entre países', 'Migração urbana', 'Urbanização', 'Conflito bélico', 'A', NOW(), NOW()),
    (42, 'O que caracteriza o comércio internacional?', 'Troca de produtos entre países', 'Produção doméstica', 'Consumo local', 'Urbanização', 'A', NOW(), NOW()),
    (42, 'O que é economia globalizada?', 'Interdependência econômica entre países', 'Produção agrícola local', 'Exploração colonial', 'Conflito territorial', 'A', NOW(), NOW()),
    (42, 'O que é FMI?', 'Fundo Monetário Internacional', 'ONU', 'OTAN', 'Banco Mundial', 'A', NOW(), NOW()),
    (42, 'O que é Banco Mundial?', 'Organização que financia desenvolvimento global', 'Banco nacional', 'Empresa privada', 'ONG', 'A', NOW(), NOW()),
    (42, 'Qual é o impacto da globalização na economia?', 'Aumento do comércio e integração', 'Redução do comércio', 'Conflitos locais', 'Urbanização', 'A', NOW(), NOW()),
    (42, 'O que é investimento estrangeiro direto?', 'Capital aplicado em outro país para negócios', 'Transferência de população', 'Urbanização', 'Exploração de recursos', 'A', NOW(), NOW()),
    (42, 'Qual é um efeito cultural da globalização?', 'Difusão de cultura e consumo mundial', 'Isolamento cultural', 'Redução da população', 'Colonização', 'A', NOW(), NOW()),
    (42, 'O que é competitividade global?', 'Capacidade de países e empresas de se destacarem no mercado mundial', 'Produção local', 'Urbanização', 'Exploração agrícola', 'A', NOW(), NOW());


    -- 3º ano médio: Geografia Física Avançada (lesson_id = 43)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (43, 'O que é geologia?', 'Estudo da composição e estrutura da Terra', 'Estudo da população', 'Clima', 'Economia', 'A', NOW(), NOW()),
    (43, 'O que são solos férteis?', 'Solos ricos em nutrientes para agricultura', 'Arenosos e secos', 'Ácidos e improdutivos', 'Formações rochosas', 'A', NOW(), NOW()),
    (43, 'Qual fator influencia a formação do relevo?', 'Tectonismo, erosão e sedimentação', 'População', 'Urbanização', 'Clima exclusivamente', 'A', NOW(), NOW()),
    (43, 'O que é tectonismo?', 'Movimento das placas terrestres', 'Formação de rios', 'Vegetação', 'Clima', 'A', NOW(), NOW()),
    (43, 'O que caracteriza climas tropicais?', 'Altas temperaturas e chuvas sazonais', 'Frio intenso', 'Secas extremas', 'Temperaturas negativas', 'A', NOW(), NOW()),
    (43, 'Qual é a importância do ciclo da água?', 'Mantém ecossistemas e abastecimento', 'Formação de cidades', 'Industrialização', 'Urbanização', 'A', NOW(), NOW()),
    (43, 'O que são áreas de risco geológico?', 'Locais suscetíveis a deslizamentos e erosão', 'Campos agrícolas', 'Florestas preservadas', 'Regiões industriais', 'A', NOW(), NOW()),
    (43, 'O que caracteriza um clima equatorial?', 'Chuva abundante e temperaturas altas', 'Seca extrema', 'Frio polar', 'Temperatura moderada', 'A', NOW(), NOW()),
    (43, 'Qual fenômeno natural causa terremotos?', 'Movimento de placas tectônicas', 'Chuvas fortes', 'Secas', 'Erosão', 'A', NOW(), NOW()),
    (43, 'O que são processos erosivos?', 'Desgaste do solo e rochas pelo vento, água e seres vivos', 'Crescimento urbano', 'Expansão agrícola', 'Movimentos populacionais', 'A', NOW(), NOW());

    -- 3º ano médio: Geografia Humana Avançada (lesson_id = 44)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (44, 'O que é migração?', 'Deslocamento de pessoas entre regiões', 'Formação de rios', 'Urbanização', 'Clima', 'A', NOW(), NOW()),
    (44, 'O que é urbanização avançada?', 'Crescimento e reorganização complexa das cidades', 'Construção de estradas rurais', 'Plantio agrícola', 'Colonização', 'A', NOW(), NOW()),
    (44, 'O que é planejamento urbano?', 'Organização do espaço e serviços nas cidades', 'Formação de rios', 'Exploração mineral', 'Produção agrícola', 'A', NOW(), NOW()),
    (44, 'Qual problema urbano é comum em grandes cidades?', 'Trânsito, poluição e favelização', 'Desertos', 'Montanhas altas', 'Rios secos', 'A', NOW(), NOW()),
    (44, 'O que é periferia urbana?', 'Área de menor infraestrutura e habitação', 'Centro comercial', 'Zona industrial', 'Área rural', 'A', NOW(), NOW()),
    (44, 'O que são cidades globais?', 'Centros urbanos com influência econômica, política e cultural mundial', 'Pequenas vilas', 'Cidades médias', 'Aldeias', 'A', NOW(), NOW()),
    (44, 'O que é segregação espacial?', 'Separação de grupos sociais no espaço urbano', 'Distribuição uniforme da população', 'Colonização', 'Desenvolvimento econômico', 'A', NOW(), NOW()),
    (44, 'O que caracteriza um megalópole?', 'Grande conurbação de cidades interligadas', 'Cidade isolada', 'Aldeia rural', 'Pequena cidade', 'A', NOW(), NOW()),
    (44, 'O que é densidade populacional urbana?', 'Número de habitantes por km² em áreas urbanas', 'Altura média das construções', 'Quantidade de ruas', 'Área industrial', 'A', NOW(), NOW()),
    (44, 'Qual é a função dos transportes urbanos?', 'Integrar e organizar a mobilidade da população', 'Formar solos férteis', 'Controlar clima', 'Distribuir rios', 'A', NOW(), NOW());

    -- 3º ano médio: Desenvolvimento Regional e Territorial (lesson_id = 45)
    INSERT INTO task (lesson_id, question, option_a, option_b, option_c, option_d, correct_answer, created_at, updated_at) VALUES
    (45, 'O que é desenvolvimento regional?', 'Melhoria das condições econômicas e sociais de uma região', 'Formação de rios', 'Urbanização', 'Exploração mineral', 'A', NOW(), NOW()),
    (45, 'O que são disparidades regionais?', 'Diferenças econômicas e sociais entre regiões', 'Climas diferentes', 'Biomas distintos', 'Altitudes diversas', 'A', NOW(), NOW()),
    (45, 'O que caracteriza políticas públicas territoriais?', 'Ações do governo para equilibrar desenvolvimento', 'Urbanização espontânea', 'Formação de rios', 'Produção agrícola', 'A', NOW(), NOW()),
    (45, 'O que é migração econômica?', 'Deslocamento por oportunidades de emprego', 'Turismo', 'Viagem escolar', 'Urbanização', 'A', NOW(), NOW()),
    (45, 'O que é polo de desenvolvimento?', 'Região que concentra atividades econômicas e investimentos', 'Deserto', 'Área rural sem população', 'Floresta preservada', 'A', NOW(), NOW()),
    (45, 'O que é planejamento territorial?', 'Organização do uso do espaço para desenvolvimento sustentável', 'Formação de rios', 'Urbanização sem controle', 'Colonização', 'A', NOW(), NOW()),
    (45, 'O que caracteriza áreas metropolitanas?', 'Conjunto de cidades integradas econômica e socialmente', 'Cidade isolada', 'Pequena vila', 'Aldeia rural', 'A', NOW(), NOW()),
    (45, 'O que é política de incentivo fiscal regional?', 'Medidas para atrair empresas e empregos', 'Exploração de recursos naturais', 'Urbanização', 'Formação de rios', 'A', NOW(), NOW()),
    (45, 'O que é território nacional?', 'Espaço geográfico de um país delimitado por fronteiras', 'Floresta', 'Cidade', 'Bioma', 'A', NOW(), NOW()),
    (45, 'Qual é o objetivo da integração regional?', 'Reduzir desigualdades e promover cooperação', 'Aumentar conflitos', 'Desenvolver rios', 'Criar desertos', 'A', NOW(), NOW());
