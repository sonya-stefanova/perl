#!/usr/bin/perl

# Goal: The program gets the lists of courses from the files.txt.
#
# Params:
#
#
# Returns:
#

#The subroutine adds all existing courses from the txt file into a list
sub create_list_of_courses {
    
    @list_of_completed_courses = (); #create a list where to store all courses from a txt file
    
    $filename = "courses.txt";
    
    open(FILE, "<", $filename) or die "Cannot open $filename: $!"; # Check if file can open at all
    
    while (<FILE>) { 
        chomp; # Remove newline character from $_ (default input)
        push(@list_of_completed_courses, $_); # Push the modified line to the list
    }
    
    close(FILE);
}

#the subroutine prompt the user to select amongst a predifined list of options:
sub get_user_option {
    #Build the options menu:
    print("\n1. Search for a new course\n");
    print("\n2. Add new course\n");
    print("\n3. Show all courses\n");
    print("\n4. Quit the program\n");

    #Option selected from the course:
    print("\nSelect your numerical choice: \n\n");
    chomp($numerical_option = <STDIN>);

    #returns the selected options:
    return $numerical_option;
}

# The subroutine retrieves all saved courses
sub get_all_courses {
    print("\n List of finished courses: \n\n");
    my $total = 0;
    my $course_counter = 0; # Counter for courses
    
    foreach my $name_of_course (@list_of_completed_courses) {
        $course_counter++;
        $total++;
        print("$course_counter. $name_of_course\n");
    }
    print "\nTotal: $total\n";
}


#The subroutine adds a new course entered by the user.
sub add_new_course {
    print("\nPlease, enter the name of a new course:...");
    chomp ($new_course_entry = <STDIN>);
    
    # Check if the course already exists in the list
    if (grep { lc($_) eq lc($new_course_entry) } @my_list) {
        print "The course '$new_course_entry' already exists in the list of courses.\n";
    } else {
        $exit_status = push(@my_list, $new_course_entry);
        if ($exit_status) {
            print "New course added.\n";
        } else {
            print "Something went wrong when trying to add a new course.\n";
        }
    }
}

# The subroutine searches for an input course
sub search_course {
    print "\nEnter a name of a course:...\n\n";
    chomp ($course_name_entry = <STDIN>);

    my $found = 0;  # Flag to track if the course is found
    foreach $existing_course_name (@list_of_completed_courses) {
        if (lc($course_name_entry) eq lc($existing_course_name)) {
            print "\n\n-->The course name is found in the records\n";
            $found = 1;  # Set the flag to indicate course found
            last;        # Exit the loop once found
        }
    }

    # Print the message if the course is not found
    unless ($found) {
        print "\nThe course is not found\n\n";
    }
}

#***********************************************
# Start of the application:
# ***********************************************

print "\n\n\t\tWelcome to Sonya's Courses Database\n";
print "\t\tDesigned by Sonya Haralambieva\n";
create_list_of_courses();
$selected_option = get_user_option();

while ($selected_option != 4) {
    if ($selected_option == 1) {
        search_course();
    } elsif ($selected_option == 2) {
        add_new_course();
    } elsif ($selected_option == 3) {
        get_all_courses();
    } else {
        print "Please select a valid option!\n";
    }
    
    $selected_option = &get_user_option();
}

# Save the data to the text file
$filename = "courses.txt";
open(FILE, ">", $filename);
foreach $line (@list_of_completed_courses) {
    chomp($line);
    print(FILE "$line\n");
}
close(FILE);
# End of saving the data to the txt file

print "Exiting \n\n";
exit; # Exits the program
