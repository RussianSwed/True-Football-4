.class public Lcom/firebase/client/realtime/WebsocketConnection;
.super Ljava/lang/Object;
.source "WebsocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;,
        Lcom/firebase/client/realtime/WebsocketConnection$WSClient;,
        Lcom/firebase/client/realtime/WebsocketConnection$Delegate;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:J = 0x7530L

.field private static final KEEP_ALIVE:J = 0xafc8L

.field private static final MAX_FRAME_SIZE:I = 0x4000

.field private static connectionId:J


# instance fields
.field private conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

.field private connectTimeout:Ljava/util/concurrent/ScheduledFuture;

.field private ctx:Lcom/firebase/client/core/Context;

.field private delegate:Lcom/firebase/client/realtime/WebsocketConnection$Delegate;

.field private deserializeTypeReference:Lcom/shaded/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/core/type/TypeReference<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private everConnected:Z

.field private frame:Ljava/lang/String;

.field private isClosed:Z

.field private keepAlive:Ljava/util/concurrent/ScheduledFuture;

.field private logger:Lcom/firebase/client/utilities/LogWrapper;

.field private mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

.field private totalFrames:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/realtime/WebsocketConnection$Delegate;)V
    .locals 4

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->everConnected:Z

    .line 128
    iput-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    .line 137
    new-instance v0, Lcom/firebase/client/realtime/WebsocketConnection$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/realtime/WebsocketConnection$1;-><init>(Lcom/firebase/client/realtime/WebsocketConnection;)V

    iput-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->deserializeTypeReference:Lcom/shaded/fasterxml/jackson/core/type/TypeReference;

    .line 140
    sget-wide v0, Lcom/firebase/client/realtime/WebsocketConnection;->connectionId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/firebase/client/realtime/WebsocketConnection;->connectionId:J

    .line 141
    new-instance v2, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    .line 142
    iput-object p3, p0, Lcom/firebase/client/realtime/WebsocketConnection;->delegate:Lcom/firebase/client/realtime/WebsocketConnection$Delegate;

    .line 143
    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    .line 144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ws_"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WebSocket"

    invoke-virtual {p1, v0, p3}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 145
    invoke-direct {p0, p2}, Lcom/firebase/client/realtime/WebsocketConnection;->createConnection(Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/realtime/WebsocketConnection;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/realtime/WebsocketConnection$WSClient;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    return-object p0
.end method

.method static synthetic access$102(Lcom/firebase/client/realtime/WebsocketConnection;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->everConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/client/realtime/WebsocketConnection;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->resetKeepAlive()V

    return-void
.end method

.method static synthetic access$400(Lcom/firebase/client/realtime/WebsocketConnection;)Lcom/firebase/client/core/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/firebase/client/realtime/WebsocketConnection;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/WebsocketConnection;->handleIncomingFrame(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/firebase/client/realtime/WebsocketConnection;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->onClosed()V

    return-void
.end method

.method static synthetic access$700(Lcom/firebase/client/realtime/WebsocketConnection;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    return-void
.end method

.method static synthetic access$900(Lcom/firebase/client/realtime/WebsocketConnection;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->closeIfNeverConnected()V

    return-void
.end method

.method private appendFrame(Ljava/lang/String;)V
    .locals 5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frame:Ljava/lang/String;

    .line 197
    iget-wide v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->deserializeTypeReference:Lcom/shaded/fasterxml/jackson/core/type/TypeReference;

    invoke-virtual {v0, p1, v1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frame:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingFrame complete frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->delegate:Lcom/firebase/client/realtime/WebsocketConnection$Delegate;

    invoke-interface {v0, p1}, Lcom/firebase/client/realtime/WebsocketConnection$Delegate;->onMessage(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    iget-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing frame (cast error): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    goto :goto_0

    .line 206
    :catch_1
    iget-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frame:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    :cond_0
    :goto_0
    return-void
.end method

.method private closeIfNeverConnected()V
    .locals 2

    .line 295
    iget-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->everConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "timed out on connect"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->close()V

    :cond_0
    return-void
.end method

.method private createConnection(Lcom/firebase/client/core/RepoInfo;)Lcom/firebase/client/realtime/WebsocketConnection$WSClient;
    .locals 3

    .line 149
    invoke-virtual {p1}, Lcom/firebase/client/core/RepoInfo;->getConnectionURL()Ljava/net/URI;

    move-result-object p1

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v1}, Lcom/firebase/client/core/Context;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v1, Lcom/firebase/tubesock/WebSocket;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/firebase/tubesock/WebSocket;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    new-instance p1, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;

    invoke-direct {p1, p0, v1, v2}, Lcom/firebase/client/realtime/WebsocketConnection$WSClientTubesock;-><init>(Lcom/firebase/client/realtime/WebsocketConnection;Lcom/firebase/tubesock/WebSocket;Lcom/firebase/client/realtime/WebsocketConnection$1;)V

    return-object p1
.end method

.method private extractFrameCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 224
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 226
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/WebsocketConnection;->handleNewFrameCount(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing frame count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, 0x1

    .line 234
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/WebsocketConnection;->handleNewFrameCount(I)V

    return-object p1
.end method

.method private handleIncomingFrame(Ljava/lang/String;)V
    .locals 1

    .line 240
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->resetKeepAlive()V

    .line 241
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/WebsocketConnection;->appendFrame(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/WebsocketConnection;->extractFrameCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 246
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/WebsocketConnection;->appendFrame(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleNewFrameCount(I)V
    .locals 3

    int-to-long v0, p1

    .line 216
    iput-wide v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    const-string p1, ""

    .line 217
    iput-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frame:Ljava/lang/String;

    .line 218
    iget-object p1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandleNewFrameCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->totalFrames:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private isBuffering()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->frame:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nop()Ljava/lang/Runnable;
    .locals 1

    .line 262
    new-instance v0, Lcom/firebase/client/realtime/WebsocketConnection$3;

    invoke-direct {v0, p0}, Lcom/firebase/client/realtime/WebsocketConnection$3;-><init>(Lcom/firebase/client/realtime/WebsocketConnection;)V

    return-object v0
.end method

.method private onClosed()V
    .locals 2

    .line 279
    iget-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "closing itself"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    .line 284
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 285
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method private resetKeepAlive()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 253
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 254
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset keepAlive. Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Reset keepAlive"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->nop()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xafc8

    invoke-interface {v0, v1, v2, v3}, Lcom/firebase/client/RunLoop;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->keepAlive:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private shutdown()V
    .locals 2

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    .line 291
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->delegate:Lcom/firebase/client/realtime/WebsocketConnection$Delegate;

    iget-boolean v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->everConnected:Z

    invoke-interface {v0, v1}, Lcom/firebase/client/realtime/WebsocketConnection$Delegate;->onDisconnect(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "websocket is being closed"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->isClosed:Z

    .line 173
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->close()V

    return-void
.end method

.method public open()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    invoke-interface {v0}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->connect()V

    .line 159
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/realtime/WebsocketConnection$2;

    invoke-direct {v1, p0}, Lcom/firebase/client/realtime/WebsocketConnection$2;-><init>(Lcom/firebase/client/realtime/WebsocketConnection;)V

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Lcom/firebase/client/RunLoop;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->connectTimeout:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public send(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->resetKeepAlive()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/firebase/client/realtime/WebsocketConnection;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4000

    .line 181
    invoke-static {v0, v1}, Lcom/firebase/client/utilities/Utilities;->splitIntoFrames(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 182
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 183
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->send(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 186
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/firebase/client/realtime/WebsocketConnection;->conn:Lcom/firebase/client/realtime/WebsocketConnection$WSClient;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lcom/firebase/client/realtime/WebsocketConnection$WSClient;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    iget-object v1, p0, Lcom/firebase/client/realtime/WebsocketConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to serialize message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    invoke-direct {p0}, Lcom/firebase/client/realtime/WebsocketConnection;->shutdown()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
