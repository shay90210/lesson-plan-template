# Semester Unit Plan Template
This project is a lightweight Ruby web application built with **Sinatra** and **ERB**. It renders a dynamic lesson plan template in the browser, allowing structured data to be displayed cleanly without hard‑coding HTML content.

The goal of this project is to practice core Ruby concepts while reinforcing how backend data flows into frontend views using ERB templates. This project is built as part of a hands‑on Ruby learning journey. I began the project from a static website perspective and slowly transition the project to a more dynamic approach that will be user-friendly for non-technical users.


---

## Languages Used

* **Ruby** – application logic and data structures
* **Sinatra** – lightweight web framework for routing
* **ERB (Embedded Ruby)** – dynamic HTML templates
* **Puma** – local development server

---

## Project Structure

```
lesson-plan-template/
├── app.rb              # Main Sinatra application
├── views/
│   └── index.erb       # ERB template rendered in the browser
├── public/
│   └── style.css       # CSS styling (if added)
└── README.md
```

---

## How to Run the Project Locally

1. Make sure Ruby is installed:

   ```bash
   ruby -v
   ```

2. Install Sinatra (if not already installed):

   ```bash
   gem install sinatra
   ```

3. Navigate to the project folder:

   ```bash
   cd lesson-plan-template
   ```

4. Start the server:

   ```bash
   ruby app.rb
   ```

5. Open your browser and visit:

   ```
   http://localhost:4567
   ```

If the project is running correctly, you should see the lesson plan rendered in the browser.

---

## Key Learning Goals

* Understanding Sinatra routing (`get '/' do ... end`)
* Passing data from Ruby into ERB templates
* Using instance variables (`@months`) in views
* Debugging common Sinatra + ERB errors
* Separating logic from presentation

---

## Common Issues

* **`undefined method 'keys' for nil`**
  This usually means an instance variable expected by the ERB template was not set in the route.

* **Blank page**
  Check the terminal for errors and confirm the server is still running.

---

## Status

This project is actively being used as a learning and refresher exercise while rebuilding Ruby and backend fundamentals.

---

## Future Improvements

* Add form input for dynamic lesson creation
* Persist lesson data
* Improve styling and layout
* Add additional routes

---

<h1>LESSON TEMPLATE 1: Html & Css</h1>
<img width="1920" height="1120" alt="image of first part of lesson template" src="https://github.com/user-attachments/assets/2d9d5bb3-dc60-4c6f-850b-441553f48605" />

<h1>LESSON TEMPLATE 2: Html, Css & Ruby/Sinatra</h1>
<img width="1920" height="1145" alt="image of second part of lesson template" src="https://github.com/user-attachments/assets/248c7938-6a68-4c65-be36-b0ac81b12184" />
