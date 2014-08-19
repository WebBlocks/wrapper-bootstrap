block 'bootstrap', :path => 'bower_components/bootstrap-sass-twbs/assets' do |bootstrap|

  block 'variables' do
    scss_file 'stylesheets/bootstrap/_variables.scss'
  end

  block 'base' do
    dependency bootstrap.route 'variables'
    scss_file 'stylesheets/bootstrap/_mixins.scss'
    scss_file 'stylesheets/bootstrap/_normalize.scss'
    scss_file 'stylesheets/bootstrap/_print.scss'
    scss_file 'stylesheets/bootstrap/_scaffolding.scss'
  end

  [
    'type',
    'code',
    'grid',
    'tables',
    'forms',
    'buttons',
    'component-animations',
    'glyphicons',
    'dropdowns',
    'button-groups',
    'input-groups',
    'navs',
    'navbar',
    'breadcrumbs',
    'pagination',
    'pager',
    'labels',
    'badges',
    'jumbotron',
    'thumbnails',
    'alerts',
    'progress-bars',
    'media',
    'list-group',
    'panels',
    'wells',
    'close',
    'utilities',
    'responsive-utilities'
  ].each do |name|
    block name do
      dependency bootstrap.route 'base'
      scss_file "stylesheets/bootstrap/_#{name}.scss"
    end
  end

  block 'navbar' do
    dependency bootstrap.route 'navs'
    dependency bootstrap.route 'forms'
  end

  block 'js' do |js|

    dependency bootstrap.route 'component-animations'

    block 'affix' do
      js_file 'javascripts/bootstrap/affix.js'
    end

    block 'alert' do
      js_file 'javascripts/bootstrap/alert.js'
    end

    block 'button' do
      js_file 'javascripts/bootstrap/button.js'
    end

    block 'carousel' do
      js_file 'javascripts/bootstrap/carousel.js'
      scss_file 'stylesheets/bootstrap/_carousel.scss'
    end

    block 'collapse' do
      dependency js.route 'transition'
      js_file 'javascripts/bootstrap/collapse.js'
    end

    block 'dropdown' do
      dependency bootstrap.route 'dropdowns'
      js_file 'javascripts/bootstrap/dropdown.js'
    end

    block 'modal' do
      js_file 'javascripts/bootstrap/modal.js'
      scss_file 'stylesheets/bootstrap/_modals.scss'
    end

    block 'popover' do
      dependency js.route 'tooltip'
      js_file 'javascripts/bootstrap/popover.js'
      scss_file 'stylesheets/bootstrap/_popovers.scss'
    end

    block 'scrollspy' do
      js_file 'javascripts/bootstrap/scrollspy.js'
    end

    block 'tab' do
      js_file 'javascripts/bootstrap/tab.js'
    end

    block 'tooltip' do
      js_file 'javascripts/bootstrap/tooltip.js'
      scss_file 'stylesheets/bootstrap/_tooltip.scss'
    end

    block 'transition' do
      js_file 'javascripts/bootstrap/transition.js'
    end

  end

end