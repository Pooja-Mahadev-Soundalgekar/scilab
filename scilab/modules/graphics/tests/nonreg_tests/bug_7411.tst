// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//// This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- TEST WITH GRAPHIC -->
//
// <-- Non-regression test for bug 7411 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=7411
//
// <-- Short Description -->
// clf() forgets to turn off the datatip mode

clf();
plot2d();
datatipToggle();
clf();
h=gcf();
assert_checkequal(h.event_handler_enable, "off");
assert_checkequal(h.info_message, "");
close;
