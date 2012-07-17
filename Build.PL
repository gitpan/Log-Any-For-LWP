
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::More" => "0.96"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Add logging to LWP",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Log-Any-For-LWP",
  "dist_version" => "0.01",
  "license" => "perl",
  "module_name" => "Log::Any::For::LWP",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "LWP::UserAgent::patch::log_response" => 0,
    "Net::HTTP::Methods::patch::log_request" => 0,
    "perl" => "5.010000"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
