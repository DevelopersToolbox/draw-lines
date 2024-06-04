<!-- markdownlint-disable -->
<p align="center">
    <a href="https://github.com/DevelopersToolbox/">
        <img src="https://cdn.wolfsoftware.com/assets/images/github/organisations/developerstoolbox/black-and-white-circle-256.png" alt="DevelopersToolbox logo" />
    </a>
    <br />
    <a href="https://github.com/DevelopersToolbox/draw-lines/actions/workflows/cicd.yml">
        <img src="https://img.shields.io/github/actions/workflow/status/DevelopersToolbox/draw-lines/cicd.yml?branch=master&label=build%20status&style=for-the-badge" alt="Github Build Status" />
    </a>
    <a href="https://github.com/DevelopersToolbox/draw-lines/blob/master/LICENSE.md">
        <img src="https://img.shields.io/github/license/DevelopersToolbox/draw-lines?color=blue&label=License&style=for-the-badge" alt="License">
    </a>
    <a href="https://github.com/DevelopersToolbox/draw-lines">
        <img src="https://img.shields.io/github/created-at/DevelopersToolbox/draw-lines?color=blue&label=Created&style=for-the-badge" alt="Created">
    </a>
    <br />
    <a href="https://github.com/DevelopersToolbox/draw-lines/releases/latest">
        <img src="https://img.shields.io/github/v/release/DevelopersToolbox/draw-lines?color=blue&label=Latest%20Release&style=for-the-badge" alt="Release">
    </a>
    <a href="https://github.com/DevelopersToolbox/draw-lines/releases/latest">
        <img src="https://img.shields.io/github/release-date/DevelopersToolbox/draw-lines?color=blue&label=Released&style=for-the-badge" alt="Released">
    </a>
    <a href="https://github.com/DevelopersToolbox/draw-lines/releases/latest">
        <img src="https://img.shields.io/github/commits-since/DevelopersToolbox/draw-lines/latest.svg?color=blue&style=for-the-badge" alt="Commits since release">
    </a>
    <br />
    <a href="https://github.com/DevelopersToolbox/draw-lines/blob/master/.github/CODE_OF_CONDUCT.md">
        <img src="https://img.shields.io/badge/Code%20of%20Conduct-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/DevelopersToolbox/draw-lines/blob/master/.github/CONTRIBUTING.md">
        <img src="https://img.shields.io/badge/Contributing-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/DevelopersToolbox/draw-lines/blob/master/.github/SECURITY.md">
        <img src="https://img.shields.io/badge/Report%20Security%20Concern-blue?style=for-the-badge" />
    </a>
    <a href="https://github.com/DevelopersToolbox/draw-lines/issues">
        <img src="https://img.shields.io/badge/Get%20Support-blue?style=for-the-badge" />
    </a>
</p>

## Overview

This is a simple bash plugin which provides a consistent method for drawing lines on the console.

This was first implemented in our [CI/CD Toolbox](https://github.com/CICDToolbox) tools, but we externalised it so it could
be released and used independently.

## Example
```sh
export screen_width=97

# shellcheck disable=SC1091
source ../src/draw-lines.sh

draw_line
align_right "Wolf Software"
align_right "Wolf Software" 4
align_left "Wolf Software"
align_left "Wolf Software" 4
align_center "Wolf Software"
```

## Example Output
```
─────────────────────────────────────────────────────────────────────────────────────────────────
──────────────────────────────────────────────────────────────────────────────── Wolf Software ──
────────────────────────────────────────────────────────────────────────────── Wolf Software ────
── Wolf Software ────────────────────────────────────────────────────────────────────────────────
──── Wolf Software ──────────────────────────────────────────────────────────────────────────────
───────────────────────────────────────── Wolf Software ─────────────────────────────────────────
```

<br />
<p align="right"><a href="https://wolfsoftware.com/"><img src="https://img.shields.io/badge/Created%20by%20Wolf%20on%20behalf%20of%20Wolf%20Software-blue?style=for-the-badge" /></a></p>
