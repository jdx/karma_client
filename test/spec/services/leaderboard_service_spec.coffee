define ['angular', 'angular_mocks'], ->
  beforeEach module('app')

  describe "LeaderboardService", ->
    leaderboardService = null
    httpBackend = null
    beforeEach inject (_$leaderboardService_, _$httpBackend_) ->
      leaderboardService = _$leaderboardService_
      httpBackend = _$httpBackend_

    beforeEach ->
      httpBackend.expectGET('http://c5-karma.herokuapp.com/leaderboard').respond
        dickeyxxx: 40
        dmichaelavila: 30

    it 'gets the leaderboard data', (done) ->
      leaderboardService.get().success (res) ->
        expect(res.dickeyxxx).to.equal 40
        done()
      httpBackend.flush()
