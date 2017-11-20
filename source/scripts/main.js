// import 'babel-polyfill'
import './plugins/analytics/onerror'
import './polyfill'

import analytics from './plugins/analytics/listners'
import jump from './plugins/jump'

analytics()
jump()
