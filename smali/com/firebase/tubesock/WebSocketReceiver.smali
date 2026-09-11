.class Lcom/firebase/tubesock/WebSocketReceiver;
.super Ljava/lang/Object;
.source "WebSocketReceiver.java"


# instance fields
.field private eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

.field private input:Ljava/io/DataInputStream;

.field private inputHeader:[B

.field private pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

.field private volatile stop:Z

.field private websocket:Lcom/firebase/tubesock/WebSocket;


# direct methods
.method constructor <init>(Ljava/io/DataInputStream;Lcom/firebase/tubesock/WebSocket;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    .line 12
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    .line 13
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    const/16 v0, 0x70

    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->stop:Z

    .line 21
    iput-object p1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    .line 22
    iput-object p2, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    .line 23
    invoke-virtual {p2}, Lcom/firebase/tubesock/WebSocket;->getEventHandler()Lcom/firebase/tubesock/WebSocketEventHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    return-void
.end method

.method private appendBytes(ZB[B)V
    .locals 1

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 83
    invoke-direct {p0, p3}, Lcom/firebase/tubesock/WebSocketReceiver;->handlePing([B)V

    goto :goto_2

    .line 85
    :cond_0
    new-instance p1, Lcom/firebase/tubesock/WebSocketException;

    const-string p2, "PING must not fragment across frames"

    invoke-direct {p1, p2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    new-instance p1, Lcom/firebase/tubesock/WebSocketException;

    const-string p2, "Failed to continue outstanding frame"

    invoke-direct {p1, p2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_1

    .line 92
    :cond_4
    new-instance p1, Lcom/firebase/tubesock/WebSocketException;

    const-string p2, "Received continuing frame, but there\'s nothing to continue"

    invoke-direct {p1, p2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 96
    invoke-static {p2}, Lcom/firebase/tubesock/MessageBuilderFactory;->builder(B)Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    .line 98
    :cond_6
    iget-object p2, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {p2, p3}, Lcom/firebase/tubesock/MessageBuilderFactory$Builder;->appendBytes([B)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    .line 101
    iget-object p1, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    invoke-interface {p1}, Lcom/firebase/tubesock/MessageBuilderFactory$Builder;->toMessage()Lcom/firebase/tubesock/WebSocketMessage;

    move-result-object p1

    const/4 p2, 0x0

    .line 102
    iput-object p2, p0, Lcom/firebase/tubesock/WebSocketReceiver;->pendingBuilder:Lcom/firebase/tubesock/MessageBuilderFactory$Builder;

    if-eqz p1, :cond_7

    .line 107
    iget-object p2, p0, Lcom/firebase/tubesock/WebSocketReceiver;->eventHandler:Lcom/firebase/tubesock/WebSocketEventHandler;

    invoke-interface {p2, p1}, Lcom/firebase/tubesock/WebSocketEventHandler;->onMessage(Lcom/firebase/tubesock/WebSocketMessage;)V

    goto :goto_2

    .line 105
    :cond_7
    new-instance p1, Lcom/firebase/tubesock/WebSocketException;

    const-string p2, "Failed to decode whole message"

    invoke-direct {p1, p2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    return-void

    .line 99
    :cond_9
    new-instance p1, Lcom/firebase/tubesock/WebSocketException;

    const-string p2, "Failed to decode frame"

    invoke-direct {p1, p2}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleError(Lcom/firebase/tubesock/WebSocketException;)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/firebase/tubesock/WebSocketReceiver;->stopit()V

    .line 149
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/firebase/tubesock/WebSocket;->handleReceiverError(Lcom/firebase/tubesock/WebSocketException;)V

    return-void
.end method

.method private handlePing([B)V
    .locals 2

    .line 115
    array-length v0, p1

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v0, p1}, Lcom/firebase/tubesock/WebSocket;->pong([B)V

    return-void

    .line 118
    :cond_0
    new-instance p1, Lcom/firebase/tubesock/WebSocketException;

    const-string v0, "PING frame too long"

    invoke-direct {p1, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseLong([BI)J
    .locals 5

    add-int/lit8 v0, p2, 0x0

    .line 124
    aget-byte v0, p1, v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->input:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return p3
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->stop:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method run()V
    .locals 12

    .line 27
    :goto_0
    iget-boolean v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->stop:Z

    if-nez v0, :cond_a

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    move-result v0

    add-int/2addr v0, v2

    .line 31
    iget-object v3, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 32
    :goto_1
    aget-byte v5, v3, v2

    and-int/lit8 v5, v5, 0x70

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_9

    .line 36
    aget-byte v5, v3, v2

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    .line 37
    invoke-direct {p0, v3, v0, v1}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    move-result v3

    add-int/2addr v0, v3

    .line 38
    iget-object v3, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v6, v3, v1

    const-wide/16 v7, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x2

    const/16 v11, 0x8

    if-ge v6, v9, :cond_2

    int-to-long v7, v6

    goto :goto_3

    :cond_2
    if-ne v6, v9, :cond_3

    .line 43
    invoke-direct {p0, v3, v0, v10}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    .line 44
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    aget-byte v3, v0, v10

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v11

    const/4 v6, 0x3

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    int-to-long v7, v0

    goto :goto_3

    :cond_3
    const/16 v9, 0x7f

    if-ne v6, v9, :cond_4

    .line 49
    invoke-direct {p0, v3, v0, v11}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    move-result v3

    add-int/2addr v0, v3

    .line 51
    iget-object v3, p0, Lcom/firebase/tubesock/WebSocketReceiver;->inputHeader:[B

    sub-int/2addr v0, v11

    invoke-direct {p0, v3, v0}, Lcom/firebase/tubesock/WebSocketReceiver;->parseLong([BI)J

    move-result-wide v7

    :cond_4
    :goto_3
    long-to-int v0, v7

    .line 54
    new-array v3, v0, [B

    .line 55
    invoke-direct {p0, v3, v2, v0}, Lcom/firebase/tubesock/WebSocketReceiver;->read([BII)I

    if-ne v5, v11, :cond_5

    .line 57
    iget-object v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->websocket:Lcom/firebase/tubesock/WebSocket;

    invoke-virtual {v0}, Lcom/firebase/tubesock/WebSocket;->close()V

    goto :goto_0

    :cond_5
    const/16 v0, 0xa

    if-ne v5, v0, :cond_6

    goto :goto_0

    :cond_6
    if-eq v5, v1, :cond_8

    if-eq v5, v10, :cond_8

    const/16 v0, 0x9

    if-eq v5, v0, :cond_8

    if-nez v5, :cond_7

    goto :goto_4

    .line 68
    :cond_7
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_8
    :goto_4
    invoke-direct {p0, v4, v5, v3}, Lcom/firebase/tubesock/WebSocketReceiver;->appendBytes(ZB[B)V

    goto/16 :goto_0

    .line 34
    :cond_9
    new-instance v0, Lcom/firebase/tubesock/WebSocketException;

    const-string v1, "Invalid frame received"

    invoke-direct {v0, v1}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/firebase/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 74
    invoke-direct {p0, v0}, Lcom/firebase/tubesock/WebSocketReceiver;->handleError(Lcom/firebase/tubesock/WebSocketException;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 72
    new-instance v1, Lcom/firebase/tubesock/WebSocketException;

    const-string v2, "IO Error"

    invoke-direct {v1, v2, v0}, Lcom/firebase/tubesock/WebSocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/firebase/tubesock/WebSocketReceiver;->handleError(Lcom/firebase/tubesock/WebSocketException;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method stopit()V
    .locals 1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/firebase/tubesock/WebSocketReceiver;->stop:Z

    return-void
.end method
