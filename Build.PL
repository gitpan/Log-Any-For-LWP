
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Add logging to LWP",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Log-Any-For-LWP",
  "dist_version" => "0.05",
  "license" => "perl",
  "module_name" => "Log::Any::For::LWP",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "LWP::UserAgent::Patch::LogRequestContent" => 0,
    "LWP::UserAgent::Patch::LogResponse" => "0.08",
    "Log::Any" => 0,
    "Module::Patch" => "0.17",
    "Net::HTTP::Methods::Patch::LogRequest" => 0,
    "perl" => "5.010001"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
