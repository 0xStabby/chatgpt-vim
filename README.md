<a name="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/0xStabby/chatgpt-vim">
    <!-- <img src="images/logo.png" alt="Logo" width="80" height="80"> -->
  </a>

<h3 align="center">chatgpt-vim</h3>

  <p align="center">
    ChatGPT in Vim, the future is now
    <br />
    <a href="https://github.com/0xStabby/chatgpt-vim"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/0xStabby/chatgpt-vim">View Demo</a>
    ·
    <a href="https://github.com/0xStabby/chatgpt-vim/issues">Report Bug</a>
    ·
    <a href="https://github.com/0xStabby/chatgpt-vim/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

<!-- [![Product Name Screen Shot][product-screenshot]](https://github.com/0xStabby/chatgpt-vim) -->

Vim Plugin to use ChatGPT in Vim.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![Vim][Vim.org]][Vim-url]
* [![ChatGPT][OpenAI.com]][OpenAI-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

You will need this [chatgpt wrapper and cli](https://github.com/mmabrouk/chatgpt-wrapper)
* chatgpt-wrapper
  ```sh
  pip install git+https://github.com/mmabrouk/chatgpt-wrapper
  playwright install firefox
  ```
* You will need to login to chatgpt at first
  ```sh
  chatgpt install
  ```
* Exit out of that command once you are logged in

### Installation

1. Install with vim plugin manager of your choice

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

1. In normal mode type `gpt`
2. You will be prompted for input
3. Enter your prompt for gpt
4. Wait.. takes a lil bit to load
5. Review ChatGPT output
6. If you like the output and would like to write to the file select Y

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [x] Ask ChatGPT from Vim
- [x] Review output
- [x] Write output to file on user Confirmation

See the [open issues](https://github.com/0xStabby/chatgpt-vim/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Twitter: [@0xStabby](https://twitter.com/0xStabby)

Project Link: [https://github.com/0xStabby/chatgpt-vim](https://github.com/0xStabby/chatgpt-vim)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/0xStabby/chatgpt-vim.svg?style=for-the-badge
[contributors-url]: https://github.com/0xStabby/chatgpt-vim/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/0xStabby/chatgpt-vim.svg?style=for-the-badge
[forks-url]: https://github.com/0xStabby/chatgpt-vim/network/members
[stars-shield]: https://img.shields.io/github/stars/0xStabby/chatgpt-vim.svg?style=for-the-badge
[stars-url]: https://github.com/0xStabby/chatgpt-vim/stargazers
[issues-shield]: https://img.shields.io/github/issues/0xStabby/chatgpt-vim.svg?style=for-the-badge
[issues-url]: https://github.com/0xStabby/chatgpt-vim/issues
[license-shield]: https://img.shields.io/github/license/0xStabby/chatgpt-vim.svg?style=for-the-badge
[license-url]: https://github.com/0xStabby/chatgpt-vim/blob/master/LICENSE.txt
[product-screenshot]: images/screenshot.png
[Vim.org]: https://img.shields.io/static/v1?style=for-the-badge&message=Vim&color=019733&logo=Vim&logoColor=FFFFFF&label=
[Vim-url]: https://vim.org 
[OpenAI.com]: https://img.shields.io/badge/OpenAI-ChatGPT-159776?style=for-the-badge
[OpenAI-url]: https://chat.openai.com/
