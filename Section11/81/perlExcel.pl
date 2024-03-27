#!/usr/bin/perl

use Spreadsheet::WriteExcel;

my $workbook = Spreadsheet::WriteExcel->new('perl.xls');

$worksheet = $workbook->add_worksheet();

$format = $workbook->add_format();
$format->set_bold();
$format->set_color('red');
$format->set_align('center');

$col = $row = 0;
$worksheet->write($row, $col, 'Hi Excel!', $format);
$worksheet->write(1, $col, 'Hi Excel!');

$worksheet->write('A3', 1.2345);
$worksheet->write('A4', '=SIN(PI()/4)');
