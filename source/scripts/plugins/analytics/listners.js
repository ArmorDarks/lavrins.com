import { event } from './utils'

export default () => {
  document.addEventListener('click', (e) => {
    const $target = e.target

    const forEachTarget = ($elements, cb) => $elements.forEach(($element) => {
      if ($element.contains($target)) cb()
    })

    forEachTarget(document.querySelectorAll('.js-metrica-open-source'), () => event('Works', 'CLICK_OPEN_SOURCE'))
    forEachTarget(document.querySelectorAll('.js-metrica-social-btn'), () => event('Social', 'CLICK_SOCIAL_BTN'))
    forEachTarget(document.querySelectorAll('.js-metrica-email'), () => event('Contact', 'CLICK_EMAIL'))
  })
}
