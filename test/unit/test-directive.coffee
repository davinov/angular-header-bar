describe 'Header bar', ->
  beforeEach module 'mw.angular-header-bar'

  describe 'directive', ->
    $rootScope = undefined
    $compile = undefined
    $element = undefined

    beforeEach inject ($injector) ->
      $rootScope = $injector.get '$rootScope'
      $compile = $injector.get '$compile'
      $element = $compile('<div header-bar><li>Element 1</li><li>Element 2</li></div>') $rootScope
      $rootScope.$digest()

    it 'should exist', ->
      expect $element
      .toBeDefined()

    it 'should contain a nav element', ->
      expect $element.html()
      .toContain '<nav'

    it 'should contain a title', ->
      expect $element.html()
      .toContain 'class="title"'

    it 'should contain the elements', ->
      expect $element.find('li').length
      .toEqual 2

    it 'should display the back button when back is enabled', ->
      $element = $compile('<div header-bar back="true"></div>') $rootScope
      $rootScope.$digest()
      expect $element.find('.back').length
      .toEqual 1

    it 'should not display the back button when back is not enabled', ->
      expect $element.find('.back').length
      .toEqual 0

    it 'should not display beta mention button when beta is not enabled', ->
      expect $element.html()
        .not.toContain 'BETA'

    it 'should display beta mention button when beta is enabled', ->
      $element = $compile('<div header-bar beta="true"></div>') $rootScope
      $rootScope.$digest()
      expect $element.html()
        .toContain 'BETA'

    it 'should not display a logo when logo is not declared', ->
      expect $element.find('.logo').length
      .toEqual 0

    it 'should display a logo when logo is declared', ->
      logoUrl = 'img/logo.jpg'
      $element = $compile('<div header-bar logo=\'"' + logoUrl + '"\'></div>') $rootScope
      $rootScope.$digest()

      expect $element.find('.logo').length
        .toEqual 1

      expect $element.find('.logo').attr('src')
        .toEqual logoUrl
