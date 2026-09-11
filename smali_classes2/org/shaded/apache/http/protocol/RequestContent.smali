.class public Lorg/shaded/apache/http/protocol/RequestContent;
.super Ljava/lang/Object;
.source "RequestContent.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 69
    instance-of p2, p1, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    if-eqz p2, :cond_7

    const-string p2, "Transfer-Encoding"

    .line 70
    invoke-interface {p1, p2}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Content-Length"

    .line 73
    invoke-interface {p1, v0}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 76
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/shaded/apache/http/RequestLine;->getProtocolVersion()Lorg/shaded/apache/http/ProtocolVersion;

    move-result-object v1

    .line 77
    move-object v2, p1

    check-cast v2, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/shaded/apache/http/HttpEntity;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p2, "0"

    .line 79
    invoke-interface {p1, v0, p2}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntity;->isChunked()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    sget-object v0, Lorg/shaded/apache/http/HttpVersion;->HTTP_1_0:Lorg/shaded/apache/http/HttpVersion;

    invoke-virtual {v1, v0}, Lorg/shaded/apache/http/ProtocolVersion;->lessEquals(Lorg/shaded/apache/http/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "chunked"

    .line 88
    invoke-interface {p1, p2, v0}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_1
    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntity;->getContentType()Lorg/shaded/apache/http/Header;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p2, "Content-Type"

    invoke-interface {p1, p2}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 95
    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntity;->getContentType()Lorg/shaded/apache/http/Header;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Lorg/shaded/apache/http/Header;)V

    .line 98
    :cond_3
    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntity;->getContentEncoding()Lorg/shaded/apache/http/Header;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string p2, "Content-Encoding"

    invoke-interface {p1, p2}, Lorg/shaded/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 100
    invoke-interface {v2}, Lorg/shaded/apache/http/HttpEntity;->getContentEncoding()Lorg/shaded/apache/http/Header;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/shaded/apache/http/HttpRequest;->addHeader(Lorg/shaded/apache/http/Header;)V

    goto :goto_2

    .line 85
    :cond_4
    new-instance p1, Lorg/shaded/apache/http/ProtocolException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Chunked transfer encoding not allowed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_5
    new-instance p1, Lorg/shaded/apache/http/ProtocolException;

    const-string p2, "Content-Length header already present"

    invoke-direct {p1, p2}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_6
    new-instance p1, Lorg/shaded/apache/http/ProtocolException;

    const-string p2, "Transfer-encoding header already present"

    invoke-direct {p1, p2}, Lorg/shaded/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void

    .line 67
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
