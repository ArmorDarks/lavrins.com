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
      googleAnalyticsId: 'UA-38994317-7'
      yandexMetrikaId: '46733736'
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
        url: 'https://github.com/ArmorDarks'
      linkedin:
        url: 'https://www.linkedin.com/in/lavrin/'
      twitter:
        handle: '@ArmorDarks'
        image: "/#{imagesPath}/social/twitter.png"
        url: "https://twitter.com/ArmorDarks"
      facebook:
        image: "/#{imagesPath}/social/facebook.png"
        url: 'https://www.facebook.com/serj.lavrinenko'
    CONTACTS:
      main:
        email: ['hello', 'lavrins.com']
    WORKS: [
      { title: 'cFosSpeed data structure research', image: 'works/cFosSpeed-data-structure-research.jpg' }
      { title: 'PW website UX sketch', image: 'works/PW-website-UX-sketch.jpg' }
      { title: 'Bilbuch website-mindmap', image: 'works/Bilbuch-website-mindmap.jpg' }
      { title: 'TGS website mindmap', image: 'works/TGS-website-mindmap.jpg' }
      { title: 'TGS website prototype', image: 'works/TGS-website-prototype.jpg' }
      { title: 'CatBase website prototype', image: 'works/CatBase-website-prototype.jpg' }
      { title: 'PWRawen website mockup', image: 'works/PWRawen-website-mockup.jpg' }
      { title: 'PWR.Radar landing', image: 'works/PWR-Radar-landing.jpg' }
      { title: 'PWR.Radar prototype', image: 'works/PWR-Radar-prototype.jpg' }
      { title: 'PWR.Radar website', image: 'works/PWR-Radar-website.jpg' }
      { title: 'Mortal Online landing', image: 'works/Mortal-Online-landing.jpg' }
      { title: 'cFosSpeed landing', image: 'works/cFosSpeed-landing.jpg' }
      { title: 'PIB ISTU website', image: 'works/PIB-ISTU-website.jpg' }
      { title: 'Fasenergo website', image: 'works/Fasenergo-website.jpg' }
      { title: 'TGS website', image: 'works/TGS-website.jpg' }
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
      'Jest'
      'Grunt'
      'Nunjucks'
      'HTML'
      'CSS'
      'ARIA'
      'RDFa'
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
