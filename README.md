
# Kece News - Full-Stack PWA

A responsive, full-stack Progressive Web App (PWA) engineered for dynamic content management, featuring a PHP backend, local MySQL database persistence, and lazy-loaded NgModule routing architectures.

## Application Demo / Demo Aplikasi

**[EN]** Watch a rapid feature walk-through demonstrating core UI flows, user authentication, and dynamic content management within the full-stack PWA environment.

**[ID]** Saksikan demonstrasi fitur cepat yang menunjukkan alur UI inti, autentikasi pengguna, dan manajemen konten dinamis di dalam lingkungan PWA full-stack.

👉 **[Watch the Short Demo on YouTube](https://youtu.be/iGvBWZIxiRg)**

## Project Overview / Ringkasan Projek

**[EN]** This repository showcases a comprehensive Full-Stack application designed as a Progressive Web App (PWA). Named **Kece News**, the ecosystem is built using an Ionic and Angular frontend coupled with a robust PHP backend architecture. The application seamlessly handles complex CRUD operations for news articles, persisting user credentials and dynamic content safely into a local MySQL database via XAMPP. Furthermore, it utilizes service workers for native-like caching and implements strict lazy-loading strategies to ensure zero-latency navigation across the platform.

**[ID]** Repositori ini menampilkan aplikasi Full-Stack komprehensif yang dirancang sebagai Progressive Web App (PWA). Dinamakan **Kece News**, ekosistem aplikasi ini dibangun menggunakan frontend Ionic dan Angular yang dipadukan dengan arsitektur backend PHP yang andal. Aplikasi ini menangani operasi CRUD yang kompleks untuk artikel berita secara lancar, serta menyimpan kredensial pengguna dan konten dinamis dengan aman ke dalam database MySQL lokal melalui XAMPP. Selain itu, aplikasi ini memanfaatkan service workers untuk caching layaknya aplikasi native dan menerapkan strategi lazy-loading ketat untuk memastikan navigasi tanpa latensi di seluruh platform.
## Key Features / Fitur Utama
* **Full-Stack Integration:**
  * **[EN]** Unifies modern frontend rendering (TypeScript/Angular) with reliable server-side scripting (PHP).
  * **[ID]** Menyatukan rendering frontend modern (TypeScript/Angular) dengan skrip sisi server yang andal (PHP).
* **Progressive Web App (PWA) Capabilities:**
  * **[EN]** Integrated Service Workers for enhanced performance and native-like installability on both desktop and mobile devices.
  * **[ID]** Integrasi Service Workers untuk meningkatkan performa dan kemampuan instalasi layaknya aplikasi native di perangkat desktop maupun mobile.
* **Optimized Routing Architecture:**
  * **[EN]** Strict lazy-loaded (`loadChildren`) module architecture to minimize initial payload and accelerate page rendering.
  * **[ID]** Arsitektur modul berbasis lazy-loading (`loadChildren`) yang ketat untuk meminimalkan beban awal dan mempercepat pemuatan halaman.
* **MySQL Database Persistence:**
  * **[EN]** Secure client-server data synchronization utilizing local Apache/MySQL environments (XAMPP).
  * **[ID]** Sinkronisasi data klien-server yang aman memanfaatkan lingkungan Apache/MySQL lokal (XAMPP).

## Tech Stack & Architecture

* **Frontend Framework:** Ionic & Angular (NgModule Architecture)
* **Backend Runtime:** PHP (Apache Server)
* **Database Layer:** MySQL
* **Core Languages:** TypeScript, PHP, HTML, SCSS
* **Performance Strategy:** Lazy Loading & Service Worker Caching
## Challenge-Based Learning (CBL) Framework / Pembelajaran Berbasis Tantangan

### 1. Engage (The Problem / Masalah)
* **[EN]** Building interactive full-stack applications often introduces complex architectural bottlenecks and deployment challenges when integrating frontend interfaces with persistent backend databases. The challenge was to engineer a synchronized full-stack container that delivers seamless data manipulation, maintains high performance, and provides a native app-like experience on standard web browsers without performance degradation.
* **[ID]** Membangun aplikasi full-stack yang interaktif sering kali menimbulkan hambatan arsitektur dan tantangan penerapan yang kompleks saat mengintegrasikan antarmuka frontend dengan database backend yang persisten. Tantangannya adalah merancang kontainer full-stack yang tersinkronisasi untuk menangani manipulasi data secara lancar, mempertahankan kinerja tinggi, dan memberikan pengalaman seperti aplikasi native di peramban web standar tanpa penurunan performa.

### 2. Investigate (The Solution / Solusi)
* **[EN]** I engineered a full-stack solution utilizing the Ionic framework on top of Angular for the frontend, coupled with a PHP backend and MySQL database. To resolve performance issues, the frontend routing was strictly partitioned into lazy-loaded NgModules. Data persistence and dynamic CRUD operations were handled via secure API bridges connecting to a local SQL database, while PWA capabilities were injected via Service Workers to guarantee an unbroken, offline-ready user experience.
* **[ID]** Saya merancang solusi full-stack memanfaatkan framework Ionic di atas Angular untuk frontend, dipadukan dengan backend PHP dan database MySQL. Untuk mengatasi masalah performa, routing frontend dipartisi secara ketat menjadi NgModule yang berbasis *lazy-loaded*. Persistensi data dan operasi CRUD dinamis ditangani melalui jembatan API aman yang terhubung ke database SQL lokal, sementara kemampuan PWA disuntikkan melalui Service Workers untuk menjamin pengalaman pengguna yang tidak terputus dan siap digunakan secara luring (*offline*).

### 3. Act (My Role & Impact / Peran & Dampak)
* **[EN]** Acted as a **Full-Stack Developer**. I was responsible for structuring the Angular component lifecycles, configuring the local SQL database schema, integrating the PHP backend logic, and ensuring a fully responsive layout using HTML and SCSS across varying screen sizes. This resulted in an optimized news portal architecture capable of running efficiently across multiple deployment targets.
* **[ID]** Bertindak sebagai **Full-Stack Developer**. Saya bertanggung jawab untuk menyusun siklus hidup komponen Angular, mengonfigurasi skema database SQL lokal, mengintegrasikan logika backend PHP, serta memastikan tata letak yang sepenuhnya responsif menggunakan HTML dan SCSS di berbagai ukuran layar. Hal ini menghasilkan arsitektur portal berita yang dioptimalkan dan mampu berjalan efisien di berbagai target perangkat.
## Repository Structure / Struktur Repositori

The workspace is organized to separate frontend component logic, static assets, and local persistence configurations.

* `/src/app` - Core Angular components, services (including API configurations), and lazy-loaded page modules.
* `/src/assets` - Static assets, iconographies, and styling sheets (SCSS).
* `/database-schema.sql` - Local SQL database schema for backend persistence and initial data seeding.
* `angular.json` & `ionic.config.json` - Core workspace, compiler, and build configurations.
* `package.json` - Node package dependencies and script definitions.
* `/kece-news-backend` - Native PHP backend API endpoints designed for XAMPP server environments.
## Local Development Setup / Panduan Menjalankan Projek

Follow these steps to configure the local server environment, initialize the database, and run the frontend application.

### Prerequisites (Persiapan Awal)
Ensure you have **Node.js** installed for the frontend environment, and **XAMPP** (or similar tools) installed to run the local Apache server and MySQL database.

### 1. Backend & Database Setup (XAMPP)
1. Open **XAMPP Control Panel** and start **Apache** and **MySQL**.
2. Open `http://localhost/phpmyadmin` in your browser. Create a new database.
3. Import the `database-schema.sql` file provided in this repository into your newly created database.
4. Copy the `kece-news-backend` folder provided in this repository and paste it into your XAMPP `htdocs` directory (e.g., `C:\xampp\htdocs\kece-news-backend`).

### 2. Frontend Installation & Execution
1. **Clone the Repository:**
```bash
   git clone [https://github.com/YOUR_USERNAME/kece-news-pwa.git](https://github.com/YOUR_USERNAME/kece-news-pwa.git)
   cd kece-news-pwa
```

2. **Configure API Endpoint:**

Open src/app/kecenewsservice.ts and ensure the BASE_URL points to your local backend folder in htdocs:
```bash
    BASE_URL = 'http://localhost/kece-news-backend';
```

3. **Install Angular Service Worker:**

Install the exact Service Worker version matching the project environment parameters:
```bash
   npm install @angular/service-worker@20.3.25
```

4. **Install Core Dependencies:**

Ensure all default package architectures and node modules are fully synchronized:
```bash
   npm install
```
5. **Launch Development Server:**

Compile the TypeScript/SCSS infrastructure and serve the application on your local browser:
```bash
   ionic serve
```
## Contact / Kontak
* **LinkedIn:** [linkedin.com/in/catharina-maria](https://linkedin.com/in/catharina-maria)
* **Email:** [Send an Email](mailto:catharinamaria04@gmail.com)

