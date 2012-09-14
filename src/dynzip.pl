#!/usr/bin/perl

use IO::Compress::Bzip2 qw(bzip2 $Bzip2Error);
use IO::Compress::Deflate qw(deflate $DeflateError);
use IO::Compress::Lzop qw(lzop $LzopError) ;
use IO::Compress::Gzip qw(gzip $GzipError) ;

my $foo = "x"x100000;
my $bar;

# BZIP
# my $input = \$foo;
# my $output = \$bar;
# my $status = bzip2 $input => $output;

# Deflate
# my $input = \$foo;
# my $output = \$bar;
# my $status = deflate $input => $output;

# Lzop
my $status = lzop $input => $output [,OPTS] 

# 
use IO::Compress::Gzip qw(gzip $GzipError) ;
my $status = gzip $input => $output [,OPTS] 

use IO::Compress::Lzma qw(lzma $LzmaError) ;
my $status = lzma $input => $output [,OPTS] 

use IO::Compress::Xz qw(xz $XzError) ;

my $status = xz $input => $output [,OPTS] 
    or die "xz failed: $XzError\n";

use IO::Compress::Lzf qw(lzf $LzfError) ;

my $status = lzf $input => $output [,OPTS] 
  or die "lzf failed: $LzfError\n";
