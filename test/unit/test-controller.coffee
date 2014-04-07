describe 'Header bar', ->
  beforeEach module 'mw.angular-header-bar'

  describe 'controller', ->
    $rootScope = undefined
    $location = undefined
    headerController = undefined
    homepage = '/homepage'

    beforeEach inject ($injector) ->
      # Get hold of a scope (i.e. the root scope)
      $rootScope = $injector.get '$rootScope'
      $location = $injector.get '$location'
      $rootScope.homePage = homepage

      # The $controller service is used to create instances of controllers
      headerController = $injector.get('$controller') 'headerController', $scope: $rootScope

    it 'should exist', ->
      expect headerController
      .toBeDefined()

    it 'should update the scope when not on the homepage', ->
      $location.path '/sample-page'
      expect $rootScope.home()
      .toBeFalsy()

    it 'should update the scope when on the homepage', ->
      $location.path '/'
      expect $rootScope.home()
      .toBeTruthy()

      $location.path ''
      expect $rootScope.home()
      .toBeTruthy()

      $location.path homepage
      expect $rootScope.home()
      .toBeTruthy()
