# NAME

mqtt2job - Subscribe to an MQTT topic and trigger job execution

# VERSION

version 0.02

# SYNOPSIS

    mqtt2job --mqtt_server mqtt.example.com --base_topic my/topic --job_dir /apps

# DESCRIPTION

Subscribes to the my/topic/job mqtt topic and upon receiving a 
correctly formatted json message will fork and run the requested 
job in a wrapper script providing it is present and executable in 
the job\_dir directory. 

This wrapper will generate two child mqtt messages under the base 
topic, at my/topic/status. Message one is sent when the job is 
initiated. The second is sent when the job has completed (or timed 
out). This second message will also include any output from the job 
amongst various other metadata (e.g. execution datetime, duration, 
timeout condition, etc.)

# NAME

App::mqtt2job - Subscribe to an MQTT topic and trigger job execution

# FOR THE LOVE OF ALL THAT IS SACRED, WHY?

This is part one of my "Cursed Solutions" series, URL to be added
later when I've uploaded it.

# COPYRIGHT

Copyright 2024 -- Chris Carline

# LICENSE

This software is licensed under the same terms as Perl.

# NO WARRANTY

This software is provided "as is" without any express or implied
warranty. Using it for any reason whatsoever is probably an 
extremely bad idea and it should only ever be considered if you 
understand the potential consequences. In no event shall the 
author be held liable for any damages arising from the use of 
this software. It is provided for demonstration purposes only.

# AUTHOR

Chris Carline <chris@carline.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2024 by Chris Carline.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
