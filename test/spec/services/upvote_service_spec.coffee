define ['angular', 'angular_mocks'], ->
  beforeEach module('app')

  describe "UpvoteService", ->
    upvoteService = null
    httpBackend = null
    beforeEach inject (_$upvoteService_, _$httpBackend_) ->
      upvoteService = _$upvoteService_
      httpBackend = _$httpBackend_

    describe 'getting upvotes', ->
      beforeEach ->
        httpBackend.expectGET('http://c5-karma.herokuapp.com/upvotes').respond [
          { user: 'dickeyxxx', comment: 'being awesome' },
          { user: 'michaelavila', comment: 'being awesome' },
        ]

      it 'gets the upvotes', (done) ->
        upvoteService.getUpvotes().success (res) ->
          expect(res[0].user).to.eq('dickeyxxx')
          done()
        httpBackend.flush()

    describe 'upvoting', ->
      beforeEach ->
        httpBackend.expectPOST(
          'http://c5-karma.herokuapp.com/upvote',
          { user: 'dickeyxxx', comments: 'he rocks' }
        ).respond {}

      it 'upvotes a user', ->
        upvoteService.upvote('dickeyxxx', 'he rocks')
        httpBackend.flush()
