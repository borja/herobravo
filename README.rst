Herosheet Project
===================

QA Dashboard
------------
+--------------+-----------------+-------------------+----------------------+
| **Deploy**   | |Heroku Status| | |Gemnasium|       |                      |
+--------------+-----------------+-------------------+----------------------+
| **Build**    | |Travis Status| | |CircleCi Status| | |Snap CI|            |
+--------------+-----------------+-------------------+----------------------+
| **Grades**   | |Code Climate|  | |Codacy Badge|    |                      |
+--------------+-----------------+-------------------+----------------------+
| **Coverage** | |Test Coverage| | |Codacy Coverage| | |Coveralls|          |
+--------------+-----------------+-------------------+----------------------+
| **Docs**     | |Inline docs|   | |Documentation|   | |CII Best Practices| |
+--------------+-----------------+-------------------+----------------------+
| **DIY**      | |Heroku Deploy| | |DockerHub|       |                      |
+--------------+-----------------+-------------------+----------------------+

.. |Travis Status| image:: https://travis-ci.org/borja/herobravo.svg?branch=master
   :target: https://travis-ci.org/borja/herobravo
.. |Snap CI| image:: https://snap-ci.com/borja/herobravo/branch/master/build_image
   :target: https://snap-ci.com/borja/herobravo/branch/master
.. |Gemnasium| image:: https://gemnasium.com/Borja/herobravo.svg
   :target: https://gemnasium.com/Borja/herobravo
.. |Heroku Status| image:: http://heroku-badge.herokuapp.com/?app=herosheet&style=flat&svg=1
   :target: http://herosheet.herokuapp.com/
.. |Code Climate| image:: https://codeclimate.com/github/borja/herobravo/badges/gpa.svg
   :target: https://codeclimate.com/github/borja/herobravo
.. |Codacy Badge| image:: https://api.codacy.com/project/badge/Grade/f2559f1e733d4a4c854fdcc84804c047
   :target: https://www.codacy.com/app/borja/herobravo?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=borja/herobravo&amp;utm_campaign=Badge_Grade
.. |Test Coverage| image:: https://codeclimate.com/github/borja/herobravo/badges/coverage.svg
   :target: https://codeclimate.com/github/borja/herobravo/coverage
.. |Codacy Coverage| image:: https://api.codacy.com/project/badge/Coverage/f2559f1e733d4a4c854fdcc84804c047
   :target: https://www.codacy.com/app/borja/herobravo?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=borja/herobravo&amp;utm_campaign=Badge_Coverage
.. |Inline docs| image:: http://inch-ci.org/github/borja/herobravo.svg
   :target: http://inch-ci.org/github/borja/herobravo
.. |Documentation| image:: https://readthedocs.org/projects/herobravo/badge/?version=latest
   :target: http://herobravo.readthedocs.io/es/latest/?badge=latest
.. |CII Best Practices| image:: https://bestpractices.coreinfrastructure.org/projects/224/badge
   :target: https://bestpractices.coreinfrastructure.org/projects/224
.. |CircleCi Status| image:: https://circleci.com/gh/borja/herobravo.svg?style=shield
   :target: https://circleci.com/gh/borja/herobravo
.. |DockerHub| image:: https://img.shields.io/badge/%E2%86%91_DockerHub-borjamartin/herobravo-blue.svg
   :target: https://hub.docker.com/r/borjamartin/herobravo/
.. |Heroku Deploy| image:: https://img.shields.io/badge/%E2%86%91_Deploy_to-Heroku-7056bf.svg
   :target: https://heroku.com/deploy
.. |Coveralls| image:: https://coveralls.io/repos/github/borja/herobravo/badge.svg?branch=master
   :target: https://coveralls.io/github/borja/herobravo?branch=master

Non support building platforms
------------------------------
+----------+------------+-----------------------------+
| Platform | Badge      | Issue                       |
+==========+============+=============================+ 
| Drone    | |Drone|    | *Ruby >v.2.0 not supported* |
+----------+------------+-----------------------------+
| Appveyor | |Appveyor| | TBD                         |
+----------+------------+-----------------------------+
| CodeShip | |CodeShip| | Work on progress            |
+----------+------------+-----------------------------+

.. |Drone| image:: https://drone.io/github.com/borja/herobravo/status.png
   :target: https://drone.io/github.com/borja/herobravo/latest
.. |Appveyor| image:: https://ci.appveyor.com/api/projects/status/c9ao5apb9qlaby84?svg=true
   :target: https://ci.appveyor.com/project/borja/herobravo/branch/master
.. |CodeShip| image:: https://codeship.com/projects/52ab60f0-1e7d-0134-4772-3632048523f1/status?branch=master
   :target: https://codeship.com/projects/160114

Running this application locally
----------------------------------
To run this application locally, run:

.. code:: console

    bundle install
    bundle exec ruby -S rackup -w config.ru

License
-------
This code is dedicated to the public domain to the maximum extent
permitted by applicable law, pursuant to CC0
http://creativecommons.org/publicdomain/zero/1.0/
