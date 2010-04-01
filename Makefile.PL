
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'ng::daily::wallpaper',
                       'DISTNAME' => 'ng-daily-wallpaper',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Michael Schout <mschout@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0'
                                           },
                       'ABSTRACT' => 'use National Geographic daily photo of the day as desktop background',
                       'EXE_FILES' => [
                                        'bin/ng-daily-wallpaper'
                                      ],
                       'VERSION' => '0.02',
                       'PREREQ_PM' => {
                                        'Getopt::Long' => '0',
                                        'POSIX' => '0',
                                        'WWW::Mechanize' => '0',
                                        'Imager' => '0',
                                        'autodie' => '0',
                                        'File::Path' => '0',
                                        'Pod::Usage::CommandLine' => '0',
                                        'X11::Resolution' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



