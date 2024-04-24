# Ruby-Capybara Test Otomasyon Projesi

# Tool stack

* **Ruby** - Development language
* **RubyMine IDE** - Development IDE
* **Allure** Multi-language test report tool
* **Cucumber** - Gherkin Syntax Framework
* **Capybara** - Web-based APP Framework
* **RSpec** - Assertion & Validation Framework
* **Selenium** - Web APP Test Automation Tool

# Kurulumlar

* Kurulumlar için proje dizinindeki Ruby-Capybara Kurulum Dokümanı.pdf takip edilmelidir.
* Gerekli kütüphanelerin yüklenilebilmesi için proje dizininde aşağıdaki komutlar çalıştırılır.
  ```
  gem install bundler
  bundle install
  ```

# Testlerin Çalıştırılması

1. IDE üzerinden yeşil RUN butonu ile senaryo ya da feature bazlı çalıştırılabilir.


2. Terminalden ilgili proje dizininde senaryo ismi ile çalıştırma:

   `cucumber --name "Login and logout successfully"`


3. Terminalden ilgili proje dizininde scenario ya da feature tag'i ile çalıştırma:

   `cucumber --tag @success_login`


4. Farklı browser'lar ile çalıştırmak için(default value `chrome`):

   `cucumber --tag @success_login browser=firefox`


5. Headless mode'da çalıştırmak için(default value `false`):

   `cucumber --tag @success_login headless=true`

# Raporlama
* Raporlama aracı olarak allure report kullanılmaktadır.


* Allure report oluşturmak için allure pc'nizde kurulu olmalıdır.

    * Mac kurulum

      `brew install allure`

    * Windows Kurulum

        * Powershell açılır. Aşağıdaki komut çalıştırılır. Scoop kurulumu yapılır.

          `iwr -useb get.scoop.sh | iex`

        * Scoop başarılı kurulduktan sonra komut satırı açılır. Aşağıdaki komut çalıştırılır. Allure kurulumu yapılır.

          `scoop install allure`


* Allure report generate etmek için proje dizininde oluşan allure-results folder yolu verilerek aşağıdaki komut çalıştırılır.

  `allure serve output/allure-results `

# Project Folder Structure

```
.
├── Gemfile
├── Gemfile.lock
├── README.md
├── Ruby-Capybara Kurulum Dokümanı.pdf
├── config
│   └── base_config.rb
├── cucumber.yml
├── features
│   ├── pages
│   │   ├── search_page.rb
│   │   └── search_result_page.rb
│   ├── step_definitions
│   │   ├── search_result_steps.rb
│   │   └── search_steps.rb
│   ├── support
│   │   ├── env.rb
│   │   └── hooks.rb
│   └── tests
│       └── search.feature
└── utils
    ├── driver.rb
    └── page_helper.rb
```