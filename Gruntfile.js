module.exports = function(grunt) {
  grunt.initConfig({
    buildcontrol: {
      options: {
        dir: 'dist',
        commit: true,
        push: true,
        message: 'Built %sourceName% from commit %sourceCommit% on branch %sourceBranch%.'
      },
      pages: {
        options: {
          remote: 'git@github.com:bamos/latex-templates.git',
          branch: 'gh-pages'
        }
      }
    },
    shell: {
      generate: {
        command: "python3 generate.py &> /dev/null"
      }
    }
  });
  grunt.loadNpmTasks('grunt-build-control');
  grunt.loadNpmTasks('grunt-shell');

  grunt.registerTask('generate', ['shell:generate']);
  grunt.registerTask('deploy', ['buildcontrol:pages']);
}
