<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Abhishek Kumar - Full Stack Developer & Cloud Architect</title>
    <meta name="description" content="Abhishek Kumar - Full Stack Developer specializing in Java, Python, .NET, Go, Data Science, Cloud Architecture, DevOps, and Cybersecurity">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header */
        header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
            padding: 1rem 0;
            transition: all 0.3s ease;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        header.scrolled {
            background: rgba(0, 0, 0, 0.9);
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: bold;
            color: white;
            text-decoration: none;
            background: linear-gradient(45deg, #ffd700, #ff6b6b);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 2rem;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            transition: all 0.3s ease;
            font-weight: 500;
            padding: 0.5rem 1rem;
            border-radius: 8px;
        }

        .nav-links a:hover {
            color: #ffd700;
            background: rgba(255, 255, 255, 0.1);
        }

        /* Dropdown */
        .dropdown {
            position: relative;
        }

        .dropdown-toggle {
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .dropdown-arrow {
            font-size: 0.8rem;
            transition: transform 0.3s ease;
        }

        .dropdown.active .dropdown-arrow {
            transform: rotate(180deg);
        }

        .dropdown-content {
            position: absolute;
            top: 100%;
            left: 0;
            background: rgba(0, 0, 0, 0.95);
            backdrop-filter: blur(15px);
            border-radius: 12px;
            min-width: 280px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.4);
            opacity: 0;
            visibility: hidden;
            transform: translateY(-15px);
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            z-index: 1001;
            border: 1px solid rgba(255, 255, 255, 0.2);
            margin-top: 0.5rem;
        }

        .dropdown-content.active {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }

        .dropdown-item {
            padding: 0.8rem 1.2rem;
            color: white;
            text-decoration: none;
            display: block;
            transition: all 0.3s ease;
            border-left: 3px solid transparent;
        }

        .dropdown-item:hover {
            background: linear-gradient(90deg, rgba(255, 215, 0, 0.1), transparent);
            border-left-color: #ffd700;
            color: #ffd700;
            padding-left: 1.8rem;
        }

        .dropdown-category {
            font-weight: 600;
            color: #ffd700;
            background: rgba(255, 215, 0, 0.1);
        }

        .dropdown-sub-item {
            padding-left: 2.5rem;
            font-size: 0.9rem;
        }

        .dropdown-sub-item::before {
            content: "├── ";
            position: absolute;
            left: 1.2rem;
            color: rgba(255, 215, 0, 0.6);
        }

        .dropdown-sub-item:hover {
            padding-left: 3rem;
        }

        .mobile-menu {
            display: none;
            background: none;
            border: none;
            color: white;
            font-size: 1.5rem;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
        }

        .hero h1 {
            font-size: 4rem;
            margin-bottom: 1rem;
            background: linear-gradient(45deg, #ffd700, #ff6b6b);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero .subtitle {
            font-size: 1.4rem;
            margin-bottom: 2rem;
            opacity: 0.9;
        }

        .cta-button {
            display: inline-block;
            padding: 15px 35px;
            background: linear-gradient(45deg, #ffd700, #ff6b6b);
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.3);
        }

        /* Sections */
        .section {
            padding: 6rem 0;
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            margin: 2rem 0;
            border-radius: 20px;
        }

        .section h2 {
            text-align: center;
            font-size: 3rem;
            margin-bottom: 3rem;
            color: white;
        }

        .section h2::after {
            content: '';
            width: 80px;
            height: 4px;
            background: linear-gradient(45deg, #ffd700, #ff6b6b);
            display: block;
            margin: 1rem auto;
        }

        /* About */
        .about-content {
            display: grid;
            grid-template-columns: 1fr 2fr;
            gap: 4rem;
            align-items: center;
            color: white;
        }

        .profile-img {
            width: 280px;
            height: 280px;
            border-radius: 50%;
            background: linear-gradient(45deg, #ffd700, #ff6b6b);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 5rem;
            margin: 0 auto;
        }

        .about-text p {
            font-size: 1.2rem;
            margin-bottom: 1.8rem;
            line-height: 1.8;
        }

        /* Skills */
        .skills-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2.5rem;
        }

        .skill-card {
            background: rgba(255, 255, 255, 0.08);
            padding: 2.5rem;
            border-radius: 20px;
            text-align: center;
            color: white;
            transition: all 0.3s ease;
        }

        .skill-card:hover {
            transform: translateY(-10px);
            background: rgba(255, 255, 255, 0.12);
        }

        .skill-card h3 {
            margin-bottom: 1.5rem;
            color: #ffd700;
            font-size: 1.4rem;
        }

        /* Projects */
        .projects-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2.5rem;
        }

        .project-card {
            background: rgba(255, 255, 255, 0.08);
            border-radius: 20px;
            padding: 2.5rem;
            color: white;
            transition: all 0.3s ease;
        }

        .project-card:hover {
            transform: translateY(-8px);
            background: rgba(255, 255, 255, 0.12);
        }

        .project-card h3 {
            margin-bottom: 1.5rem;
            color: #ffd700;
        }

        .project-card p {
            margin-bottom: 2rem;
            line-height: 1.7;
        }

        .project-link {
            color: #ff6b6b;
            text-decoration: none;
            font-weight: 600;
        }

        .project-link:hover {
            color: #ffd700;
        }

        /* Contact */
        .contact-content {
            max-width: 700px;
            margin: 0 auto;
        }

        .contact-intro {
            color: white;
            margin-bottom: 3rem;
            font-size: 1.2rem;
            text-align: center;
        }

        .contact-form {
            display: grid;
            gap: 1.5rem;
        }

        .contact-form input,
        .contact-form textarea {
            padding: 1.2rem;
            border: none;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            font-size: 1rem;
        }

        .contact-form input::placeholder,
        .contact-form textarea::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .submit-btn {
            padding: 1.2rem 2.5rem;
            background: linear-gradient(45deg, #ffd700, #ff6b6b);
            color: white;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            font-weight: 600;
            font-size: 1.1rem;
        }

        .submit-btn:hover {
            transform: translateY(-2px);
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 3rem 0;
            background: rgba(0, 0, 0, 0.3);
            color: white;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .social-links a {
            display: flex;
            width: 50px;
            height: 50px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            text-decoration: none;
            border-radius: 50%;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
            font-size: 1.2rem;
        }

        .social-links a:hover {
            background: linear-gradient(45deg, #ffd700, #ff6b6b);
            transform: translateY(-3px);
        }

        /* Mobile */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
                position: fixed;
                top: 80px;
                left: 0;
                right: 0;
                background: rgba(0, 0, 0, 0.95);
                flex-direction: column;
                padding: 2rem;
                gap: 0;
            }

            .nav-links.active {
                display: flex;
            }

            .dropdown-content {
                position: static;
                background: rgba(255, 255, 255, 0.05);
                display: none;
            }

            .dropdown-content.active {
                display: block;
            }

            .mobile-menu {
                display: block;
            }

            .hero h1 {
                font-size: 2.5rem;
            }

            .about-content {
                grid-template-columns: 1fr;
            }

            .profile-img {
                width: 200px;
                height: 200px;
            }

            .skills-grid,
            .projects-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <header id="header">
        <nav class="container">
            <a href="#home" class="logo">Abhishek Kumar Singh</a>
            <ul class="nav-links" id="navLinks">
                <li><a href="#home">Home1</a></li>
                <li><a href="#about">About</a></li>
                <li class="dropdown" id="skillsDropdown">
                    <a href="#skills" class="dropdown-toggle">
                        Skills <span class="dropdown-arrow">▼</span>
                    </a>
                    <div class="dropdown-content">
                        <a href="#skills" class="dropdown-item dropdown-category">💻 Backend Development</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">Java (Spring Boot)</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">Python (Django, Flask)</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">.NET Core</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">Go (Golang)</a>
                        <a href="#skills" class="dropdown-item dropdown-category">🎨 Frontend Technologies</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">React, Angular, Vue.js</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">HTML5, CSS3, JavaScript</a>
                        <a href="#skills" class="dropdown-item dropdown-category">☁️ Cloud & DevOps</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">AWS, Azure, GCP</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">Docker, Kubernetes</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">CI/CD, Terraform</a>
                        <a href="#skills" class="dropdown-item dropdown-category">📊 Data Science</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">Machine Learning</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">Big Data Analytics</a>
                        <a href="#skills" class="dropdown-item dropdown-category">🔒 Cybersecurity</a>
                        <a href="#skills" class="dropdown-item dropdown-sub-item">DevSecOps</a>
                    </div>
                </li>
                <li class="dropdown" id="projectsDropdown">
                    <a href="#projects" class="dropdown-toggle">
                        Projects <span class="dropdown-arrow">▼</span>
                    </a>
                    <div class="dropdown-content">
                        <a href="#projects" class="dropdown-item dropdown-category">🏛️ Government Projects</a>
                        <a href="https://pmcworkshop.bihar.gov.in" class="dropdown-item dropdown-sub-item" target="_blank">PMC Workshop Portal</a>
                        <a href="#projects" class="dropdown-item dropdown-category">☁️ Cloud Architecture</a>
                        <a href="#projects" class="dropdown-item dropdown-sub-item">Multi-Region HA</a>
                        <a href="#projects" class="dropdown-item dropdown-sub-item">EKS Microservices</a>
                        <a href="#projects" class="dropdown-item dropdown-sub-item">Serverless Apps</a>
                        <a href="#projects" class="dropdown-item dropdown-category">🛒 E-Commerce</a>
                        <a href="#projects" class="dropdown-item dropdown-sub-item">Spring Boot Platform</a>
                        <a href="#projects" class="dropdown-item dropdown-category">🔧 DevOps</a>
                        <a href="#projects" class="dropdown-item dropdown-sub-item">DevSecOps Pipeline</a>
                        <a href="#projects" class="dropdown-item dropdown-sub-item">AWS Landing Zone</a>
                        <a href="#projects" class="dropdown-item dropdown-category">📈 Data Analytics</a>
                        <a href="#projects" class="dropdown-item dropdown-sub-item">Real-Time Data Lake</a>
                    </div>
                </li>
                <li><a href="#contact">Contact</a></li>
            </ul>
            <button class="mobile-menu" id="mobileMenu">☰</button>
        </nav>
    </header>

    <section id="home" class="hero">
        <div class="hero-content">
            <h1>Abhishek Kumar</h1>
            <p class="subtitle">Full Stack Developer | Cloud Architect | Data Scientist | DevOps Engineer | Cybersecurity Specialist</p>
            <a href="#about" class="cta-button">Explore My Work</a>
        </div>
    </section>

    <div class="container">
        <section id="about" class="section">
            <h2>About Me</h2>
            <div class="about-content">
                <div class="profile-img">👨‍💻</div>
                <div class="about-text">
                    <p>Hello! I'm Abhishek Kumar, a passionate Full Stack Developer and Cloud Architect with expertise spanning Java, Python, .NET, Go, Data Science, and Cybersecurity. I specialize in building scalable multi-cloud solutions and robust DevOps practices.</p>
                    <p>With extensive experience in enterprise-grade applications and cloud-native architectures, I've successfully designed and deployed mission-critical systems on AWS, Azure, and GCP. My expertise includes microservices architecture, Docker & Kubernetes containerization, and CI/CD pipeline implementation.</p>
                    <p>I'm passionate about leveraging cutting-edge technologies to solve complex business problems and always excited to take on new challenges in cloud computing, data analytics, and cybersecurity.</p>
                </div>
            </div>
        </section>

        <section id="skills" class="section">
            <h2>Skills & Technologies</h2>
            <div class="skills-grid">
                <div class="skill-card">
                    <h3>Backend Development</h3>
                    <p>Java (Spring Boot), Python (Django, Flask), .NET Core, Go (Golang), REST APIs, GraphQL, Microservices</p>
                </div>
                <div class="skill-card">
                    <h3>Frontend & Full Stack</h3>
                    <p>HTML5, CSS3, JavaScript, TypeScript, React, Angular, Vue.js, Bootstrap</p>
                </div>
                <div class="skill-card">
                    <h3>Multi-Cloud & DevOps</h3>
                    <p>AWS, Azure, GCP, Docker, Kubernetes, Jenkins, GitHub Actions, Terraform, Helm, ArgoCD</p>
                </div>
                <div class="skill-card">
                    <h3>Data Science & Analytics</h3>
                    <p>Python (Pandas, NumPy, Scikit-learn), Machine Learning, Big Data, ETL</p>
                </div>
                <div class="skill-card">
                    <h3>Database Technologies</h3>
                    <p>PostgreSQL, MySQL, MongoDB, Redis, DynamoDB, Kafka, RabbitMQ, Elasticsearch</p>
                </div>
                <div class="skill-card">
                    <h3>Cybersecurity & Monitoring</h3>
                    <p>DevSecOps, Security Scanning, Prometheus, Grafana, ELK Stack, CloudWatch</p>
                </div>
            </div>
        </section>

        <section id="projects" class="section">
            <h2>Featured Projects</h2>
            <div class="projects-grid">
                <div class="project-card">
                    <h3>🏛️ PMC Workshop Portal</h3>
                    <p>Government web application built with Python Django, HTML, CSS, JavaScript. Hosted on RedHat Linux with PostgreSQL. Features user authentication, workshop scheduling, and admin controls.</p>
                    <a href="https://pmcworkshop.bihar.gov.in/login/?next=/" class="project-link" target="_blank">View Live Project →</a>
                </div>
                <div class="project-card">
                    <h3>☁️ Multi-Region HA Web App</h3>
                    <p>Enterprise web application with multi-region failover using AWS Route 53, CloudFront, ALB, Auto Scaling, RDS Multi-AZ. Automated disaster recovery with Terraform and CodePipeline.</p>
                    <a href="https://github.com/aktechpoint" class="project-link" target="_blank">View on GitHub →</a>
                </div>
                <div class="project-card">
                    <h3>🚀 Microservices with EKS</h3>
                    <p>Cloud-native deployment using AWS EKS, Helm, ArgoCD, Istio. Implements canary releases, blue/green deployments with Prometheus and Grafana observability.</p>
                    <a href="https://github.com/aktechpoint" class="project-link" target="_blank">View Architecture →</a>
                </div>
                <div class="project-card">
                    <h3>🛒 E-Commerce Platform</h3>
                    <p>Full-stack platform with Spring Boot microservices, Angular frontend, Kafka event streaming. Features real-time order processing, JWT authentication, deployed on Kubernetes.</p>
                    <a href="https://github.com/aktechpoint" class="project-link" target="_blank">View Project →</a>
                </div>
                <div class="project-card">
                    <h3>⚡ Serverless Event-Driven App</h3>
                    <p>Order-processing system using AWS Lambda, API Gateway, DynamoDB, Step Functions, EventBridge. Event-driven architecture with payment integration and audit logging.</p>
                    <a href="https://github.com/aktechpoint" class="project-link" target="_blank">View App →</a>
                </div>
                <div class="project-card">
                    <h3>🔒 DevSecOps Pipeline</h3>
                    <p>Comprehensive pipeline with Jenkins, SonarQube, Trivy, AWS ECR, security scanning. Automated compliance checks with real-time alerts integration.</p>
                    <a href="https://github.com/aktechpoint" class="project-link" target="_blank">View Pipeline →</a>
                </div>
                <div class="project-card">
                    <h3>📊 Data Lake with Analytics</h3>
                    <p>Enterprise solution using AWS S3, Glue, Kinesis, Athena, Redshift. Processes IoT streams with real-time dashboards and automated ETL using Terraform.</p>
                    <a href="https://github.com/aktechpoint" class="project-link" target="_blank">View Platform →</a>
                </div>
                <div class="project-card">
                    <h3>🏗️ Multi-Account AWS Landing Zone</h3>
                    <p>Enterprise multi-account architecture using Control Tower, Organizations, Service Catalog. Centralized billing, security policies, and automated provisioning with GitOps.</p>
                    <a href="https://github.com/aktechpoint" class="project-link" target="_blank">View Infrastructure →</a>
                </div>
            </div>
        </section>

        <section id="contact" class="section">
            <h2>Get In Touch</h2>
            <div class="contact-content">
                <p class="contact-intro">I'm always open to discussing new opportunities, cloud architecture projects, DevOps implementations, or collaborating on innovative technology solutions!</p>
                <form class="contact-form">
                    <input type="text" placeholder="Your Name" required>
                    <input type="email" placeholder="Your Email" required>
                    <input type="text" placeholder="Subject" required>
                    <textarea placeholder="Your Message" rows="5" required></textarea>
                    <button type="submit" class="submit-btn">Send Message</button>
                </form>
            </div>
        </section>
    </div>

    <footer>
        <div class="container">
            <div class="social-links">
                <a href="https://github.com/aktechpoint" title="GitHub" target="_blank">🔗</a>
                <a href="https://www.youtube.com/channel/UCjeVpJMrRADYp4PHiLql9tA/about" title="YouTube" target="_blank">📺</a>
                <a href="https://instagram.com/ak_k_62" title="Instagram" target="_blank">📸</a>
                <a href="https://facebook.com/aktechuniverse" title="Facebook" target="_blank">📘</a>
                <a href="https://twitter.com/ak06021999" title="Twitter/X" target="_blank">🐦</a>
                <a href="mailto:contact@abhishekkumar.dev" title="Email">📧</a>
            </div>
            <p>&copy; 2025 Abhishek Kumar. All rights reserved.</p>
        </div>
    </footer>

    <script>
        // Mobile menu
        const mobileMenu = document.getElementById('mobileMenu');
        const navLinks = document.getElementById('navLinks');

        mobileMenu.addEventListener('click', () => {
            navLinks.classList.toggle('active');
        });

        // Dropdown functionality
        const dropdowns = document.querySelectorAll('.dropdown');
        
        dropdowns.forEach(dropdown => {
            const toggle = dropdown.querySelector('.dropdown-toggle');
            const content = dropdown.querySelector('.dropdown-content');
            
            toggle.addEventListener('click', (e) => {
                e.preventDefault();
                e.stopPropagation();
                
                // Close other dropdowns
                dropdowns.forEach(d => {
                    if (d !== dropdown) {
                        d.classList.remove('active');
                        d.querySelector('.dropdown-content').classList.remove('active');
                    }
                });
                
                // Toggle current
                dropdown.classList.toggle('active');
                content.classList.toggle('active');
            });
        });

        // Close on outside click
        document.addEventListener('click', (e) => {
            if (!e.target.closest('.dropdown')) {
                dropdowns.forEach(dropdown => {
                    dropdown.classList.remove('active');
                    dropdown.querySelector('.dropdown-content').classList.remove('active');
                });
            }
        });

        // Close on item click
        document.querySelectorAll('.dropdown-item').forEach(item => {
            item.addEventListener('click', () => {
                navLinks.classList.remove('active');
                dropdowns.forEach(dropdown => {
                    dropdown.classList.remove('active');
                    dropdown.querySelector('.dropdown-content').classList.remove('active');
                });
            });
        });

        // Smooth scroll
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth', block: 'start' });
                    navLinks.classList.remove('active');
                }
            });
        });

        // Header scroll effect
        window.addEventListener('scroll', () => {
            const header = document.getElementById('header');
            if (window.scrollY > 100) {
                header.classList.add('scrolled');
            } else {
                header.classList.remove('scrolled');
            }
        });

        // Form submission
        document.querySelector('.contact-form').addEventListener('submit', (e) => {
            e.preventDefault();
            alert('Thank you for your message! I\'ll get back to you soon.');
            e.target.reset();
        });
    </script>
</body>
</html>
