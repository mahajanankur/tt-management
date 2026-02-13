# Automated University Time Table Management System

Welcome! This project is a web-based application to help universities manage and generate timetables automatically.

## 🚀 Quick Start (For Beginners)

If you are new to programming or just want to run the project easily, follow these steps.

### Prerequisites

Before you begin, make sure you have the following installed on your computer:

1.  **Node.js**: This is needed to run the application code.
    *   Download and install it from: [https://nodejs.org/](https://nodejs.org/) (Choose the "LTS" version).
    *   To check if it's installed, open your terminal (Command Prompt on Windows) and type: `node -v`

2.  **Git**: This is used to download the project code.
    *   Download from: [https://git-scm.com/downloads](https://git-scm.com/downloads)

---

### Option 1: The Easiest Way (Using Docker) ⭐ RECOMMENDED

If you don't want to manually set up a database, this is the best method.

**1. Install Docker Desktop:**
   *   Download and install Docker Desktop for your OS: [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/)
   *   Start Docker Desktop and wait for it to run.

**2. Open the Project in Terminal:**
   *   Navigate to the project folder where you downloaded this code.

**3. Run the Setup Script:**

*   **For Windows Users:**
    Double-click the `setup.bat` file in the project folder, OR run this in Command Prompt:
    ```cmd
    setup.bat
    ```

*   **For Mac / Linux Users:**
    Open terminal in the project folder and run:
    ```bash
    ./setup.sh
    ```

**What does this script do?**
*   It installs all the necessary code libraries (`npm install`).
*   It starts a virtual database server inside Docker.
*   It sets up the database with all the tables and sample data automatically.

**4. Start the Application:**
Once the setup finishes successfully, run:
```bash
node index.js
```

---

### Option 2: The Manual Way (Without Docker)

Use this if you cannot use Docker and prefer to install MySQL directly on your computer.

**1. Install MySQL Server:**
   *   You can use **XAMPP** (easiest for Windows): [Download XAMPP](https://www.apachefriends.org/index.html) -> Install -> Start the "MySQL" module from the control panel.
   *   OR install **MySQL Community Server**: [Download Here](https://dev.mysql.com/downloads/mysql/)

**2. Configure the Database:**
   *   You need a tool to view your database (like phpMyAdmin in XAMPP or MySQL Workbench).
   *   Create a new database named `project`.
   *   Import the `init.sql` file provided in this project folder into that database. This will create all tables and data.

**3. Configure the Application:**
   *   Open the file named `.env` in this project folder.
   *   Change `DB_HOST`, `DB_USER`, and `DB_PASSWORD` to match your local MySQL installation.
     *   Default XAMPP user is usually `root` with no password (leave password empty).

**4. Install Dependencies:**
   Open your terminal in the project folder and run:
   ```bash
   npm install
   ```

**5. Start the Application:**
   ```bash
   node index.js
   ```

---

## 💻 How to Use the Application

1.  **Open in Browser:**
    Go to [http://localhost:3000](http://localhost:3000)

2.  **Login:**
    Use the following admin credentials:
    *   **Username:** `admin`
    *   **Password:** `admin`

3.  **View Timetablkes:**
    *   Click on **Generate Time Table** in the sidebar.
    *   Select a Room (e.g., `LH-101` for 3rd Sem, `LH-001` for 1st Sem).
    *   Click **Generate**.

## 🛠 Troubleshooting

*   **"Error: connect ECONNREFUSED 127.0.0.1:3306"**:
    *   This means the application cannot connect to the database.
    *   If using Docker: Make sure Docker Desktop is running and you ran the setup script.
    *   If using Manual: Make sure XAMPP/MySQL service is started.

*   **"Table 'project.xyz' doesn't exist"**:
    *   Your database is missing tables. Re-run the setup script or re-import `init.sql`.

## 📚 Technologies Used
*   **Node.js**: The programming language for the server.
*   **Express.js**: The web framework.
*   **MySQL**: The database to store all information.
