%module sodium
%include <std_string.i>

%{
#include "logwriter.h"
#include "initParser.h"
#include "timeCounter.h"
%}

%include "logwriter.h"
%include "initParser.h"
%include "timeCounter.h"