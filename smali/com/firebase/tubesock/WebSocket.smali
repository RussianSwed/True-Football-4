.class public Lcom/firebase/tubesock/WebSocket;
.super Ljava/lang/Thread;
.source "WebSocket.java"


# static fields
.field static final OPCODE_BINARY:B = 0x2t

.field static final OPCODE_CLOSE:B = 0x8t

.field static final OPCODE_NONE:B = 0x0t

.field static final OPCODE_PING:B = 0x9t

.field static final OPCODE_PONG:B = 0xat

.field static final OPCODE_TEXT:B = 0x1t

.field private static final THREAD_BASE_NAME:Ljava/lang/String; = "TubeSock"

.field private static final clientCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private clientId:I

.field private volatile connected:Z

.field private eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

.field private handshake:Lcom/firebase/tubesock/WebSocketHandshake;

.field private receiver:Lcom/firebase/tubesock/WebSocketReceiver;

.field private url:Ljava/net/URI;

.field private writer:Lcom/firebase/tubesock/WebSocketWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/firebase/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/firebase/tubesock/WebSocket;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/tubesock/WebSocket;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    .line 39
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/firebase/tubesock/WebSocket;->connected:Z

    .line 43
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    .line 44
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    .line 45
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    .line 46
    sget-object v0, Lcom/firebase/tubesock/WebSocket;->clientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/firebase/tubesock/WebSocket;->clientId:I

    .line 74
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    .line 75
    new-instance v0, Lcom/firebase/tubesock/WebSocketHandshake;

    invoke-direct {v0, p1, p2, p3}, Lcom/firebase/tubesock/WebSocketHandshake;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    return-void
.end method

.method private createSocket()Ljava/net/Socket;
    .locals 6

    .line 238
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    const-string v3, "unknown host: "

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    const-string v5, "ws"

    .line 244
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v2, v4, :cond_0

    const/16 v2, 0x50

    .line 249
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while creating socket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 251
    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    if-eqz v0, :cond_3

    const-string v5, "wss"

    .line 255
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v2, v4, :cond_2

    const/16 v2, 0x1bb

    .line 260
    :cond_2
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    .line 261
    invoke-virtual {v0, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 263
    move-object v2, v0

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v2, v1}, Lcom/firebase/tubesock/WebSocket;->verifyHost(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_2
    move-exception v0

    .line 267
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while creating secure socket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/firebase/tubesock/WebSocket;->url:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    .line 265
    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 270
    :cond_3
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private send(B[B)V
    .locals 2

    .line 185
    iget-boolean v0, p0, Lcom/firebase/tubesock/WebSocket;->connected:Z

    if-nez v0, :cond_0

    .line 187
    iget-object p1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance p2, Lcom/firebase/tubesock/WebSocketException;

    const-string v0, "error while sending data: not connected"

    invoke-direct {p2, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    goto :goto_0

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/firebase/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    iget-object p2, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "Failed to send frame"

    invoke-direct {v0, v1, p1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v0}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 193
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    :goto_0
    return-void
.end method

.method private sendCloseHandshake()V
    .locals 5

    const/4 v0, 0x0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v1}, Lcom/firebase/tubesock/WebSocketWriter;->stopIt()V

    .line 229
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    const/16 v2, 0x8

    const/4 v3, 0x1

    new-array v4, v0, [B

    invoke-virtual {v1, v2, v3, v4}, Lcom/firebase/tubesock/WebSocketWriter;->send(BZ[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 231
    iget-object v2, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v3, Lcom/firebase/tubesock/WebSocketException;

    const-string v4, "Failed to send close frame"

    invoke-direct {v3, v4, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 234
    :goto_0
    iput-boolean v0, p0, Lcom/firebase/tubesock/WebSocket;->connected:Z

    return-void
.end method

.method private verifyHost(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p1

    const/4 v0, 0x0

    .line 278
    aget-object p1, p1, v0

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 279
    new-instance v0, Lorg/shaded/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/shaded/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 280
    invoke-virtual {v0, p2, p1}, Lorg/shaded/apache/http/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method


# virtual methods
.method public blockClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketWriter;->join()V

    .line 290
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->join()V

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/firebase/tubesock/WebSocket;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 211
    monitor-exit p0

    return-void

    .line 215
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->sendCloseHandshake()V

    .line 217
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketReceiver;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketReceiver;->stopit()V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v0}, Lcom/firebase/tubesock/WebSocketEventHandler;->onClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/firebase/tubesock/WebSocket;->connected:Z

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TubeSockReader-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/firebase/tubesock/WebSocket;->clientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/firebase/tubesock/WebSocket;->setName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->start()V

    return-void

    .line 96
    :cond_0
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getEventHandler()Lcom/firebase/tubesock/WebSocketEventHandler;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    return-object v0
.end method

.method handleReceiverError(Lcom/firebase/tubesock/WebSocketException;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v0, p1}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    .line 200
    iget-boolean p1, p0, Lcom/firebase/tubesock/WebSocket;->connected:Z

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    :cond_0
    return-void
.end method

.method pong([B)V
    .locals 1

    const/16 v0, 0xa

    .line 181
    invoke-direct {p0, v0, p1}, Lcom/firebase/tubesock/WebSocket;->send(B[B)V

    return-void
.end method

.method public run()V
    .locals 12

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/firebase/tubesock/WebSocket;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 107
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    invoke-virtual {v2}, Lcom/firebase/tubesock/WebSocketHandshake;->getHandshake()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    const/16 v2, 0x3e8

    new-array v3, v2, [B

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x1

    if-nez v6, :cond_3

    .line 118
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    .line 119
    aput-byte v9, v3, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v7, -0x1

    .line 122
    aget-byte v9, v3, v9
    :try_end_0
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v10, 0xa

    const-string v11, "UTF-8"

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v7, -0x2

    :try_start_1
    aget-byte v9, v3, v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_1

    .line 123
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 124
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    .line 127
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-array v3, v2, [B

    goto :goto_0

    :cond_1
    if-eq v7, v2, :cond_2

    goto :goto_1

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 135
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected long line in handshake: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/firebase/tubesock/WebSocketHandshake;->verifyServerStatusLine(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ": "

    const/4 v7, 0x2

    .line 144
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 145
    aget-object v6, v4, v5

    aget-object v4, v4, v8

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 147
    :cond_4
    iget-object v3, p0, Lcom/firebase/tubesock/WebSocket;->handshake:Lcom/firebase/tubesock/WebSocketHandshake;

    invoke-virtual {v3, v2}, Lcom/firebase/tubesock/WebSocketHandshake;->verifyServerHandshakeHeaders(Ljava/util/HashMap;)V

    .line 149
    iput-boolean v8, p0, Lcom/firebase/tubesock/WebSocket;->connected:Z

    .line 150
    new-instance v2, Lcom/firebase/tubesock/WebSocketWriter;

    const-string v3, "TubeSock"

    iget v4, p0, Lcom/firebase/tubesock/WebSocket;->clientId:I

    invoke-direct {v2, v0, p0, v3, v4}, Lcom/firebase/tubesock/WebSocketWriter;-><init>(Ljava/io/OutputStream;Lcom/firebase/tubesock/WebSocket;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/firebase/tubesock/WebSocket;->writer:Lcom/firebase/tubesock/WebSocketWriter;

    .line 151
    invoke-virtual {v2}, Lcom/firebase/tubesock/WebSocketWriter;->start()V

    .line 152
    new-instance v0, Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-direct {v0, v1, p0}, Lcom/firebase/tubesock/WebSocketReceiver;-><init>(Ljava/io/DataInputStream;Lcom/firebase/tubesock/WebSocket;)V

    iput-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    .line 153
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v0}, Lcom/firebase/tubesock/WebSocketEventHandler;->onOpen()V

    .line 154
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocket;->receiver:Lcom/firebase/tubesock/WebSocketReceiver;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocketReceiver;->run()V
    :try_end_1
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 158
    :try_start_2
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    new-instance v2, Lcom/firebase/tubesock/WebSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while connecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V

    goto :goto_4

    :catch_1
    move-exception v0

    .line 156
    iget-object v1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {v1, v0}, Lcom/firebase/tubesock/WebSocketEventHandler;->onError(Lcom/firebase/tubesock/WebSocketException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :goto_4
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    return-void

    :goto_5
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocket;->close()V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/firebase/tubesock/WebSocket;->send(B[B)V

    return-void
.end method

.method public send([B)V
    .locals 1

    const/4 v0, 0x2

    .line 177
    invoke-direct {p0, v0, p1}, Lcom/firebase/tubesock/WebSocket;->send(B[B)V

    return-void
.end method

.method public setEventHandler(Lcom/firebase/tubesock/WebSocketEventHandler;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocket;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    return-void
.end method
