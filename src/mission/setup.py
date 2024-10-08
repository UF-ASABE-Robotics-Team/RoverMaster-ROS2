import warnings

warnings.filterwarnings("ignore", category=UserWarning)

from setuptools import find_packages, setup


package_name = "mission"

setup(
    name=package_name,
    version="0.0.0",
    packages=find_packages(exclude=["test"]),
    data_files=[
        ("share/ament_index/resource_index/packages", ["resource/" + package_name]),
        ("share/" + package_name, ["package.xml"]),
    ],
    install_requires=["setuptools"],
    zip_safe=True,
    maintainer="yuxuan",
    maintainer_email="zyx@z-yx.cc",
    description="TODO: Package description",
    license="TODO: License declaration",
    tests_require=["pytest"],
    entry_points={
        "console_scripts": [
            "main = mission.main:main",
        ],
    },
)
