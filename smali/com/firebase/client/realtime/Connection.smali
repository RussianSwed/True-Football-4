.class public Lcom/firebase/client/realtime/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/firebase/client/realtime/WebsocketConnection$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/realtime/Connection$State;,
        Lcom/firebase/client/realtime/Connection$Delegate;
    }
.end annotation


# static fields
.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "t"

.field private static final REQUEST_TYPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE:Ljava/lang/String; = "c"

.field private static final SERVER_CONTROL_MESSAGE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_CONTROL_MESSAGE_HELLO:Ljava/lang/String; = "h"

.field private static final SERVER_CONTROL_MESSAGE_RESET:Ljava/lang/String; = "r"

.field private static final SERVER_CONTROL_MESSAGE_SHUTDOWN:Ljava/lang/String; = "s"

.field private static final SERVER_CONTROL_MESSAGE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_DATA_MESSAGE:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_DATA:Ljava/lang/String; = "d"

.field private static final SERVER_ENVELOPE_TYPE:Ljava/lang/String; = "t"

.field private static final SERVER_HELLO_HOST:Ljava/lang/String; = "h"

.field private static final SERVER_HELLO_TIMESTAMP:Ljava/lang/String; = "ts"

.field private static connectionIds:J


# instance fields
.field private conn:Lcom/firebase/client/realtime/WebsocketConnection;

.field private delegate:Lcom/firebase/client/realtime/Connection$Delegate;

.field private logger:Lcom/firebase/client/utilities/LogWrapper;

.field private repoInfo:Lcom/firebase/client/core/RepoInfo;

.field private state:Lcom/firebase/client/realtime/Connection$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/realtime/Connection$Delegate;)V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-wide v0, Lcom/firebase/client/realtime/Connection;->connectionIds:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/firebase/client/realtime/Connection;->connectionIds:J

    .line 56
    iput-object p2, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    .line 57
    iput-object p3, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conn_"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Connection"

    invoke-virtual {p1, v0, p3}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p3

    iput-object p3, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 59
    sget-object p3, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTING:Lcom/firebase/client/realtime/Connection$State;

    iput-object p3, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    .line 60
    new-instance p3, Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-direct {p3, p1, p2, p0}, Lcom/firebase/client/realtime/WebsocketConnection;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/realtime/WebsocketConnection$Delegate;)V

    iput-object p3, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    return-void
.end method

.method private onConnectionReady(J)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "realtime connection established"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTED:Lcom/firebase/client/realtime/Connection$State;

    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    .line 186
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/realtime/Connection$Delegate;->onReady(J)V

    return-void
.end method

.method private onConnectionShutdown(Ljava/lang/String;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Connection shutdown command received. Shutting down..."

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/firebase/client/realtime/Connection$Delegate;->onKill(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V

    return-void
.end method

.method private onControlMessage(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got control message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "t"

    .line 141
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "s"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "d"

    if-eqz v1, :cond_0

    .line 144
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/Connection;->onConnectionShutdown(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "r"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/Connection;->onReset(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "h"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 152
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/Connection;->onHandshake(Ljava/util/Map;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unknown control message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got invalid control message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse control message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V

    :goto_0
    return-void
.end method

.method private onDataMessage(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received data message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    invoke-interface {v0, p1}, Lcom/firebase/client/realtime/Connection$Delegate;->onDataMessage(Ljava/util/Map;)V

    return-void
.end method

.method private onHandshake(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ts"

    .line 173
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "h"

    .line 174
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iput-object p1, v2, Lcom/firebase/client/core/RepoInfo;->internalHost:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    sget-object v2, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTING:Lcom/firebase/client/realtime/Connection$State;

    if-ne p1, v2, :cond_0

    .line 178
    iget-object p1, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-virtual {p1}, Lcom/firebase/client/realtime/WebsocketConnection;->start()V

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/firebase/client/realtime/Connection;->onConnectionReady(J)V

    :cond_0
    return-void
.end method

.method private onReset(Ljava/lang/String;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a reset; killing connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iget-object v2, v2, Lcom/firebase/client/core/RepoInfo;->internalHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; instead connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    iput-object p1, v0, Lcom/firebase/client/core/RepoInfo;->internalHost:Ljava/lang/String;

    return-void
.end method

.method private sendData(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    sget-object v1, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTED:Lcom/firebase/client/realtime/Connection$State;

    if-eq v0, v1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v0, "Tried to send on an unconnected connection"

    invoke-virtual {p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-virtual {v0, p1}, Lcom/firebase/client/realtime/WebsocketConnection;->send(Ljava/util/Map;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    sget-object v1, Lcom/firebase/client/realtime/Connection$State;->REALTIME_DISCONNECTED:Lcom/firebase/client/realtime/Connection$State;

    if-eq v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "closing realtime connection"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/firebase/client/realtime/Connection$State;->REALTIME_DISCONNECTED:Lcom/firebase/client/realtime/Connection$State;

    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    .line 73
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->close()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->delegate:Lcom/firebase/client/realtime/Connection$Delegate;

    invoke-interface {v0}, Lcom/firebase/client/realtime/Connection$Delegate;->onDisconnect()V

    :cond_1
    return-void
.end method

.method public onDisconnect(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/firebase/client/realtime/Connection;->state:Lcom/firebase/client/realtime/Connection$State;

    sget-object v0, Lcom/firebase/client/realtime/Connection$State;->REALTIME_CONNECTING:Lcom/firebase/client/realtime/Connection$State;

    if-ne p1, v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v0, "Realtime connection failed"

    invoke-virtual {p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/firebase/client/realtime/Connection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-virtual {p1}, Lcom/firebase/client/core/RepoInfo;->isCacheableHost()Z

    move-result p1

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v0, "Realtime connection lost"

    invoke-virtual {p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V

    return-void
.end method

.method public onMessage(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "d"

    :try_start_0
    const-string v1, "t"

    .line 95
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 99
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/Connection;->onDataMessage(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v2, "c"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 102
    invoke-direct {p0, p1}, Lcom/firebase/client/realtime/Connection;->onControlMessage(Ljava/util/Map;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unknown server message type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse server message: missing message type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse server message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/firebase/client/realtime/Connection;->close()V

    :goto_0
    return-void
.end method

.method public open()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "Opening a connection"

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/firebase/client/realtime/Connection;->conn:Lcom/firebase/client/realtime/WebsocketConnection;

    invoke-virtual {v0}, Lcom/firebase/client/realtime/WebsocketConnection;->open()V

    return-void
.end method

.method public sendRequest(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "t"

    const-string v2, "d"

    .line 86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-direct {p0, v0}, Lcom/firebase/client/realtime/Connection;->sendData(Ljava/util/Map;)V

    return-void
.end method
