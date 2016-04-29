;(function () {
  "use strict"

  Vue.component("to-do-list",{
    template: "#check-off-template",

    data: function () {
      return {
        isVisible: true
      }
    },

  methods: {

    makeGoAway: function () {
      var self = this
      self.isVisible = !self.isVisible
      }
     }
  })

})();
