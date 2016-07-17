registerComponent {
  selector: 'app'
  templateUrl: 'app/app.component.html'
#  template: '<h1> {{ title }} </h1>'
  styles: ['.bold { font-weight: bold; }']
  inputs: []
  outputs: []
  directives: []
  controller: class AppController
    constructor: ->
      console.info 'constructor'
      @title = 'Heroes application'
      @resetNewHero()
      @heroes = [
        { name: 'Superman', age: 33, desc: 'lkasd kljasndk jaksjbd kajsdb' }
        { name: 'Batman', age: 46, desc: ';dflgmk.,sdmlk snmd. sndvm, n' }
        { name: 'Seaman', age: 20, desc: 'lsfkd; lfskd;fjlrjlgehgkljsdflkjg sjkdflk;' }
      ]
      @classMap = [
        'bold': @selectedHero?.name is 'Superman'
      ]
      @selectHero @heroes[0]

    resetNewHero: ->
      @newHero =
        name: ''
        age: ''

    isNewHeroValid: ->
      @newHero.name and @newHero.age

    addHero: ->
      if @isNewHeroValid()
        @heroes.push @newHero
        @resetNewHero()

    selectHero: (hero) ->
      @selectedHero = hero

}
