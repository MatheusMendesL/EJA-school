-- Users table
CREATE TABLE users (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    tel VARCHAR(15) NOT NULL,
    password VARCHAR(255) NOT NULL,
    xp INT NOT NULL DEFAULT 0,
    ranking INT NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL
);

-- Matters table
CREATE TABLE matter (
    id_matter INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,   
    description TEXT                      
);

-- Lessons table
CREATE TABLE lesson (
    id_lesson INT AUTO_INCREMENT PRIMARY KEY,
    matter_id INT NOT NULL,                
    title VARCHAR(255) NOT NULL,           
    content TEXT NOT NULL,                 
    level ENUM('básico', 'intermediário', 'avançado') DEFAULT 'básico', 
    created_at DATETIME NOT NULL,         
    updated_at DATETIME NOT NULL,         
    FOREIGN KEY (matter_id) REFERENCES matter(id_matter) ON DELETE CASCADE
);

-- Tasks table
CREATE TABLE task (
    id_task INT AUTO_INCREMENT PRIMARY KEY,
    lesson_id INT NOT NULL,              
    question TEXT NOT NULL,               
    option_a VARCHAR(255) NOT NULL,       
    option_b VARCHAR(255) NOT NULL,     
    option_c VARCHAR(255) NOT NULL,      
    option_d VARCHAR(255) NOT NULL,      
    correct_answer ENUM('A', 'B', 'C', 'D') NOT NULL,  
    created_at DATETIME NOT NULL,         
    updated_at DATETIME NOT NULL,         
    FOREIGN KEY (lesson_id) REFERENCES lesson(id_lesson) ON DELETE CASCADE
);

-- User progress table
CREATE TABLE user_progress (
    id_progress INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT NOT NULL,
    lesson_id INT NOT NULL,
    matter_id INT NOT NULL,
    completed TINYINT(1) NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL DEFAULT NOW(),
    updated_at DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    FOREIGN KEY (id_user) REFERENCES users(id_user) ON DELETE CASCADE,
    FOREIGN KEY (lesson_id) REFERENCES lesson(id_lesson) ON DELETE CASCADE,
    FOREIGN KEY (matter_id) REFERENCES matter(id_matter) ON DELETE CASCADE
);
