module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json'),

    coffee:
      glob_to_multiple:
        expand: true
        options:
          bare: true
        src: ['**/*.coffee']
        dest: './'
        ext: '.js'

  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.registerTask 'default', ['coffee']