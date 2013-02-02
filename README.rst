djfactory is what makes `djiashoujia`_ fun. You import it within a Django
`manage.py`_ file and it sets up the djiashoujia environment and configures some
settings.

Install
=======

::

    pip install djfactory

What is it?
===========

djfactory is the core of `djiashoujia`_, My Django starter kit, based on Mozilla's Playdoh.
djfactory is *not* a collection of standalone apps.

Check out the `djiashoujia docs`_ for a complete user guide.

djfactory is also the name of a script that automates the installation of a
new Djiashoujia app.  Check out ``djfactory --help`` for more info.

.. _`djiashoujia`: https://github.com/hfeeki/djiashoujia
.. _`djiashoujia docs`: http://playdoh.readthedocs.org/
.. _`manage.py`: https://github.com/mozilla/playdoh/blob/master/manage.py

Hacking
=======

To develop new features for djiashoujia core, you'll want to hack on djfactory!
To run the test suite, first install `tox`_ then cd into the root dir
and type the ``tox`` command.  The ``tox.ini`` will handle the rest.

.. _`tox`: http://tox.readthedocs.org/

.. note::
    if you supply a different djiaoshoujia remote URL or a different
    branch or something, remember to delete the ``.jiaoshoujia/`` directory
    between tests for a clean slate.

To try out cutting edge djfactory features in a real playdoh app, you can use
the develop command to install a link to the files within your virtualenv::

  workon the-playdoh-clone
  pushd ~/your/path/to/djfactory
  python setup.py develop
  popd

Test Suite Environment
======================

Here are some environment variables that are acknowledged by the test suite:

**FF_DB_USER**
  MySQL db user to run manage.py test. Defaults to ``root``.

**FF_DB_PASS**
  MySQL user password for manage.py test. Defaults to an empty string.

**FF_DB_NAME**
  MySQL db name for manage.py test. Defaults to ``_djfactory_test``.

**FF_PLAYDOH_REMOTE**
  Git qualified URL for playdoh repo. Defaults to ``git://github.com/hfeeki/djiaoshoujia.git``.

**FF_PLAYDOH_BRANCH**
  Default branch to pull and update. Defaults to ``master``.
