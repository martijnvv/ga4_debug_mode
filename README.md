# GA4 debug mode variable template

This variable template uses the builtin debug variable to detect if you are in GTM debug mode. If you are, the variable is set to TRUE, otherwise the variable is set to undefined.
We do this to ensure the variable is not set to the default FALSE, which doesn't work properly in GA4.

You can use this variable to have a no-code version of Debug Mode to add in GA4 as a custom parameter.
