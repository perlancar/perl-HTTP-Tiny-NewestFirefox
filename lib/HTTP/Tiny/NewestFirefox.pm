package HTTP::Tiny::NewestFirefox;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;
use Log::ger;

use HTTP::UserAgentStr::Util::ByNickname qw(newest_firefox);
use HTTP::Tiny::Patch::SetUserAgent (-agent => newest_firefox());

use parent 'HTTP::Tiny';

1;
# ABSTRACT: HTTP::Tiny + set User-Agent to newest Firefox

=head1 SYNOPSIS

 use HTTP::Tiny::NewestFirefox;

 my $res  = HTTP::Tiny->new->get("http://www.example.com/");


=head1 DESCRIPTION

A convenient bundling of L<HTTP::Tiny>, L<HTTP::Tiny::Patch::SetUserAgent>, and
L<HTTP::UserAgentStr::Util::ByNickname>.


=head1 TODO

Avoid changing User-Agent globally.


=head1 SEE ALSO

L<HTTP::Tiny>
