package Lasagna;

use v5.40;
use Exporter qw(import);
our @EXPORT_OK = qw(
                remaining_minutes_in_oven
                preparation_time_in_minutes
                total_time_in_minutes
                total_time_in_minutes
                        );
our $ExpectedMinutesInOven = 40;

sub remaining_minutes_in_oven ($actual_minutes_in_oven) {
      return  $ExpectedMinutesInOven - $actual_minutes_in_oven;
}

sub preparation_time_in_minutes ($number_of_layers) {
        return $number_of_layers * 2;
}

sub total_time_in_minutes ( $number_of_layers, $actual_minutes_in_oven ) {
        return preparation_time_in_minutes($number_of_layers) + $actual_minutes_in_oven;
}

sub oven_alarm () {
        return "Ding!";
}

1;
