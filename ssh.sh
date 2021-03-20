#!/bin/bash
# Always check bash path: which bash
# Edit usernames if you company uses more than one for dif. networking nodes
# Default uses the usename your logged in with
# You will need to edit this file.. the usernames and the elif statements to match $p
# in this example $p is one of "(m)ike, (j)oe, (f)red, (s)am, (r)od, (c)huck, (d)efault"
u0="mike"
u1="joe"
u2="fred"
u3="sam"
u4="rod"
u5="chuck"
u6="chris"
echo "ssh to what IP address or hostname  ??"
read s
echo ""
echo "Select a username for this sesssion, just pick the letter in ()"  
echo ""
echo "(m)ike, (j)oe, (f)red, (s)am, (r)od, (c)huck, (d)efault"
read p
port="22"
if [ "$s" == "" ]; then
echo "Usage: ./ssh IP address"
elif [ "$p" == "m" ]; then
        sshpass -f ~/pass/pass_file ssh -o StrictHostKeyChecking=no $u0@"$s" -p $port
elif [ "$p" == "j" ]; then
        sshpass -f ~/pass/pass2_file ssh -o StrictHostKeyChecking=no $u1@"$s" -p $port
elif [ "$p" == "j" ]; then
        sshpass -f ~/pass/pass3_file ssh -o StrictHostKeyChecking=no $u2@"$s" -p $port
elif [ "$p" == "f" ]; then
        sshpass -f ~/pass/pass4_file ssh -o StrictHostKeyChecking=no $u3@"$s" -p $port
elif [ "$p" == "nl" ]; then
        sshpass -f ~/pass/pass5_file ssh -o StrictHostKeyChecking=no $u4@"$s" -p $port
elif [ "$p" == "s" ]; then
        sshpass -f ~/pass/pass6_file ssh -o StrictHostKeyChecking=no $u5@"$s" -p $port
elif [ "$p" == "r" ]; then
        ssh "$s"
elif [ "$p" != "h" ]; then
        echo "ERROR: Rerun and pick a login of: h, j, n"
elif [ "$p" != "j" ]; then
        echo "ERROR: Rerun and pick a login of: h, j, n "
elif [ "$p" != "n" ]; then
        echo "ERROR: Rerun and pick a login of: h, j, n"
elif [ "$p" != "nl" ]; then
        echo "ERROR: Rerun and pick a login of: h, j, n, a, nl"
elif [ "$p" != "a" ]; then
        echo "ERROR: Rerun and pick a login of: h, j, n, a, nl"
fi

