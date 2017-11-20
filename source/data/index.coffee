{ merge } = require('lodash')
pkg = require('../../package.json')

module.exports = ({ config }) ->
  sitename = config('env.sitename')
  buildRoot = config('path.build.root') + '/'
  imagesPath = config('path.build.images').replace(buildRoot, '')

  data =
    PATH:
      fonts: config('path.build.fonts').replace(buildRoot, '')
      images: imagesPath
      scripts: config('path.build.scripts').replace(buildRoot, '')
      styles: config('path.build.styles').replace(buildRoot, '')
      sprites: config('path.build.sprites').replace(buildRoot, '')
      source: config('path.source')
      build: config('path.build')
    SITE:
      name: 'Serj Lavrin'
      shortName: 'Serj Lavrin'
      version: pkg.version
      description: pkg.description
      homepage: if sitename then "https://#{sitename}" else pkg.homepage
      logo: "/#{imagesPath}/logo.svg"
      viewport: 'width=device-width, initial-scale=1'
      themeColor: '#141616'
      locales: config('locales')
      baseLocale: config('baseLocale')
      googleAnalyticsId: false # 'UA-XXXXX-X'
      yandexMetrikaId: false # 'XXXXXX'
    PLACEHOLDERS:
      company: pkg.name
    PAGE_DEFAULTS:
      image: ''
      class: ''
      bodyClass: ''
      applyWrapper: true
      showContentTitle: true
    SOCIAL: # Add any other social services following same pattern
      github:
        image: "/#{imagesPath}social/github.png"
        url: 'https://github.com/ArmorDarks'
      linkedin:
        image: "/#{imagesPath}/social/inkedin.png"
        url: 'https://www.linkedin.com/in/lavrin/'
      twitter:
        handle: '@ArmorDarks'
        image: "/#{imagesPath}/social/witter.png"
        url: "https://twitter.com/ArmorDarks"
      facebook:
        image: "/#{imagesPath}/social/acebook.png"
        url: 'https://www.facebook.com/serj.lavrinenko'
    CONTACTS:
      main:
        email: ['hello', 'lavrins.com']
    WORKS: [
      { title: 'Test', image: 'works/1.jpg' }
      { title: 'Test', image: 'works/2.png' }
      { title: 'Test', image: 'works/3.png' }
      { title: 'Test', image: 'works/4.png' }
      { title: 'Test', image: 'works/5.png' }
      { title: 'Test', image: 'works/6.png' }
      { title: 'Test', image: 'works/7.png' }
      { title: 'Test', image: 'works/8.png' }
      { title: 'Test', image: 'works/9.png' }
      { title: 'Test', image: 'works/10.jpg' }
      { title: 'Test', image: 'works/11.png' }
      { title: 'Test', image: 'works/13.png' }
      { title: 'Test', image: 'works/12.png' }
      { title: 'Test', image: 'works/14.png' }
      { title: 'Test', image: 'works/15.png' }
      { title: 'Test', image: 'works/16.png' }
    ]
    SPECS: [
      'Product Design'
      'Research'
      'Planning'
      'Prototyping'
      'UX/UI'
      'Frontend Development'
      'Consulting'
      'A11y'
      'I11n &amp; L10n'
    ]
    SKILLS: [
      'JavaScript'
      'Node'
      'NPM'
      'jQuery'
      'Native DOM API'
      'React'
      'Redux'
      'ARIA'
      'Grunt'
      'Nunjucks'
      'HTML'
      'CSS'
      'Sass'
      'Gettext'
      'Git'
      'Pen &amp; Papper'
      'Photoshop'
      'Figma'
      # 'Github'
      # 'Coggle'
      # 'MindMeister'
      # 'Trello'
      # 'Redmine'
      # 'Slack'
      # 'Teams'
      'RDFa'
    ]
    TRAITS: [
      'Magically self-orginized'
      'Bloody perfectionist'
      'Constructivist'
      # 'Mix of realist &amp; idealist'
      'Diehard justice knight'
      'Musician'
    ]
    PLANS: [
      'Be even better UX designer'
      'Become graphical artist'
      'Backend'
      'Deeper programming unerstanding'
      'Learn non-OOP language'
      'Make a game'
      'Mobile design &amp; development'
      'Leadership'
    ]
    ENV:
      production: config('env.production')
      staging: config('env.staging')
      build: config('env.build')
      hotModuleRloading: config('env.hotModuleRloading')

  return (locale) -> data
