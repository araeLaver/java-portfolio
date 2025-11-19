-- Create java_portfolio schema
CREATE SCHEMA IF NOT EXISTS java_portfolio;

-- Create projects table
CREATE TABLE IF NOT EXISTS java_portfolio.projects (
    id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    git_url VARCHAR(255),
    live_url VARCHAR(255),
    details TEXT
);

-- Create project_stack table
CREATE TABLE IF NOT EXISTS java_portfolio.project_stack (
    id BIGSERIAL PRIMARY KEY,
    project_id VARCHAR(255) NOT NULL,
    technology VARCHAR(255) NOT NULL,
    FOREIGN KEY (project_id) REFERENCES java_portfolio.projects(id) ON DELETE CASCADE
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_project_stack_project_id
ON java_portfolio.project_stack(project_id);

CREATE INDEX IF NOT EXISTS idx_projects_title
ON java_portfolio.projects(title);
