.class public Lorg/shaded/apache/http/impl/io/HttpResponseParser;
.super Lorg/shaded/apache/http/impl/io/AbstractMessageParser;
.source "HttpResponseParser.java"


# instance fields
.field private final lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

.field private final responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/message/LineParser;Lorg/shaded/apache/http/HttpResponseFactory;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p4}, Lorg/shaded/apache/http/impl/io/AbstractMessageParser;-><init>(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/message/LineParser;Lorg/shaded/apache/http/params/HttpParams;)V

    if-eqz p3, :cond_0

    .line 93
    iput-object p3, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    .line 94
    new-instance p1, Lorg/shaded/apache/http/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Response factory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected parseHead(Lorg/shaded/apache/http/io/SessionInputBuffer;)Lorg/shaded/apache/http/HttpMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;,
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->clear()V

    .line 102
    iget-object v0, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lorg/shaded/apache/http/io/SessionInputBuffer;->readLine(Lorg/shaded/apache/http/util/CharArrayBuffer;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 107
    new-instance p1, Lorg/shaded/apache/http/message/ParserCursor;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-virtual {v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/shaded/apache/http/message/ParserCursor;-><init>(II)V

    .line 108
    iget-object v0, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineParser:Lorg/shaded/apache/http/message/LineParser;

    iget-object v1, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->lineBuf:Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1, p1}, Lorg/shaded/apache/http/message/LineParser;->parseStatusLine(Lorg/shaded/apache/http/util/CharArrayBuffer;Lorg/shaded/apache/http/message/ParserCursor;)Lorg/shaded/apache/http/StatusLine;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lorg/shaded/apache/http/impl/io/HttpResponseParser;->responseFactory:Lorg/shaded/apache/http/HttpResponseFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/shaded/apache/http/HttpResponseFactory;->newHttpResponse(Lorg/shaded/apache/http/StatusLine;Lorg/shaded/apache/http/protocol/HttpContext;)Lorg/shaded/apache/http/HttpResponse;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    new-instance p1, Lorg/shaded/apache/http/NoHttpResponseException;

    const-string v0, "The target server failed to respond"

    invoke-direct {p1, v0}, Lorg/shaded/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
