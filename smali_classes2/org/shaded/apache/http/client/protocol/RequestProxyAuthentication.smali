.class public Lorg/shaded/apache/http/client/protocol/RequestProxyAuthentication;
.super Ljava/lang/Object;
.source "RequestProxyAuthentication.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequestInterceptor;


# instance fields
.field private final log:Lorg/shaded/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/shaded/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/shaded/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/shaded/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    const-string v0, "Proxy-Authorization"

    .line 70
    invoke-interface {p1, v0}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http.auth.proxy-scope"

    .line 75
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/shaded/apache/http/auth/AuthState;

    if-nez p2, :cond_1

    return-void

    .line 81
    :cond_1
    invoke-virtual {p2}, Lorg/shaded/apache/http/auth/AuthState;->getAuthScheme()Lorg/shaded/apache/http/auth/AuthScheme;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 86
    :cond_2
    invoke-virtual {p2}, Lorg/shaded/apache/http/auth/AuthState;->getCredentials()Lorg/shaded/apache/http/auth/Credentials;

    move-result-object v1

    if-nez v1, :cond_3

    .line 88
    iget-object p1, p0, Lorg/shaded/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string p2, "User credentials not available"

    invoke-interface {p1, p2}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    .line 91
    :cond_3
    invoke-virtual {p2}, Lorg/shaded/apache/http/auth/AuthState;->getAuthScope()Lorg/shaded/apache/http/auth/AuthScope;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-interface {v0}, Lorg/shaded/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result p2

    if-nez p2, :cond_5

    .line 93
    :cond_4
    :try_start_0
    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/auth/AuthScheme;->authenticate(Lorg/shaded/apache/http/auth/Credentials;Lorg/shaded/apache/http/HttpRequest;)Lorg/shaded/apache/http/Header;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Lorg/shaded/apache/http/Header;)V
    :try_end_0
    .catch Lorg/shaded/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    iget-object p2, p0, Lorg/shaded/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/shaded/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 96
    iget-object p2, p0, Lorg/shaded/apache/http/client/protocol/RequestProxyAuthentication;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy authentication error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/shaded/apache/http/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/shaded/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void

    .line 67
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
