-- Insert tech stack for theme-gallery project
INSERT INTO java_portfolio.project_stack (project_id, technology)
SELECT 'theme-gallery', 'React 18.2.0'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.project_stack WHERE project_id = 'theme-gallery' AND technology = 'React 18.2.0');

INSERT INTO java_portfolio.project_stack (project_id, technology)
SELECT 'theme-gallery', 'TypeScript 4.9.5'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.project_stack WHERE project_id = 'theme-gallery' AND technology = 'TypeScript 4.9.5');

INSERT INTO java_portfolio.project_stack (project_id, technology)
SELECT 'theme-gallery', 'Tailwind CSS 3.3.0'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.project_stack WHERE project_id = 'theme-gallery' AND technology = 'Tailwind CSS 3.3.0');

INSERT INTO java_portfolio.project_stack (project_id, technology)
SELECT 'theme-gallery', 'Framer Motion 10.16.4'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.project_stack WHERE project_id = 'theme-gallery' AND technology = 'Framer Motion 10.16.4');

INSERT INTO java_portfolio.project_stack (project_id, technology)
SELECT 'theme-gallery', 'PWA'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.project_stack WHERE project_id = 'theme-gallery' AND technology = 'PWA');

INSERT INTO java_portfolio.project_stack (project_id, technology)
SELECT 'theme-gallery', 'Vercel'
WHERE NOT EXISTS (SELECT 1 FROM java_portfolio.project_stack WHERE project_id = 'theme-gallery' AND technology = 'Vercel');

-- Simple Chat Server Stack
INSERT INTO java_portfolio.project_stack (project_id, technology) VALUES
('simple-chat-server', 'Java 17'),
('simple-chat-server', 'Spring Boot 3.2'),
('simple-chat-server', 'WebSocket'),
('simple-chat-server', 'PostgreSQL'),
('simple-chat-server', 'Docker'),
('simple-chat-server', 'Koyeb');

-- Reactun Stack
INSERT INTO java_portfolio.project_stack (project_id, technology) VALUES
('reactun', 'React 18'),
('reactun', 'Chart.js'),
('reactun', 'Node.js'),
('reactun', 'Express'),
('reactun', 'MySQL 8.0'),
('reactun', 'Vercel');

-- Idea Manager Stack
INSERT INTO java_portfolio.project_stack (project_id, technology) VALUES
('idea-manager', 'React 18'),
('idea-manager', 'TypeScript'),
('idea-manager', 'Vite'),
('idea-manager', 'React Router'),
('idea-manager', 'Local Storage'),
('idea-manager', 'Vercel');

-- Unble Budget App Stack
INSERT INTO java_portfolio.project_stack (project_id, technology) VALUES
('unble-budget-app', 'Java 17'),
('unble-budget-app', 'Spring Boot 3.2'),
('unble-budget-app', 'Spring Security'),
('unble-budget-app', 'JWT'),
('unble-budget-app', 'PostgreSQL'),
('unble-budget-app', 'Koyeb');

-- Java Portfolio Web Stack
INSERT INTO java_portfolio.project_stack (project_id, technology) VALUES
('java-portfolio-web', 'Java 17'),
('java-portfolio-web', 'Spring Boot 3.3.2'),
('java-portfolio-web', 'Spring Security'),
('java-portfolio-web', 'Thymeleaf'),
('java-portfolio-web', 'PostgreSQL'),
('java-portfolio-web', 'Railway'),
('java-portfolio-web', 'Docker');

-- Daily Messages React App Stack
INSERT INTO java_portfolio.project_stack (project_id, technology) VALUES
('daily-messages-react', 'React 18'),
('daily-messages-react', 'Tailwind CSS'),
('daily-messages-react', 'FastAPI'),
('daily-messages-react', 'Python'),
('daily-messages-react', 'PostgreSQL'),
('daily-messages-react', 'Netlify'),
('daily-messages-react', 'Koyeb');