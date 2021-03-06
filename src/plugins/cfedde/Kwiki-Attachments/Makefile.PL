use 5.006001;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Kwiki::Attachments',
    VERSION_FROM      => 'lib/Kwiki/Attachments.pm', # finds $VERSION
    PREREQ_PM         => { Kwiki => 0.37 }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Kwiki/Attachments.pm', # retrieve abstract from module
       AUTHOR         => 'Sue Spence <sue_cpan@pennine.com>') : ()),
);
