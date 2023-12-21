## HTTP Client
An libcurl wrapper for HTTP/HTTPS requests inspired by simplicity of python's requests module.

### Structure of Response

```c
typedef struct Response {
    char* body;
    size_t bodySize;
    hashmap* headers;
    long status;
} Response;
```

### Examples:

There is a simple `GET` request example:
```c
#include "client.h"

int main() {
    // Define request headers.
    HTTPHeader headers[] = {
        { "user-agent", "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36" },
        { "Authorization": "Bearer ..." },
    };

    Response res = RequestGET("https://google.com", headers);

    // Print response body.
    printf("Body: %s", res.body);
    
    // Get response headers with "GetResHeader" function.
    char* exampleHeader = GetResHeader(&res, "content-type");
    printf("%s", exampleHeader);

    // Free memory held by response.
    FreeResponse(&res);

    return 0;
}
```

There is a simple `POST` request example:
```c
#include "client.h"

int main() {
    Response res = RequestPOST("https://google.com", NULL, "some post body");
    
    // Print response body.
    printf("Body: %s", res.body);

    // Free memory held by response.
    FreeResponse(&res);

    return 0;
}
```

There is also `PUT` and `DELETE` methods too.