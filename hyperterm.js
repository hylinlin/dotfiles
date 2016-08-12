module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 16,

    // font family with optional fallbacks
    fontFamily: '"Share Tech Mono"',

    // terminal cursor background color (hex)
    cursorColor: '#64EABD',

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    backgroundColor: '#252053',

    // border color (window, tabs)
    // borderColor: '#83E4B5',

    // change the shape of the curor
    cursorShape: 'UNDERLINE',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // some color overrides. see http://bit.ly/29k1iU2 for
    // the full list
    colors: {
     black:         '#4A4A4A',
     red:           '#EF4A4A',
     green:         '#9DE0AD',
     yellow:        '#FFFF8F',
     blue:          '#2FC2EF',
     magenta:       '#e94e77',
     cyan:          '#c6e5d9',
     white:         '#E4E4E4',
     lightBlack:    '#6C6C6C',
     lightRed:      '#ef5285',
     lightGreen:    '#88dba3',
     lightYellow:   '#c6e5d9',
     lightBlue:     '#c6e5d9',
     lightMagenta:  '#EF2FA5',
     lightCyan:     '#FFFF8F',
     lightWhite:    '#f0f5f9'
    },
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [],

  // in development, you can create a directory under
  // `~/.hyperterm_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
