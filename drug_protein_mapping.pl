#!/usr/bin/perl -w

my $tsv_filename = "dtc_filtered.tsv";
my $template_filename = "round_1_template.csv"

open( $fh1, '<', $tsv_filename ) || die "Cannot open file $input_filename : $! \n";

open( $fh2, '<', $template_filename ) || die "Cannot open file $output_filename : $! \n";

my @tsv_lines = <$fh1>;
my @template_lines = <$fh2>;

my @tsv_words;
my @template_words;




foreach my $tsv_line ( @tsv_lines ) {
    @tsv_words = split( /\s+/, $tsv_line );
    my $tsv_len = scalar( @tsv_words );
    print "length of tsv words = $tsv_len \n";
}

foreach my $tmp_line ( @template_lines ) {
    @tmpl_words = split( /\s+/, $tmp_line );
    my $tmp_len = scalar( @tmpl_words );
    print "length of tmpl words = $tmp_len \n";
}


