.class public Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;
.super Lorg/shaded/apache/http/impl/SocketHttpClientConnection;
.source "DefaultClientConnection.java"

# interfaces
.implements Lorg/shaded/apache/http/conn/OperatedClientConnection;


# instance fields
.field private connSecure:Z

.field private final headerLog:Lorg/shaded/apache/commons/logging/Log;

.field private final log:Lorg/shaded/apache/commons/logging/Log;

.field private volatile shutdown:Z

.field private volatile socket:Ljava/net/Socket;

.field private targetHost:Lorg/shaded/apache/http/HttpHost;

.field private final wireLog:Lorg/shaded/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lorg/shaded/apache/http/impl/SocketHttpClientConnection;-><init>()V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/shaded/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/shaded/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string v0, "org.shaded.apache.http.headers"

    .line 71
    invoke-static {v0}, Lorg/shaded/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/shaded/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/shaded/apache/commons/logging/Log;

    const-string v0, "org.shaded.apache.http.wire"

    .line 72
    invoke-static {v0}, Lorg/shaded/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/shaded/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/shaded/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string v1, "Connection closed"

    invoke-interface {v0, v1}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 154
    invoke-super {p0}, Lorg/shaded/apache/http/impl/SocketHttpClientConnection;->close()V

    return-void
.end method

.method protected createResponseParser(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/HttpResponseFactory;Lorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/HttpMessageParser;
    .locals 2

    .line 199
    new-instance v0, Lorg/shaded/apache/http/impl/conn/DefaultResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/shaded/apache/http/impl/conn/DefaultResponseParser;-><init>(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/message/LineParser;Lorg/shaded/apache/http/HttpResponseFactory;Lorg/shaded/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x2000

    .line 165
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/shaded/apache/http/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionInputBuffer;

    move-result-object p1

    .line 169
    iget-object p2, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 170
    new-instance p2, Lorg/shaded/apache/http/impl/conn/LoggingSessionInputBuffer;

    new-instance p3, Lorg/shaded/apache/http/impl/conn/Wire;

    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/shaded/apache/commons/logging/Log;

    invoke-direct {p3, v0}, Lorg/shaded/apache/http/impl/conn/Wire;-><init>(Lorg/shaded/apache/commons/logging/Log;)V

    invoke-direct {p2, p1, p3}, Lorg/shaded/apache/http/impl/conn/LoggingSessionInputBuffer;-><init>(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/impl/conn/Wire;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x2000

    .line 183
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/shaded/apache/http/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionOutputBuffer;

    move-result-object p1

    .line 187
    iget-object p2, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 188
    new-instance p2, Lorg/shaded/apache/http/impl/conn/LoggingSessionOutputBuffer;

    new-instance p3, Lorg/shaded/apache/http/impl/conn/Wire;

    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/shaded/apache/commons/logging/Log;

    invoke-direct {p3, v0}, Lorg/shaded/apache/http/impl/conn/Wire;-><init>(Lorg/shaded/apache/commons/logging/Log;)V

    invoke-direct {p2, p1, p3}, Lorg/shaded/apache/http/impl/conn/LoggingSessionOutputBuffer;-><init>(Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/impl/conn/Wire;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final getTargetHost()Lorg/shaded/apache/http/HttpHost;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/shaded/apache/http/HttpHost;

    return-object v0
.end method

.method public final isSecure()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    return v0
.end method

.method public openCompleted(ZLorg/shaded/apache/http/params/HttpParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->assertNotOpen()V

    if-eqz p2, :cond_0

    .line 122
    iput-boolean p1, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    .line 123
    iget-object p1, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1, p2}, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lorg/shaded/apache/http/params/HttpParams;)V

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public opening(Ljava/net/Socket;Lorg/shaded/apache/http/HttpHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->assertNotOpen()V

    .line 105
    iput-object p1, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 106
    iput-object p2, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/shaded/apache/http/HttpHost;

    .line 109
    iget-boolean p2, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    if-nez p2, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 112
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection already shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public receiveResponseHeader()Lorg/shaded/apache/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-super {p0}, Lorg/shaded/apache/http/impl/SocketHttpClientConnection;->receiveResponseHeader()Lorg/shaded/apache/http/HttpResponse;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiving response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 231
    :cond_0
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/shaded/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/shaded/apache/http/HttpResponse;->getStatusLine()Lorg/shaded/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 233
    invoke-interface {v0}, Lorg/shaded/apache/http/HttpResponse;->getAllHeaders()[Lorg/shaded/apache/http/Header;

    move-result-object v1

    .line 234
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 235
    iget-object v6, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/shaded/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public sendRequestHeader(Lorg/shaded/apache/http/HttpRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/shaded/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lorg/shaded/apache/http/impl/SocketHttpClientConnection;->sendRequestHeader(Lorg/shaded/apache/http/HttpRequest;)V

    .line 247
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/shaded/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/shaded/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/shaded/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getRequestLine()Lorg/shaded/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 249
    invoke-interface {p1}, Lorg/shaded/apache/http/HttpRequest;->getAllHeaders()[Lorg/shaded/apache/http/Header;

    move-result-object p1

    .line 250
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 251
    iget-object v4, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/shaded/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/shaded/apache/commons/logging/Log;

    const-string v1, "Connection shut down"

    invoke-interface {v0, v1}, Lorg/shaded/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    .line 144
    invoke-super {p0}, Lorg/shaded/apache/http/impl/SocketHttpClientConnection;->shutdown()V

    .line 145
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method

.method public update(Ljava/net/Socket;Lorg/shaded/apache/http/HttpHost;ZLorg/shaded/apache/http/params/HttpParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->assertOpen()V

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 218
    iput-object p1, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 219
    invoke-virtual {p0, p1, p4}, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lorg/shaded/apache/http/params/HttpParams;)V

    .line 221
    :cond_0
    iput-object p2, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/shaded/apache/http/HttpHost;

    .line 222
    iput-boolean p3, p0, Lorg/shaded/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    return-void

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target host must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
