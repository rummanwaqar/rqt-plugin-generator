from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

# fetch values from package.xml
setup_args = generate_distutils_setup(
    packages=['rqt_(>>>APP-NAME<<<)'],
    package_dir={'': 'src'},
    scripts=['scripts/rqt_(>>>APP-NAME<<<)']
)

setup(**setup_args)
