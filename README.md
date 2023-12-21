## HTTP Client
An libcurl wrapper for HTTP/HTTPS requests.

### Examples:
```c
#include "client.h"

int main() {
    // Define request headers.
    HTTPHeader headers[] = {
        { "user-agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36" },
        { "Authorization": "Bearer ..." },
    };

    Response res = RequestGET("https://google.com", headers);
    
    // Get response headers with "GetResHeader" function.
    char* exampleHeader = GetResHeader(&res, "content-type")
    printf("%s", exampleHeader);

    // Free memory holded by response.
    FreeResponse(&res);

    return 0;
}
```