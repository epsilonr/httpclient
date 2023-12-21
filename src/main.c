#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <curl/curl.h>

#include "client.h"
#include "hashmap.h"

int main() {
    HTTPHeader headers[] = {
        { "user-agent", "Mozilla ..." },
    };

    Response res = RequestGET("https://google.com", headers);
    
    printf("%s", GetResHeader(&res, "content-type"));

    FreeResponse(&res);

    return 0;
}