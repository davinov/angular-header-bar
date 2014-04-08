# angular-header-bar
Header bar for stylish mobile-first apps

[![Build Status](https://travis-ci.org/my-way/angular-header-bar.svg)](https://travis-ci.org/my-way/angular-header-bar)
[![Coverage Status](https://coveralls.io/repos/my-way/angular-header-bar/badge.png)](https://coveralls.io/r/my-way/angular-header-bar)

## Installation
`bower install my-way.angular-header-bar`

## Usage
Include `mw.angular-header-bar-tpls.js` and `angular-header-bar.css`, then require `mw.angular-header-bar` in your angular app.
This directive can be used as class, attribute or element.

```html
<div header-bar></div>
<div class='header-bar'></div>
<header-bar></header-bar>
````

> The last one is not IE8 compatible

### Usage with less
Import `dist/less/angular-header-bar.less` in your less main file.

## Options
Option  | Type  | Description
------  | ----  | -----------
title1  | string| first app title line
title2  | string| second app title line
beta    | bool  | show or hide beta mention
back    | bool  | show or hide back button
home-page|string| path to the home page (used for links and not displaying the back button)
logo    | string| path to an image to be displayed as logo
fluid   | bool  | adapts fluidly to screen's width ([.container-fluid](http://getbootstrap.com/css/#grid-example-fluid) instead of .container)

## Example
See docs/angular-header-bar.html (require `bower install`)

## Build the package
`npm install` and `npm run build`
