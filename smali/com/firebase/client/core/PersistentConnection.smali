.class public Lcom/firebase/client/core/PersistentConnection;
.super Ljava/lang/Object;
.source "PersistentConnection.java"

# interfaces
.implements Lcom/firebase/client/realtime/Connection$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/PersistentConnection$AuthCredential;,
        Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;,
        Lcom/firebase/client/core/PersistentConnection$OutstandingPut;,
        Lcom/firebase/client/core/PersistentConnection$OutstandingListen;,
        Lcom/firebase/client/core/PersistentConnection$ResponseListener;,
        Lcom/firebase/client/core/PersistentConnection$Delegate;
    }
.end annotation


# static fields
.field private static final RECONNECT_MAX_DELAY:J = 0x7530L

.field private static final RECONNECT_MIN_DELAY:J = 0x3e8L

.field private static final RECONNECT_MULTIPLIER:D = 1.3

.field private static final RECONNECT_RESET_TIMEOUT:J = 0x7530L

.field private static final REQUEST_ACTION:Ljava/lang/String; = "a"

.field private static final REQUEST_ACTION_AUTH:Ljava/lang/String; = "auth"

.field private static final REQUEST_ACTION_LISTEN:Ljava/lang/String; = "l"

.field private static final REQUEST_ACTION_MERGE:Ljava/lang/String; = "m"

.field private static final REQUEST_ACTION_ONDISCONNECT_CANCEL:Ljava/lang/String; = "oc"

.field private static final REQUEST_ACTION_ONDISCONNECT_MERGE:Ljava/lang/String; = "om"

.field private static final REQUEST_ACTION_ONDISCONNECT_PUT:Ljava/lang/String; = "o"

.field private static final REQUEST_ACTION_PUT:Ljava/lang/String; = "p"

.field private static final REQUEST_ACTION_UNAUTH:Ljava/lang/String; = "unauth"

.field private static final REQUEST_ACTION_UNLISTEN:Ljava/lang/String; = "u"

.field private static final REQUEST_CREDENTIAL:Ljava/lang/String; = "cred"

.field private static final REQUEST_DATA_HASH:Ljava/lang/String; = "h"

.field private static final REQUEST_DATA_PAYLOAD:Ljava/lang/String; = "d"

.field private static final REQUEST_ERROR:Ljava/lang/String; = "error"

.field private static final REQUEST_NUMBER:Ljava/lang/String; = "r"

.field private static final REQUEST_PATH:Ljava/lang/String; = "p"

.field private static final REQUEST_PAYLOAD:Ljava/lang/String; = "b"

.field private static final REQUEST_QUERIES:Ljava/lang/String; = "q"

.field private static final REQUEST_STATUS:Ljava/lang/String; = "s"

.field private static final RESPONSE_FOR_REQUEST:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_ACTION:Ljava/lang/String; = "a"

.field private static final SERVER_ASYNC_AUTH_REVOKED:Ljava/lang/String; = "ac"

.field private static final SERVER_ASYNC_DATA_MERGE:Ljava/lang/String; = "m"

.field private static final SERVER_ASYNC_DATA_UPDATE:Ljava/lang/String; = "d"

.field private static final SERVER_ASYNC_LISTEN_CANCELLED:Ljava/lang/String; = "c"

.field private static final SERVER_ASYNC_PAYLOAD:Ljava/lang/String; = "b"

.field private static final SERVER_ASYNC_SECURITY_DEBUG:Ljava/lang/String; = "sd"

.field private static final SERVER_DATA_UPDATE_BODY:Ljava/lang/String; = "d"

.field private static final SERVER_DATA_UPDATE_PATH:Ljava/lang/String; = "p"

.field private static final SERVER_RESPONSE_DATA:Ljava/lang/String; = "d"

.field private static connectionIds:J


# instance fields
.field private authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

.field private connected:Z

.field private ctx:Lcom/firebase/client/core/Context;

.field private delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

.field private lastConnectionAttemptTime:J

.field private lastConnectionEstablishedTime:J

.field private listens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingListen;",
            ">;>;"
        }
    .end annotation
.end field

.field private logger:Lcom/firebase/client/utilities/LogWrapper;

.field private onDisconnectRequestQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;",
            ">;"
        }
    .end annotation
.end field

.field private outstandingPuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingPut;",
            ">;"
        }
    .end annotation
.end field

.field private putCounter:J

.field private random:Ljava/util/Random;

.field private realtime:Lcom/firebase/client/realtime/Connection;

.field private reconnectDelay:J

.field private reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

.field private repoInfo:Lcom/firebase/client/core/RepoInfo;

.field private requestCBHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/firebase/client/core/PersistentConnection$ResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field private requestCounter:J

.field private shouldReconnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/PersistentConnection$Delegate;)V
    .locals 2

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    const-wide/16 v0, 0x0

    .line 231
    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->putCounter:J

    .line 232
    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->requestCounter:J

    const-wide/16 v0, 0x3e8

    .line 233
    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    .line 246
    iput-object p3, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    .line 247
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    .line 248
    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    .line 249
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    .line 250
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->requestCBHash:Ljava/util/Map;

    .line 251
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    .line 252
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    .line 253
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->random:Ljava/util/Random;

    .line 254
    sget-wide p1, Lcom/firebase/client/core/PersistentConnection;->connectionIds:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    sput-wide v0, Lcom/firebase/client/core/PersistentConnection;->connectionIds:J

    .line 255
    iget-object p3, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pc_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PersistentConnection"

    invoke-virtual {p3, p2, p1}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-void
.end method

.method static synthetic access$200(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$AuthCredential;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/client/core/PersistentConnection;)Lcom/firebase/client/core/PersistentConnection$Delegate;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    return-object p0
.end method

.method static synthetic access$500(Lcom/firebase/client/core/PersistentConnection;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/firebase/client/core/PersistentConnection;)Ljava/util/Map;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700(Lcom/firebase/client/core/PersistentConnection;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Collection;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/PersistentConnection;->removeListen(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private cancelTransactions()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 501
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 503
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    .line 504
    invoke-virtual {v1}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v2

    const-string v3, "h"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-virtual {v1}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v1

    const-string v2, "disconnected"

    invoke-static {v2}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    .line 506
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleTimestamp(J)V
    .locals 2

    const-string v0, "handling timestamp"

    .line 665
    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 668
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "serverTimeOffset"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    invoke-interface {p1, v0}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onServerInfoUpdate(Ljava/util/Map;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private nextPutId()J
    .locals 4

    .line 690
    iget-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->putCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/firebase/client/core/PersistentConnection;->putCounter:J

    return-wide v0
.end method

.method private nextRequestNumber()J
    .locals 4

    .line 752
    iget-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->requestCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/firebase/client/core/PersistentConnection;->requestCounter:J

    return-wide v0
.end method

.method private onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    if-eqz v0, :cond_0

    .line 590
    invoke-static {p1, p2}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object p1

    .line 591
    iget-object p2, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {p2, p1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->onRevoked(Lcom/firebase/client/FirebaseError;)V

    const/4 p1, 0x0

    .line 592
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    :cond_0
    return-void
.end method

.method private onDataPush(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleServerMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    const-string v0, "d"

    .line 551
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "p"

    const-string v3, "m"

    if-nez v1, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "c"

    .line 557
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 559
    invoke-direct {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->onListenRevoked(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "ac"

    .line 560
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "s"

    .line 561
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 562
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/PersistentConnection;->onAuthRevoked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "sd"

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 565
    invoke-direct {p0, p2}, Lcom/firebase/client/core/PersistentConnection;->onSecurityDebugPacket(Ljava/util/Map;)V

    goto :goto_1

    .line 567
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized action from server: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 552
    :cond_4
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 554
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 555
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 556
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    invoke-interface {v0, v1, p2, p1}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onDataUpdate(Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    return-void
.end method

.method private onListenRevoked(Ljava/lang/String;)V
    .locals 3

    .line 574
    new-instance v0, Lcom/firebase/client/core/Path;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/firebase/client/core/PersistentConnection;->removeListen(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "permission_denied"

    .line 577
    invoke-static {v1}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v1

    .line 578
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 579
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    invoke-virtual {v2}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 582
    invoke-interface {v2, v1, v0}, Lcom/firebase/client/Firebase$CompletionListener;->onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onSecurityDebugPacket(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->logger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v1, "msg"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->info(Ljava/lang/String;)V

    return-void
.end method

.method private putInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Ljava/lang/String;)V
    .locals 2

    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    .line 676
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "d"

    .line 677
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    const-string p2, "h"

    .line 679
    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->nextPutId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 683
    iget-object p3, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    new-instance p5, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    const/4 v1, 0x0

    invoke-direct {p5, p1, v0, p4, v1}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V

    invoke-interface {p3, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-boolean p1, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    if-eqz p1, :cond_1

    .line 685
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/PersistentConnection;->sendPut(J)V

    :cond_1
    return-void
.end method

.method private removeListen(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingListen;",
            ">;"
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removing params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 525
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    if-eqz v2, :cond_1

    .line 527
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 529
    iget-object p2, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    const/4 p2, 0x0

    aput-object v2, p1, p2

    .line 531
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 537
    :cond_2
    iget-object p2, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_3

    return-object v1

    .line 541
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method private restoreState()V
    .locals 7

    const-string v0, "calling restore state"

    .line 627
    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->tryAuth()V

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "outstanding listens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 635
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 637
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 638
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoring query dict: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 640
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 641
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring listens for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 643
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    .line 644
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found listen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v4}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getParams()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v4

    invoke-direct {p0, v1, v5, v4}, Lcom/firebase/client/core/PersistentConnection;->sendListen(Ljava/lang/String;Ljava/util/Set;Lcom/firebase/client/Firebase$CompletionListener;)V

    goto :goto_0

    .line 650
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 651
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 652
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 653
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/firebase/client/core/PersistentConnection;->sendPut(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 657
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    .line 659
    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v0

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/firebase/client/core/PersistentConnection;->sendOnDisconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/core/PersistentConnection$ResponseListener;",
            ")V"
        }
    .end annotation

    .line 742
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->nextRequestNumber()J

    move-result-wide v0

    .line 743
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 744
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "r"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "a"

    .line 745
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "b"

    .line 746
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    invoke-virtual {p1, v2}, Lcom/firebase/client/realtime/Connection;->sendRequest(Ljava/util/Map;)V

    .line 748
    iget-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendListen(Ljava/lang/String;Ljava/util/Set;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    .line 720
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-static {p2}, Lcom/firebase/client/core/view/QueryParams;->getQueryObjects(Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    const-string v1, "q"

    .line 723
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    iget-object p2, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    invoke-interface {p2, p1}, Lcom/firebase/client/core/PersistentConnection$Delegate;->getServerDataHashForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "h"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    new-instance p2, Lcom/firebase/client/core/PersistentConnection$6;

    invoke-direct {p2, p0, p1, p3}, Lcom/firebase/client/core/PersistentConnection$6;-><init>(Lcom/firebase/client/core/PersistentConnection;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V

    const-string p1, "l"

    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    return-void
.end method

.method private sendOnDisconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    .line 480
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "d"

    .line 481
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDisconnect "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 483
    new-instance p2, Lcom/firebase/client/core/PersistentConnection$3;

    invoke-direct {p2, p0, p4}, Lcom/firebase/client/core/PersistentConnection$3;-><init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    return-void
.end method

.method private sendPut(J)V
    .locals 9

    .line 694
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->outstandingPuts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;

    .line 695
    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;

    move-result-object v6

    .line 696
    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 698
    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$OutstandingPut;->getRequest()Ljava/util/Map;

    move-result-object v0

    new-instance v8, Lcom/firebase/client/core/PersistentConnection$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/firebase/client/core/PersistentConnection$5;-><init>(Lcom/firebase/client/core/PersistentConnection;Ljava/lang/String;JLcom/firebase/client/Firebase$CompletionListener;)V

    invoke-direct {p0, v7, v0, v8}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    return-void
.end method

.method private sendUnlisten(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;)V"
        }
    .end annotation

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "p"

    .line 513
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-static {p2}, Lcom/firebase/client/core/view/QueryParams;->getQueryObjects(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    const-string p2, "q"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "u"

    const/4 p2, 0x0

    .line 516
    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    return-void
.end method

.method private tryAuth()V
    .locals 3

    .line 602
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    if-eqz v0, :cond_0

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 604
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->getCredential()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cred"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    .line 606
    new-instance v2, Lcom/firebase/client/core/PersistentConnection$4;

    invoke-direct {v2, p0, v1}, Lcom/firebase/client/core/PersistentConnection$4;-><init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/PersistentConnection$AuthCredential;)V

    const-string v1, "auth"

    invoke-direct {p0, v1, v0, v2}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-direct {v0, p2, p1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;-><init>(Lcom/firebase/client/Firebase$AuthListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v0, p1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->replay(Lcom/firebase/client/Firebase$AuthListener;)V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->preempt()V

    .line 445
    new-instance v0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    invoke-direct {v0, p2, p1}, Lcom/firebase/client/core/PersistentConnection$AuthCredential;-><init>(Lcom/firebase/client/Firebase$AuthListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    .line 447
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Authenticating with credential: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->tryAuth()V

    return-void
.end method

.method public establishConnection()V
    .locals 3

    .line 259
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionAttemptTime:J

    const-wide/16 v0, 0x0

    .line 261
    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    .line 263
    new-instance v0, Lcom/firebase/client/realtime/Connection;

    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/firebase/client/realtime/Connection;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/realtime/Connection$Delegate;)V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    .line 264
    invoke-virtual {v0}, Lcom/firebase/client/realtime/Connection;->open()V

    :cond_0
    return-void
.end method

.method getListens()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;",
            "Lcom/firebase/client/core/PersistentConnection$OutstandingListen;",
            ">;>;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    return-object v0
.end method

.method interrupt()V
    .locals 3

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    .line 417
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v1}, Lcom/firebase/client/realtime/Connection;->close()V

    .line 419
    iput-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    goto :goto_0

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 422
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 423
    iput-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/firebase/client/core/PersistentConnection;->onDisconnect()V

    :goto_0
    return-void
.end method

.method public listen(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 4

    .line 281
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->getParamsSet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 282
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->getPath()Lcom/firebase/client/core/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object p1

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listening on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 286
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 287
    iget-object v2, p0, Lcom/firebase/client/core/PersistentConnection;->listens:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    if-eqz v2, :cond_1

    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listen not sent for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding listen params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 294
    new-instance v2, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v0, v3}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;-><init>(Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Set;Lcom/firebase/client/core/PersistentConnection$1;)V

    .line 295
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-boolean v1, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    if-eqz v1, :cond_2

    .line 297
    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/client/core/PersistentConnection;->sendListen(Ljava/lang/String;Ljava/util/Set;Lcom/firebase/client/Firebase$CompletionListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public merge(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 6

    const-string v1, "m"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 311
    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/PersistentConnection;->putInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Ljava/lang/String;)V

    return-void
.end method

.method public onDataMessage(Ljava/util/Map;)V
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

    const-string v0, "r"

    .line 315
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "b"

    if-eqz v1, :cond_0

    .line 318
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 319
    iget-object v3, p0, Lcom/firebase/client/core/PersistentConnection;->requestCBHash:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/PersistentConnection$ResponseListener;

    if-eqz v0, :cond_3

    .line 322
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 324
    invoke-interface {v0, p1}, Lcom/firebase/client/core/PersistentConnection$ResponseListener;->onResponse(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v0, "error"

    .line 326
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "a"

    .line 328
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 333
    invoke-direct {p0, v0, p1}, Lcom/firebase/client/core/PersistentConnection;->onDataPush(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 335
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 8

    const-string v0, "Got on disconnect"

    .line 341
    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    .line 343
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->cancelTransactions()V

    .line 346
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->requestCBHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 348
    :cond_0
    iget-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    sub-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    const-wide/16 v0, 0x3e8

    .line 351
    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    .line 353
    :cond_1
    iput-wide v4, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    .line 355
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionAttemptTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1

    .line 357
    iget-wide v6, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    sub-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 358
    iget-object v4, p0, Lcom/firebase/client/core/PersistentConnection;->random:Ljava/util/Random;

    long-to-int v1, v0

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reconnecting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 361
    iget-object v4, p0, Lcom/firebase/client/core/PersistentConnection;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v4}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v4

    new-instance v5, Lcom/firebase/client/core/PersistentConnection$1;

    invoke-direct {v5, p0}, Lcom/firebase/client/core/PersistentConnection$1;-><init>(Lcom/firebase/client/core/PersistentConnection;)V

    invoke-interface {v4, v5, v0, v1}, Lcom/firebase/client/RunLoop;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 368
    iget-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    long-to-double v0, v0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    double-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->reconnectDelay:J

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    invoke-interface {v0}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onDisconnect()V

    return-void
.end method

.method onDisconnectCancel(Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 8

    .line 407
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "oc"

    .line 408
    invoke-direct {p0, v1, p1, v0, p2}, Lcom/firebase/client/core/PersistentConnection;->sendOnDisconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v7, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v2, "oc"

    move-object v1, v7

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method onDisconnectMerge(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 398
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    if-eqz v0, :cond_0

    const-string v0, "om"

    .line 399
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/firebase/client/core/PersistentConnection;->sendOnDisconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v7, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    const/4 v6, 0x0

    const-string v2, "om"

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method onDisconnectPut(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 8

    .line 388
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    if-eqz v0, :cond_0

    const-string v0, "o"

    .line 389
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/firebase/client/core/PersistentConnection;->sendOnDisconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    goto :goto_0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->onDisconnectRequestQueue:Ljava/util/List;

    new-instance v7, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;

    const/4 v6, 0x0

    const-string v2, "o"

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onKill(Ljava/lang/String;)V
    .locals 2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firebase connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 375
    iput-boolean p1, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    return-void
.end method

.method public onReady(J)V
    .locals 2

    const-string v0, "onReady"

    .line 271
    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/core/PersistentConnection;->lastConnectionEstablishedTime:J

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/PersistentConnection;->handleTimestamp(J)V

    .line 276
    invoke-direct {p0}, Lcom/firebase/client/core/PersistentConnection;->restoreState()V

    .line 277
    iget-object p1, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    invoke-interface {p1}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onConnect()V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/firebase/client/core/PersistentConnection;->put(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Ljava/lang/String;)V
    .locals 6

    const-string v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 307
    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/core/PersistentConnection;->putInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Ljava/lang/String;)V

    return-void
.end method

.method resume()V
    .locals 1

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->shouldReconnect:Z

    .line 431
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->realtime:Lcom/firebase/client/realtime/Connection;

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/firebase/client/core/PersistentConnection;->establishConnection()V

    :cond_0
    return-void
.end method

.method unauth(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->authCredential:Lcom/firebase/client/core/PersistentConnection$AuthCredential;

    .line 453
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection;->delegate:Lcom/firebase/client/core/PersistentConnection$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/firebase/client/core/PersistentConnection$Delegate;->onAuthStatus(Z)V

    .line 455
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/firebase/client/core/PersistentConnection$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/PersistentConnection$2;-><init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/Firebase$CompletionListener;)V

    const-string p1, "unauth"

    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/client/core/PersistentConnection;->sendAction(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/core/PersistentConnection$ResponseListener;)V

    :cond_0
    return-void
.end method

.method unlisten(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;)V"
        }
    .end annotation

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unlistening on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/core/PersistentConnection;->log(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/PersistentConnection;->removeListen(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 382
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection;->connected:Z

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/PersistentConnection;->sendUnlisten(Ljava/lang/String;Ljava/util/Set;)V

    :cond_1
    return-void
.end method
