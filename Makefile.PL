use v5.10;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install;

name 'HTTP-Status-Constants';
all_from 'lib/HTTP/Status/Const.pm';
license 'artistic_2';

perl_version 5.010;

tests_recursive('t');

resources(
    homepage   => 'http://rrwo.tumblr.com',
    license    => 'http://www.perlfoundation.org/artistic_license_2_0',
    repository => 'git://github.com/robrwo/HTTP-Status-Constants.git',
    bugtracker => 'https://github.com/robrwo/HTTP-Status-Constants/issues',
);

configure_requires();

build_requires();

requires(
    'Const::Exporter' => 0,
    'Exporter'        => 0,
    'HTTP::Status'    => 0,
    'Package::Stash'  => 0,
    'version'         => 0.77,
);

test_requires(
    'Test::More' => 0,    #
);

install_as_cpan;
auto_install;
WriteAll;
