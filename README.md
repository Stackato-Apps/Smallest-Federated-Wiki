Federated Wiki (via NPM)
========================

Wiki is a single-page application for browsing and editing content distributed throughout a federation of similar creative-commons licensed sites.  The canonical repo for Wiki is: 

  https://github.com/WardCunningham/wiki 

This repo branch does not host the source code, just:
 * a *package.json* file which directs Stackato to install the 'wiki' package via NPM 
 * a *stackato.yml* configuration file to set Stackato config, provision a persistent file system, and start the application with appropriate options
 
Deploying to Stackato
---------------------

1. Clone the repo to a convenient local directory
2. Target a Stackato API endpoint (e.g. https://api.stacka.to)
3. Push the application:

    $ stackato push -n fedwiki


License
-------

You may use the Wiki under either the [MIT License] [1] or the [GNU General Public License (GPL) Version 2] [2].

  [1]: https://github.com/WardCunningham/wiki/blob/master/mit-license.txt
  [2]: https://github.com/WardCunningham/wiki/blob/master/gpl-license.txt
