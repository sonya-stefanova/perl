#!/usr/bin/perl

while (1) {

print "How old are you?  Type in number of years, then press enter.\n";
chomp (my $age = <STDIN>);


print "How much do you weigh?  Enter weight in pounds, then press enter.\n";
chomp (my $weight = <STDIN>);
$weight = $weight/2.2;		# Calculate weight in kilograms

print "What is your height?  Enter height in feet on one line, then inches on the next line.\n";
print "For example, if you are 5 feet 8 inches, enter\n5\n8\n\n";


chomp (my $feet = <STDIN>);
chomp (my $inches = <STDIN>);
#print "You are $feet feet and $inches inches tall.\n";
my $height = (($feet * 12) + $inches) * 2.54;	# Calculate height in centimeters

print "Are you male or female?  Enter 'm' for male or 'f' for female.\n";
chomp (my $gender = <STDIN>);

print "Please look at the activity levels listed below.  Then enter the number that\n";
print "corresponds to the activity level you are closest to on a weekly basis.\n";
print "1) Sedentary		(little or no exercise, desk job)\n";
print "2) Lightly Active	(light exercise/sports 1-3 days/wk)\n";
print "3) Mod. Active		(moderate exercise/sports 3-5 days/wk)\n";
print "4) Very Active		(hard exercise/sports 6-7 days/wk)\n";
print "5) Extr. Active		(hard daily exercise/sports & physical job or)\n";
print "				 2 X day training, marathon, football camp, contest, etc.\n";

chomp (my $activityLevel = <STDIN>);
print "The activity level you chose is $activityLevel\n";

if ($activityLevel == 1) {
	 $activityFactor = 1.2;
} elsif ($activityLevel == 2) {
	$activityFactor = 1.375;
} elsif ($activityLevel == 3) {
	$activityFactor = 1.55;
} elsif ($activityLevel == 4) {
	$activityFactor = 1.725;
} elsif ($activityLevel == 5) {
	$activityFactor = 1.9;
} else {
	$activityFactor = 1.375;
}


if ($gender =~ /m/i) {
	print "You are a $age year old male that weighs $weight kilograms and is $height centimeters tall.\n";
	$bmr = 66 + (13.7*$weight)+(5*$height)-(6.8*$age);
} elsif ($gender =~ /f/i) {
	print "You are a $age female that weighs $weight kilograms and is $height centimeters tall.\n";
	$bmr = 655 + (9.6*$weight)+(1.8*$height)-(4.7*$age);
} else {
	print "Never heard of that gender!  Try again.  Enter a 'm' for male or an 'f' for female.\n";
	chomp ($gender = <STDIN>);
}

print "Your Basal Metabolic Rate (BMR) is $bmr\n";
my $maintenanceCalories = $bmr*$activityFactor;

print "Your estimated daily caloric intake to maintain your weight is $maintenanceCalories calories per day.\n";
print "To lose weight, drop your calories by 15-20%.\n";
print "Your calories with a 15 percent drop would be ", $maintenanceCalories - $maintenanceCalories*0.15, "\n";
print "Your calories with a 20 percent drop would be ", $maintenanceCalories - $maintenanceCalories*0.2, "\n";


print "\n\nWould you like to calculate calories again?  Enter 'y' for yes or 'n' to quit.\n";
chomp ($answer = <STDIN>);
if ($answer eq 'n') {
	exit;
} else {
	print "\n\n";
}
}
