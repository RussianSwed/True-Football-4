.class public Lorg/shaded/apache/http/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# instance fields
.field private connStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

.field private expectationVerifier:Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;

.field private handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

.field private params:Lorg/shaded/apache/http/params/HttpParams;

.field private processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

.field private responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/ConnectionReuseStrategy;Lorg/shaded/apache/http/HttpResponseFactory;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    .line 80
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

    .line 81
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

    .line 82
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->connStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    .line 83
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    .line 84
    iput-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->expectationVerifier:Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;

    .line 98
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/protocol/HttpService;->setHttpProcessor(Lorg/shaded/apache/http/protocol/HttpProcessor;)V

    .line 99
    invoke-virtual {p0, p2}, Lorg/shaded/apache/http/protocol/HttpService;->setConnReuseStrategy(Lorg/shaded/apache/http/ConnectionReuseStrategy;)V

    .line 100
    invoke-virtual {p0, p3}, Lorg/shaded/apache/http/protocol/HttpService;->setResponseFactory(Lorg/shaded/apache/http/HttpResponseFactory;)V

    return-void
.end method


# virtual methods
.method protected doService(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

    if-eqz v0, :cond_0

    .line 289
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/shaded/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lorg/shaded/apache/http/protocol/HttpService;->handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

    invoke-interface {v1, v0}, Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lorg/shaded/apache/http/protocol/HttpRequestHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 293
    invoke-interface {v0, p1, p2, p3}, Lorg/shaded/apache/http/protocol/HttpRequestHandler;->handle(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x1f5

    .line 295
    invoke-interface {p2, p1}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    :goto_1
    return-void
.end method

.method public getParams()Lorg/shaded/apache/http/params/HttpParams;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    return-object v0
.end method

.method protected handleException(Lorg/shaded/apache/http/HttpException;Lorg/shaded/apache/http/HttpResponse;)V
    .locals 1

    .line 251
    instance-of v0, p1, Lorg/shaded/apache/http/MethodNotSupportedException;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f5

    .line 252
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 253
    :cond_0
    instance-of v0, p1, Lorg/shaded/apache/http/UnsupportedHttpVersionException;

    if-eqz v0, :cond_1

    const/16 v0, 0x1f9

    .line 254
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 255
    :cond_1
    instance-of v0, p1, Lorg/shaded/apache/http/ProtocolException;

    if-eqz v0, :cond_2

    const/16 v0, 0x190

    .line 256
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f4

    .line 258
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/HttpResponse;->setStatusCode(I)V

    .line 260
    :goto_0
    invoke-virtual {p1}, Lorg/shaded/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/shaded/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 261
    new-instance v0, Lorg/shaded/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/shaded/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string p1, "text/plain; charset=US-ASCII"

    .line 262
    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 263
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/HttpResponse;->setEntity(Lorg/shaded/apache/http/HttpEntity;)V

    return-void
.end method

.method public handleRequest(Lorg/shaded/apache/http/HttpServerConnection;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    const-string v0, "http.connection"

    .line 154
    invoke-interface {p2, v0, p1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x1f4

    .line 160
    :try_start_0
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpServerConnection;->receiveRequestHeader()Lorg/shaded/apache/http/HttpRequest;

    move-result-object v1

    .line 161
    new-instance v2, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v1}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v3

    iget-object v4, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v2, v3, v4}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v1, v2}, Lorg/shaded/apache/http/HttpRequest;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 164
    invoke-interface {v1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v2

    .line 166
    sget-object v3, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_1:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v2, v3}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    sget-object v2, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_1:Lorg/shaded/apache/http/HttpVersion;

    .line 171
    :cond_0
    instance-of v3, v1, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    const/16 v4, 0xc8

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 173
    move-object v3, v1

    check-cast v3, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v3}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    iget-object v3, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    const/16 v6, 0x64

    invoke-interface {v3, v2, v6, p2}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v3

    .line 176
    new-instance v6, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v3}, Lorg/shaded/apache/http/HttpResponse;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v3, v6}, Lorg/shaded/apache/http/HttpResponse;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 179
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->expectationVerifier:Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;
    :try_end_0
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_1

    .line 181
    :try_start_1
    invoke-interface {v6, v1, v3, p2}, Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;->verify(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V
    :try_end_1
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 183
    :try_start_2
    iget-object v6, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    sget-object v7, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-interface {v6, v7, v0, p2}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v6

    .line 185
    new-instance v7, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v6}, Lorg/shaded/apache/http/HttpResponse;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v8

    iget-object v9, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v7, v8, v9}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v6, v7}, Lorg/shaded/apache/http/HttpResponse;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 187
    invoke-virtual {p0, v3, v6}, Lorg/shaded/apache/http/protocol/HttpService;->handleException(Lorg/shaded/apache/http/HttpException;Lorg/shaded/apache/http/HttpResponse;)V

    move-object v3, v6

    .line 190
    :cond_1
    :goto_0
    invoke-interface {v3}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/shaded/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 193
    invoke-interface {p1, v3}, Lorg/shaded/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/shaded/apache/http/HttpResponse;)V

    .line 194
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpServerConnection;->flush()V

    .line 196
    move-object v3, v1

    check-cast v3, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p1, v3}, Lorg/shaded/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/shaded/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_1

    :cond_2
    move-object v5, v3

    goto :goto_1

    .line 199
    :cond_3
    move-object v3, v1

    check-cast v3, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p1, v3}, Lorg/shaded/apache/http/HttpServerConnection;->receiveRequestEntity(Lorg/shaded/apache/http/HttpEntityEnclosingRequest;)V

    :cond_4
    :goto_1
    if-nez v5, :cond_5

    .line 204
    iget-object v3, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    invoke-interface {v3, v2, v4, p2}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v5

    .line 205
    new-instance v2, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v5}, Lorg/shaded/apache/http/HttpResponse;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v3

    iget-object v4, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v2, v3, v4}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v5, v2}, Lorg/shaded/apache/http/HttpResponse;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    const-string v2, "http.request"

    .line 208
    invoke-interface {p2, v2, v1}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http.response"

    .line 209
    invoke-interface {p2, v2, v5}, Lorg/shaded/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/HttpService;->processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

    invoke-interface {v2, v1, p2}, Lorg/shaded/apache/http/protocol/HttpProcessor;->process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 212
    invoke-virtual {p0, v1, v5, p2}, Lorg/shaded/apache/http/protocol/HttpService;->doService(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 216
    :cond_5
    instance-of v2, v1, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_6

    .line 217
    check-cast v1, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v1}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 219
    invoke-interface {v1}, Lorg/shaded/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 224
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    sget-object v3, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-interface {v2, v3, v0, p2}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/ProtocolVersion;ILorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v5

    .line 227
    new-instance v0, Lorg/shaded/apache/http/params/DefaultedHttpParams;

    invoke-interface {v5}, Lorg/shaded/apache/http/HttpResponse;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v2

    iget-object v3, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    invoke-direct {v0, v2, v3}, Lorg/shaded/apache/http/params/DefaultedHttpParams;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    invoke-interface {v5, v0}, Lorg/shaded/apache/http/HttpResponse;->setParams(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 229
    invoke-virtual {p0, v1, v5}, Lorg/shaded/apache/http/protocol/HttpService;->handleException(Lorg/shaded/apache/http/HttpException;Lorg/shaded/apache/http/HttpResponse;)V

    .line 232
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

    invoke-interface {v0, v5, p2}, Lorg/shaded/apache/http/protocol/HttpProcessor;->process(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 233
    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/shaded/apache/http/HttpResponse;)V

    .line 234
    invoke-interface {p1, v5}, Lorg/shaded/apache/http/HttpServerConnection;->sendResponseEntity(Lorg/shaded/apache/http/HttpResponse;)V

    .line 235
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpServerConnection;->flush()V

    .line 237
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/HttpService;->connStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    invoke-interface {v0, v5, p2}, Lorg/shaded/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 238
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpServerConnection;->close()V

    :cond_7
    return-void
.end method

.method public setConnReuseStrategy(Lorg/shaded/apache/http/ConnectionReuseStrategy;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->connStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection reuse strategy may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExpectationVerifier(Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->expectationVerifier:Lorg/shaded/apache/http/protocol/HttpExpectationVerifier;

    return-void
.end method

.method public setHandlerResolver(Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->handlerResolver:Lorg/shaded/apache/http/protocol/HttpRequestHandlerResolver;

    return-void
.end method

.method public setHttpProcessor(Lorg/shaded/apache/http/protocol/HttpProcessor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->processor:Lorg/shaded/apache/http/protocol/HttpProcessor;

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP processor may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParams(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->params:Lorg/shaded/apache/http/params/HttpParams;

    return-void
.end method

.method public setResponseFactory(Lorg/shaded/apache/http/HttpResponseFactory;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 121
    iput-object p1, p0, Lorg/shaded/apache/http/protocol/HttpService;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Response factory may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
