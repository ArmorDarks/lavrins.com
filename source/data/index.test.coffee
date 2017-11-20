{ grunt } = require('../../tests/utils/grunt')
t = require('tcomb')
r = require('../../modules/refinements')
validate = require('../../modules/validate')
data = require('./index')

# Tests data index file against this schema to ensure that Kotsu receives all required data with valid values.
# If you add new data properties, you can whether make good for yourself and extend this schema, or just ignore it.
# @docs https://github.com/gcanti/tcomb

data = grunt.config.process(data(grunt)())

Data = module.exports = t.struct({
  PATH: t.struct
    fonts: t.String
    images: t.String
    scripts: t.String
    styles: t.String
    sprites: t.String
    source: t.struct
      root: t.String
      data: t.String
      fonts: t.String
      icons: t.String
      images: t.String
      locales: t.String
      scripts: t.String
      sprites: t.String
      static: t.String
      styles: t.String
      templates: t.String
    build: t.struct
      root: t.String
      assets: t.String
      fonts: t.String
      images: t.String
      scripts: t.String
      sprites: t.String
      static: t.String
      styles: t.String
      templates: t.String
  SITE: t.struct
    name: t.String
    shortName: r.Maxlength(12)(t.String)
    version: t.String
    description: t.String
    homepage: r.Absoluteurl
    logo: t.maybe r.Imagepath
    viewport: t.String
    themeColor: t.String
    locales: r.EqualKeyAndProp('locale') t.dict t.String, t.struct({
      locale: t.String
      url: t.String
      rtl: t.Boolean
      defaultForLanguage: t.maybe t.Boolean
      numberFormat: t.String
      currencyFormat: t.String
    }, { name: 'Locales' })
    baseLocale: t.String
    googleAnalyticsId: t.union [t.String, r.False]
    yandexMetrikaId: t.union [t.String, r.False]
  PLACEHOLDERS: t.dict(t.String, t.Any)
  PAGE_DEFAULTS: t.struct
    image: t.maybe t.String
    class: t.maybe t.String
    bodyClass: t.maybe t.String
    applyWrapper: t.maybe t.Boolean
    showContentTitle: t.maybe t.Boolean
  SOCIAL: t.dict t.String, t.struct({
      handle: t.maybe r.Handle
      image: t.maybe r.Imagepath
      url: r.Absoluteurl
    }, { name: 'Social' })
  CONTACTS: t.dict t.String, t.struct({
    email: r.Maxlength(2)(t.list(t.String))
  })
  ENV: t.struct
    production: t.maybe t.Boolean
    staging: t.maybe t.Boolean
    build: t.maybe t.Boolean
    hotModuleRloading: t.maybe t.Boolean
}, { name: 'Data' })

if typeof describe == 'function'
  describe 'Data', () =>
    it 'should match schema structure and types', () =>
      expect(() => validate(data, Data)).not.toThrow()
