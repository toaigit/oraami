# oraami   
Create an EC2 instance with the following characteristics:
-    EC2 with no need of autoscale
-    Use the OEL7 with Minsec built by OS team.
-    User data will perform the following:
-        Install Required Oracle RDBMS packages
-        Update the kernal Parameters.
-        Create oracle unix account
-        Run the oracle install script to build an oracle home codetree
-    Basic flows:
-       mount the share filesystem where it have a script to 
-       install the required packages and kernel parameter
-       and script to install oracle codetree.
-    Create image to be used later to build a database.
-    NOTE: oraami.tar is userdata scripts on NFS file.
