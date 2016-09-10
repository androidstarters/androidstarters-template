'use strict';

const path = require('path');
const rimraf = require('rimraf');
const mv = require('mv');
const mkdirp = require('mkdirp');
const clone = require('nodegit').Clone;
const replace = require('replace');
const ncp = require('ncp').ncp;
const fs = require('fs');
const Finder = require('fs-finder');

// Clone a given repository into the `./tmp` folder.

rimraf.sync(path.join(__dirname, '/root'));
rimraf.sync(path.join(__dirname, '/tmp'));
mkdirp('./root');

clone('https://github.com/ravidsrk/android-mvp-starter', './tmp')
  .then(function (repo) {
    checkOutAndCopy(repo, 'master');
  })
  .catch(function (err) {
    console.log(err);
  });

function checkOutAndCopy(repo, name) {
  repo.getBranch('refs/remotes/origin/' + name)
    .then(function (reference) {
      console.log('Checking out branch ' + name);
      return repo.checkoutRef(reference);
    })
    .then(function () {
      replace({
        regex: 'in.mvpstarter.sample',
        replacement: '${packageName}',
        paths: ['./tmp/app'],
        recursive: true,
        silent: true
      });

      mv('./tmp/.gitignore', './tmp/gitignore', function (err) {
        if (err) {
          console.log(err);
        }
        console.log('Renamed root folder .gitignore');
      });

      mv('./tmp/app/.gitignore', './tmp/app/gitignore', function (err) {
        if (err) {
          console.log(err);
        }
        console.log('Renamed app folder .gitignore');
      });

      console.log('Copying files to ./root');
      ncp.limit = 1600;
      ncp('./tmp', './root', function (err) {
        if (err) {
          return console.error(err);
        }
        console.log('Renaming files to add .ftl extension!');
        renameFileToFtl();
        console.log('Copying complete!');
        rimraf.sync(path.join(__dirname, '/tmp'));
      });
    });
}

function renameFileToFtl() {
  Finder.from("./root").findFiles('*.java', function(files) {
        for (var i = 0; i < files.length; i++) {
          mv(files[i], files[i]+'.ftl', function (err) {
            if (err) {
              return console.log(err);
            }
            console.log('Renamed '+ files[i] + ' file to ' + files[i]+'.ftl');
          });
        };
      });

      Finder.from("./root").findFiles('*.xml', function(files) {
        for (var i = 0; i < files.length; i++) {
          mv(files[i], files[i]+'.ftl', function (err) {
            if (err) {
              return console.log(err);
            }
            console.log('Renamed '+ files[i] + ' file to ' + files[i]+'.ftl');
          });
        };
      });
}
