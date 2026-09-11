.class public abstract Lorg/shaded/apache/http/impl/client/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lorg/shaded/apache/http/client/HttpClient;


# instance fields
.field private connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;

.field private cookieStore:Lorg/shaded/apache/http/client/CookieStore;

.field private credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;

.field private defaultParams:Lorg/shaded/apache/http/params/HttpParams;

.field private httpProcessor:Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

.field private keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final log:Lorg/shaded/apache/commons/logging/Log;

.field private proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

.field private redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;

.field private requestExec:Lorg/shaded/apache/http/protocol/HttpRequestExecutor;

.field private retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

.field private routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

.field private supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;

.field private supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;

.field private targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

.field private userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;


# direct methods
.method protected constructor <init>(Lorg/shaded/apache/http/conn/ClientConnectionManager;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/shaded/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/shaded/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->log:Lorg/shaded/apache/commons/logging/Log;

    .line 235
    iput-object p2, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;

    .line 236
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;

    return-void
.end method

.method private determineTarget(Lorg/shaded/apache/http/client/methods/HttpUriRequest;)Lorg/shaded/apache/http/HttpHost;
    .locals 3

    .line 584
    invoke-interface {p1}, Lorg/shaded/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p1

    .line 585
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Lorg/shaded/apache/http/HttpHost;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/shaded/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;)V
    .locals 1

    monitor-enter p0

    .line 523
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRequestInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;I)V
    .locals 1

    monitor-enter p0

    .line 528
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;)V
    .locals 1

    monitor-enter p0

    .line 493
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;I)V
    .locals 1

    monitor-enter p0

    .line 498
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .locals 1

    monitor-enter p0

    .line 543
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->clearRequestInterceptors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .locals 1

    monitor-enter p0

    .line 513
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->clearResponseInterceptors()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createAuthSchemeRegistry()Lorg/shaded/apache/http/auth/AuthSchemeRegistry;
.end method

.method protected abstract createClientConnectionManager()Lorg/shaded/apache/http/conn/ClientConnectionManager;
.end method

.method protected createClientRequestDirector(Lorg/shaded/apache/http/protocol/HttpRequestExecutor;Lorg/shaded/apache/http/conn/ClientConnectionManager;Lorg/shaded/apache/http/ConnectionReuseStrategy;Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/client/HttpRequestRetryHandler;Lorg/shaded/apache/http/client/RedirectHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/UserTokenHandler;Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/client/RequestDirector;
    .locals 16

    .line 660
    new-instance v14, Lorg/shaded/apache/http/impl/client/DefaultRequestDirector;

    move-object/from16 v15, p0

    iget-object v1, v15, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->log:Lorg/shaded/apache/commons/logging/Log;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lorg/shaded/apache/http/impl/client/DefaultRequestDirector;-><init>(Lorg/shaded/apache/commons/logging/Log;Lorg/shaded/apache/http/protocol/HttpRequestExecutor;Lorg/shaded/apache/http/conn/ClientConnectionManager;Lorg/shaded/apache/http/ConnectionReuseStrategy;Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/client/HttpRequestRetryHandler;Lorg/shaded/apache/http/client/RedirectHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/UserTokenHandler;Lorg/shaded/apache/http/params/HttpParams;)V

    return-object v14
.end method

.method protected abstract createConnectionKeepAliveStrategy()Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
.end method

.method protected abstract createConnectionReuseStrategy()Lorg/shaded/apache/http/ConnectionReuseStrategy;
.end method

.method protected abstract createCookieSpecRegistry()Lorg/shaded/apache/http/cookie/CookieSpecRegistry;
.end method

.method protected abstract createCookieStore()Lorg/shaded/apache/http/client/CookieStore;
.end method

.method protected abstract createCredentialsProvider()Lorg/shaded/apache/http/client/CredentialsProvider;
.end method

.method protected abstract createHttpContext()Lorg/shaded/apache/http/protocol/HttpContext;
.end method

.method protected abstract createHttpParams()Lorg/shaded/apache/http/params/HttpParams;
.end method

.method protected abstract createHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
.end method

.method protected abstract createHttpRequestRetryHandler()Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
.end method

.method protected abstract createHttpRoutePlanner()Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
.end method

.method protected abstract createProxyAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;
.end method

.method protected abstract createRedirectHandler()Lorg/shaded/apache/http/client/RedirectHandler;
.end method

.method protected abstract createRequestExecutor()Lorg/shaded/apache/http/protocol/HttpRequestExecutor;
.end method

.method protected abstract createTargetAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;
.end method

.method protected abstract createUserTokenHandler()Lorg/shaded/apache/http/client/UserTokenHandler;
.end method

.method protected determineParams(Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/params/HttpParams;
    .locals 3

    .line 692
    new-instance v0, Lorg/shaded/apache/http/impl/client/ClientParamsStack;

    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, v2}, Lorg/shaded/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;Lorg/shaded/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/HttpHost;",
            "Lorg/shaded/apache/http/HttpRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 717
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/HttpHost;",
            "Lorg/shaded/apache/http/HttpRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    if-eqz p3, :cond_5

    .line 731
    invoke-virtual {p0, p1, p2, p4}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object p1

    .line 735
    :try_start_0
    invoke-interface {p3, p1}, Lorg/shaded/apache/http/client/ResponseHandler;->handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 768
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    .line 737
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpResponse;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 740
    :try_start_1
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 744
    iget-object p3, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string p4, "Error consuming content after an exception."

    invoke-interface {p3, p4, p1}, Lorg/shaded/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 748
    :cond_1
    :goto_0
    instance-of p1, p2, Ljava/lang/Error;

    if-nez p1, :cond_4

    .line 752
    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 756
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_2

    .line 757
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 760
    :cond_2
    new-instance p1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {p1, p2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 753
    :cond_3
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    .line 749
    :cond_4
    check-cast p2, Ljava/lang/Error;

    throw p2

    .line 727
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Response handler must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/client/methods/HttpUriRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 700
    invoke-virtual {p0, p1, p2, v0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/shaded/apache/http/client/methods/HttpUriRequest;",
            "Lorg/shaded/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/shaded/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 708
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->determineTarget(Lorg/shaded/apache/http/client/methods/HttpUriRequest;)Lorg/shaded/apache/http/HttpHost;

    move-result-object v0

    .line 709
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/client/ResponseHandler;Lorg/shaded/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 597
    check-cast v0, Lorg/shaded/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, p2, v0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_1

    .line 616
    monitor-enter p0

    .line 618
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpContext()Lorg/shaded/apache/http/protocol/HttpContext;

    move-result-object v2

    if-nez v1, :cond_0

    move-object v15, v2

    goto :goto_0

    .line 622
    :cond_0
    new-instance v3, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;

    invoke-direct {v3, v1, v2}, Lorg/shaded/apache/http/protocol/DefaultedHttpContext;-><init>(Lorg/shaded/apache/http/protocol/HttpContext;Lorg/shaded/apache/http/protocol/HttpContext;)V

    move-object v15, v3

    .line 625
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getRequestExecutor()Lorg/shaded/apache/http/protocol/HttpRequestExecutor;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/shaded/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lorg/shaded/apache/http/ConnectionReuseStrategy;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getRoutePlanner()Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->copy()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getRedirectHandler()Lorg/shaded/apache/http/client/RedirectHandler;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getTargetAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getProxyAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getUserTokenHandler()Lorg/shaded/apache/http/client/UserTokenHandler;

    move-result-object v12

    invoke-virtual {v14, v0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->determineParams(Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v13

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v13}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createClientRequestDirector(Lorg/shaded/apache/http/protocol/HttpRequestExecutor;Lorg/shaded/apache/http/conn/ClientConnectionManager;Lorg/shaded/apache/http/ConnectionReuseStrategy;Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;Lorg/shaded/apache/http/protocol/HttpProcessor;Lorg/shaded/apache/http/client/HttpRequestRetryHandler;Lorg/shaded/apache/http/client/RedirectHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/AuthenticationHandler;Lorg/shaded/apache/http/client/UserTokenHandler;Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/client/RequestDirector;

    move-result-object v1

    .line 638
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    .line 641
    :try_start_1
    invoke-interface {v1, v2, v0, v15}, Lorg/shaded/apache/http/client/RequestDirector;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object v0
    :try_end_1
    .catch Lorg/shaded/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 643
    new-instance v0, Lorg/shaded/apache/http/client/ClientProtocolException;

    invoke-direct {v0, v1}, Lorg/shaded/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 638
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;)Lorg/shaded/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 554
    check-cast v0, Lorg/shaded/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/client/ClientProtocolException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 576
    invoke-direct {p0, p1}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->determineTarget(Lorg/shaded/apache/http/client/methods/HttpUriRequest;)Lorg/shaded/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/shaded/apache/http/HttpHost;Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object p1

    return-object p1

    .line 572
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized getAuthSchemes()Lorg/shaded/apache/http/auth/AuthSchemeRegistry;
    .locals 1

    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createAuthSchemeRegistry()Lorg/shaded/apache/http/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
    .locals 1

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createConnectionKeepAliveStrategy()Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Lorg/shaded/apache/http/conn/ClientConnectionManager;
    .locals 1

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createClientConnectionManager()Lorg/shaded/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->connManager:Lorg/shaded/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Lorg/shaded/apache/http/ConnectionReuseStrategy;
    .locals 1

    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createConnectionReuseStrategy()Lorg/shaded/apache/http/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Lorg/shaded/apache/http/cookie/CookieSpecRegistry;
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createCookieSpecRegistry()Lorg/shaded/apache/http/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieStore()Lorg/shaded/apache/http/client/CookieStore;
    .locals 1

    monitor-enter p0

    .line 433
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/shaded/apache/http/client/CookieStore;

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createCookieStore()Lorg/shaded/apache/http/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/shaded/apache/http/client/CookieStore;

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/shaded/apache/http/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Lorg/shaded/apache/http/client/CredentialsProvider;
    .locals 1

    monitor-enter p0

    .line 446
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;

    if-nez v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createCredentialsProvider()Lorg/shaded/apache/http/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->httpProcessor:Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
    .locals 1

    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpRequestRetryHandler()Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Lorg/shaded/apache/http/params/HttpParams;
    .locals 1

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;
    .locals 1

    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createProxyAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

    .line 422
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Lorg/shaded/apache/http/client/RedirectHandler;
    .locals 1

    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createRedirectHandler()Lorg/shaded/apache/http/client/RedirectHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Lorg/shaded/apache/http/protocol/HttpRequestExecutor;
    .locals 1

    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/shaded/apache/http/protocol/HttpRequestExecutor;

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createRequestExecutor()Lorg/shaded/apache/http/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/shaded/apache/http/protocol/HttpRequestExecutor;

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->requestExec:Lorg/shaded/apache/http/protocol/HttpRequestExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lorg/shaded/apache/http/HttpRequestInterceptor;
    .locals 1

    monitor-enter p0

    .line 533
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lorg/shaded/apache/http/HttpRequestInterceptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .locals 1

    monitor-enter p0

    .line 538
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lorg/shaded/apache/http/HttpResponseInterceptor;
    .locals 1

    monitor-enter p0

    .line 503
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lorg/shaded/apache/http/HttpResponseInterceptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .locals 1

    monitor-enter p0

    .line 508
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
    .locals 1

    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createHttpRoutePlanner()Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;
    .locals 1

    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createTargetAuthenticationHandler()Lorg/shaded/apache/http/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Lorg/shaded/apache/http/client/UserTokenHandler;
    .locals 1

    monitor-enter p0

    .line 472
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->createUserTokenHandler()Lorg/shaded/apache/http/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/shaded/apache/http/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 548
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->removeRequestInterceptorByClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/shaded/apache/http/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 518
    :try_start_0
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->removeResponseInterceptorByClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAuthSchemes(Lorg/shaded/apache/http/auth/AuthSchemeRegistry;)V
    .locals 0

    monitor-enter p0

    .line 335
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lorg/shaded/apache/http/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookieSpecs(Lorg/shaded/apache/http/cookie/CookieSpecRegistry;)V
    .locals 0

    monitor-enter p0

    .line 348
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lorg/shaded/apache/http/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookieStore(Lorg/shaded/apache/http/client/CookieStore;)V
    .locals 0

    monitor-enter p0

    .line 441
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->cookieStore:Lorg/shaded/apache/http/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCredentialsProvider(Lorg/shaded/apache/http/client/CredentialsProvider;)V
    .locals 0

    monitor-enter p0

    .line 454
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->credsProvider:Lorg/shaded/apache/http/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lorg/shaded/apache/http/client/HttpRequestRetryHandler;)V
    .locals 0

    monitor-enter p0

    .line 387
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->retryHandler:Lorg/shaded/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setKeepAliveStrategy(Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;)V
    .locals 0

    monitor-enter p0

    .line 374
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->keepAliveStrategy:Lorg/shaded/apache/http/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParams(Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0

    monitor-enter p0

    .line 306
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->defaultParams:Lorg/shaded/apache/http/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lorg/shaded/apache/http/client/AuthenticationHandler;)V
    .locals 0

    monitor-enter p0

    .line 428
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->proxyAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRedirectHandler(Lorg/shaded/apache/http/client/RedirectHandler;)V
    .locals 0

    monitor-enter p0

    .line 400
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->redirectHandler:Lorg/shaded/apache/http/client/RedirectHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReuseStrategy(Lorg/shaded/apache/http/ConnectionReuseStrategy;)V
    .locals 0

    monitor-enter p0

    .line 361
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->reuseStrategy:Lorg/shaded/apache/http/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoutePlanner(Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;)V
    .locals 0

    monitor-enter p0

    .line 467
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->routePlanner:Lorg/shaded/apache/http/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lorg/shaded/apache/http/client/AuthenticationHandler;)V
    .locals 0

    monitor-enter p0

    .line 414
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->targetAuthHandler:Lorg/shaded/apache/http/client/AuthenticationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserTokenHandler(Lorg/shaded/apache/http/client/UserTokenHandler;)V
    .locals 0

    monitor-enter p0

    .line 480
    :try_start_0
    iput-object p1, p0, Lorg/shaded/apache/http/impl/client/AbstractHttpClient;->userTokenHandler:Lorg/shaded/apache/http/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
