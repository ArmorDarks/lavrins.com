import { event } from './utils'

export default () => {
  document.addEventListener('click', (e) => {
    const $target = e.target

    const forEachTarget = ($elements, cb) => $elements.forEach(($element) => {
      if ($element.contains($target)) cb()
    })

    forEachTarget(document.querySelectorAll('.js-metrica-open-source'), () => event('Works', 'click-open-source'))
    forEachTarget(document.querySelectorAll('.js-metrica-social-btn'), () => event('Misc', 'click-social-btn'))
    forEachTarget(document.querySelectorAll('.js-metrica-email'), () => event('Misc', 'click-email'))
  })
}
