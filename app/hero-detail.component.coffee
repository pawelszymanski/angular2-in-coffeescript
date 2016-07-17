registerComponent {
  selector: 'hero-detail'
  templateUrl: 'app/hero-detail.component.html'
  styles: []
  inputs: ['hero']
  outputs: []
  directives: []
  controller: class HeroDetailController
    constructor: ->
      console.info 'hero-detail'
      @title = 'My Angular 2 app'
      @text = ''
      @heroes = [
        { name: 'Superman', age: 33 }
        { name: 'Batman', age: 46 }
        { name: 'Seaman', age: 20 }
      ]

    test: ->
      console.info 'test'

}
