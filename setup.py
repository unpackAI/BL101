from setuptools import setup

setup(name='bl101',
      version='1',
      description='Blockchain 101 Course',
      url='http://github.com/dirkkalmbach/bl101',
      author='Dirk',
      author_email='dirk.kalmbach@gmail.com',
      license='MIT',
      #package_dir={'bl101': 'src/bl101'},
      package_data={'bl101': ['contracts/*.sol','.env']},
      packages=['bl101'],
      
      zip_safe=False,
      install_requires=['web3', 'py-solc-x', 'eth_tester', 'python-dotenv', 'graphviz']
      #install_requires=['web3', 'py-solc-x', 'eth_tester', 'yfinance', 'plotly', 'numpy', 'pandas', 'requests==2.23']

      )



