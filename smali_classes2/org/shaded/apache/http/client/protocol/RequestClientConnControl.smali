.class public Lorg/shaded/apache/http/client/protocol/RequestClientConnControl;
.super Ljava/lang/Object;
.source "RequestClientConnControl.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequestInterceptor;


# static fields
.field private static final PROXY_CONN_DIRECTIVE:Ljava/lang/String; = "Proxy-Connection"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 65
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/shaded/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Keep-Alive"

    const-string v2, "Proxy-Connection"

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {p1, v2, v1}, Lorg/shaded/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "http.connection"

    .line 72
    invoke-interface {p2, v0}, Lorg/shaded/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/shaded/apache/http/conn/ManagedClientConnection;

    if-eqz p2, :cond_4

    .line 78
    invoke-interface {p2}, Lorg/shaded/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object p2

    .line 80
    invoke-virtual {p2}, Lorg/shaded/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {p2}, Lorg/shaded/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Connection"

    .line 81
    invoke-interface {p1, v0}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 82
    invoke-interface {p1, v0, v1}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_2
    invoke-virtual {p2}, Lorg/shaded/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    invoke-virtual {p2}, Lorg/shaded/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 86
    invoke-interface {p1, v2}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 87
    invoke-interface {p1, v2, v1}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Client connection not specified in HTTP context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
