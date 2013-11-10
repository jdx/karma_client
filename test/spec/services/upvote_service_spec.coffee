define ['angular', 'angular_mocks'], ->
  beforeEach module('app')

  describe "UpvoteService", ->
    upvoteService = null
    httpBackend = null
    beforeEach inject (_$upvoteService_, _$httpBackend_) ->
      upvoteService = _$upvoteService_
      httpBackend = _$httpBackend_

    beforeEach ->
      httpBackend.expectPOST(
        'http://c5-karma.herokuapp.com/upvote',
        { user: 'dickeyxxx' }
      ).respond {}

    it 'upvotes a user', ->
      upvoteService.upvote('dickeyxxx')
      httpBackend.flush()
