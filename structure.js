{
      "name": "Radek",
      "picture": "Picture (at least 300px x 300px) Or link to fb profile which contains pic",
      "profile": "Senior web developer, most of my work was in Ruby and Python. I also have a lot of systems administration experience and one of my favorite web servers is Nginx. Strong sense of social responsibility as evidenced by my work history and prefer projects with a social impact. Mostly self taught, I dropped out of college to join a programming apprenticeship at Appfrica labs for about 2 years, which I found to be a more efficient and deeper learning channel. I live between Africa and America. In my free time, I like to spend time with my family and just visiting the beach",
      "experiences": [
        {"name": "web", "years": 10},
        {"name": "ruby", "years": 5}
      ],
      "title": "Full Stack Developer",
      "skills": [
        {"name": "front-end", "percentage": 30},
        {"name": "back-end", "percentage": 40},
        {"name": "sysadmin", "percentage": 30}
      ],
      "educations": [
        {"title": "BS - Computer Sciences", "institution": "EAFIT University"},
        {"title": "MS Artificial Intelligence", "institution": "MIT"},
      ],
      "projects": [
        {
          "name": "UNICEF - RapidSMS",
          "url": "https://www.rapidsms.org",
          "description": "This is a project that lets organizations in the developing world harness the power of mobile through SMS. Ideally, when an SMS is sent to a short code, it will be visible on a dashboard of some sort where analytics of the text can be done. The text could be structured or unstructured. With structured text, individuals can send texts that can “control” the way the system responds essentially transforming the system to be an event driven one.",
          "interesting": [
            "Scaling of SMS applications",
            "Built apps to track epidemics, violence and a bunch of helpful statistics"
          ],
          "tech": "Ruby on Rails, MongoDB, Angular.js"
        }
      ],
      "toolbox": "git, github, vim, chef, digital ocean, aws, heroku, capistrano, hipchat, basecamp, trello, pivotal tracker, lighthouse, creenﬂow, nginx, airbrake, os x, ubuntu, tmux, bash, zsh, postgresql, redis, mongodb, memcached, javascript, coeescript, javascript, unicorn, thin, ruby, tdd, bdd, ruby, phantomjs",
      "practices": [
        {"name": "Test Driven Development", "description": "I have done TDD and BDD using Rspec, Cucumber and Capybara for more than 2 years with semaphore as a CI server"},
        {"name": "Git/Github", "description": "As a regular contributor to open source projects I have lots of experience with Git and Github including merging conflicts, working with branches, etc."}
      ],
      "opensource": {
        "projects": ["http://github.com/rapidsms/rapidsms", "http://github.com/DevelopmentInitiatives/opendevdata"],
        "contributions": ["http://github.com/miclovich/yomoney", "https://github.com/miclovich/EPROM"]
      },
      "stackoverflow": {
        "reputation": 3650,:
        "tags": "Ruby on Rails, javascript"
      },
      "blog": "blog.staunchrobots.com",
      "languages": [
        {"name": "english", "proeficiency": 8},
        {"name": "spanish", "proeficiency": 10}
      ]
    }

    rails generate scaffold cv name:string profile:string title:string stackoverflow_reputation:integer blog:string

    rails generate scaffold experience name:string years:integer cv:references

    rails generate scaffold skill name:string percentage:integer cv:references

    rails generate scaffold education title:string institution:string cv:references

    rails generate scaffold project name:string url:string description:string cv:references

    rails generate scaffold project_interest_point content:string project:references

    rails generate scaffold practice name:string description:string cv:references

    rails generate scaffold open_source cv:references

    rails generate scaffold open_source_projects url:string open_source:references

    rails generate scaffold language name:string







