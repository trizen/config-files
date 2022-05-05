#!/usr/bin/perl

use 5.014;
use strict;
use warnings;
use Proc::ProcessTable;

while (1) {

    my $table = Proc::ProcessTable->new;
    for my $process (@{$table->table}) {

        # skip root processes
        next if $process->uid == 0 or $process->gid == 0;

        # skip anything other than Passenger application processes
        #next unless $process->fname eq 'ruby' and $process->cmndline =~ /\bRails\b/;

        # skip any using less than `x` GiB
        next if $process->rss < 4_073_741_824;

        # get the command line
        (my $cmd = $process->cmndline) =~ s/\s+\z//;

        # skip if not perl
        next if $cmd !~ /\b(?:perl|sidef|brave)\b/;

        # document before killing
        print STDERR "Killing process: pid=", $process->pid, " uid=", $process->uid, " rss=", $process->rss, " fname=",
          $process->fname, " cmndline=", $cmd, "\n";

        # try first to terminate process politely
        kill 15, $process->pid;

        # wait a little, then kill ruthlessly if it's still around
        sleep 3;
        kill 9, $process->pid;
    }

    sleep 3;
}
