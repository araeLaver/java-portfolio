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