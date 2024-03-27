@family = qw ("Sonya" "Plamen" "Mihaela");

unshift @family, "Teo";
unshift @family, qw(1, 2, 4);

print @family, "\n";
