
#!/bin/bash

curl -i -s -k  -X $'GET' \
    -H $'Host: www.kkcrosstalk.com' -H $'Upgrade-Insecure-Requests: 1' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    $'http://www.kkcrosstalk.com/XTLOGIN.php' > /dev/null 2>&1

curl -i -s -k  -X $'POST' \
    -H $'Host: www.kkcrosstalk.com' -H $'Content-Length: 57' -H $'Cache-Control: max-age=0' -H $'Origin: http://www.kkcrosstalk.com' -H $'Upgrade-Insecure-Requests: 1' -H $'Content-Type: application/x-www-form-urlencoded' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' -H $'Referer: http://www.kkcrosstalk.com/XTLOGIN.php' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    --data-binary $'Username=Username&Password=Password&Submit=Login' \
    $'http://www.kkcrosstalk.com/CHECKLOGIN.php' > /dev/null 2>&1

curl -i -s -k  -X $'GET' \
    -H $'Host: www.kkcrosstalk.com' -H $'Cache-Control: max-age=0' -H $'Upgrade-Insecure-Requests: 1' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' -H $'Referer: http://www.kkcrosstalk.com/XTLOGIN.php' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    $'http://www.kkcrosstalk.com/XTSIGNLOCATIONS.php' > /dev/null 2>&1

curl -i -s -k  -X $'GET' \
    -H $'Host: www.kkcrosstalk.com' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Content-Type: application/x-www-form-urlencoded' -H $'Accept: */*' -H $'Referer: http://www.kkcrosstalk.com/XTSIGNLOCATIONS.php' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    $'http://www.kkcrosstalk.com/LoadIP.php' > /dev/null 2>&1

curl -i -s -k  -X $'GET' \
    -H $'Host: www.kkcrosstalk.com' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Content-Type: application/x-www-form-urlencoded' -H $'Accept: */*' -H $'Referer: http://www.kkcrosstalk.com/XTSIGNLOCATIONS.php' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    $'http://www.kkcrosstalk.com/LoadPRO.php' > /dev/null 2>&1

curl -i -s -k  -X $'GET' \
    -H $'Host: www.kkcrosstalk.com' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Content-Type: application/x-www-form-urlencoded' -H $'Accept: */*' -H $'Referer: http://www.kkcrosstalk.com/XTSIGNLOCATIONS.php' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    $'http://www.kkcrosstalk.com/LoadContactPRO.php' > /dev/null 2>&1

curl -i -s -k  -X $'GET' \
    -H $'Host: www.kkcrosstalk.com' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Content-Type: application/x-www-form-urlencoded' -H $'Accept: */*' -H $'Referer: http://www.kkcrosstalk.com/XTSIGNLOCATIONS.php' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    $'http://www.kkcrosstalk.com/LoadNavLOC.php' > /dev/null 2>&1

curl -s -k  -X $'GET' \
    -H $'Host: www.kkcrosstalk.com' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Content-Type: application/x-www-form-urlencoded' -H $'Accept: */*' -H $'Referer: http://www.kkcrosstalk.com/XTSIGNLOCATIONS.php' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    $'http://www.kkcrosstalk.com/XTClientSock.php?Location=Your_Unit&Cmd=XTGGSTATUS%3E&Timeout=20' | sed 's/\r//g;s/?/\n/g;s/&/\n/g;s/=/":"/g;s/>//g' | sed -e '1d;/^$/d;14s/..$//g;15s/..$//g;s/.*/"&"/' | sed -e ':a;N;$!ba;s/\n/,/g;s/^/{/;$a}'

curl -i -s -k  -X $'GET' \
    -H $'Host: www.kkcrosstalk.com' -H $'Upgrade-Insecure-Requests: 1' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' -H $'Referer: http://www.kkcrosstalk.com/XTSIGNLOCATIONS.php' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    $'http://www.kkcrosstalk.com/XTLOGOUT.php' > /dev/null 2>&1

curl -i -s -k  -X $'GET' \
    -H $'Host: www.kkcrosstalk.com' -H $'Upgrade-Insecure-Requests: 1' -H $'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3' -H $'Referer: http://www.kkcrosstalk.com/XTSIGNLOCATIONS.php' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: PHPSESSID=COOKIE' -H $'Connection: close' \
    -b $'PHPSESSID=COOKIE' \
    $'http://www.kkcrosstalk.com/XTLOGIN.php' > /dev/null 2>&1
    
#loruq0bbfmgauogrq9fl69c305
