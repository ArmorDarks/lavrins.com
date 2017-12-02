import { event } from './utils'

export default () => {
  document.addEventListener('click', (e) => {
    const $target = e.target

    const forEachTarget = ($elements, cb) => $elements.forEach(($element) => {
      if ($element.contains($target)) cb()
    })

    forEachTarget(document.querySelectorAll('.js-metrica-open-source'), () => event('Works', 'CLICK_OPEN_SOURCE'))
    forEachTarget(document.querySelectorAll('.js-metrica-gh-btn'), () => event('Social', 'CLICK_GH_BTN'))
    forEachTarget(document.querySelectorAll('.js-metrica-tw-btn'), () => event('Social', 'CLICK_TW_BTN'))
    forEachTarget(document.querySelectorAll('.js-metrica-in-btn'), () => event('Social', 'CLICK_IN_BTN'))
    forEachTarget(document.querySelectorAll('.js-metrica-fb-btn'), () => event('Social', 'CLICK_FB_BTN'))
    forEachTarget(document.querySelectorAll('.js-metrica-email'), () => event('Contact', 'CLICK_EMAIL'))
  })
}
