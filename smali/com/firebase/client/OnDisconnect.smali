.class public Lcom/firebase/client/OnDisconnect;
.super Ljava/lang/Object;
.source "OnDisconnect.java"


# static fields
.field private static final mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private path:Lcom/firebase/client/core/Path;

.field private repo:Lcom/firebase/client/core/Repo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/firebase/client/OnDisconnect;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    .line 42
    iput-object p2, p0, Lcom/firebase/client/OnDisconnect;->path:Lcom/firebase/client/core/Path;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/OnDisconnect;)Lcom/firebase/client/core/Path;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/firebase/client/OnDisconnect;->path:Lcom/firebase/client/core/Path;

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/client/OnDisconnect;)Lcom/firebase/client/core/Repo;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    return-object p0
.end method

.method private onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/firebase/client/OnDisconnect;->path:Lcom/firebase/client/core/Path;

    invoke-static {v0}, Lcom/firebase/client/utilities/Validation;->validateWritablePath(Lcom/firebase/client/core/Path;)V

    .line 156
    :try_start_0
    sget-object v0, Lcom/firebase/client/OnDisconnect;->mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 159
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :try_start_2
    invoke-static {p1, p2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    new-instance v0, Lcom/firebase/client/OnDisconnect$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/firebase/client/OnDisconnect$1;-><init>(Lcom/firebase/client/OnDisconnect;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {p2, v0}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 159
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 168
    new-instance p2, Lcom/firebase/client/FirebaseException;

    const-string p3, "Failed to parse to snapshot"

    invoke-direct {p2, p3, p1}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Lcom/firebase/client/OnDisconnect;->cancel(Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public cancel(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/OnDisconnect$3;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/OnDisconnect$3;-><init>(Lcom/firebase/client/OnDisconnect;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeValue()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0}, Lcom/firebase/client/OnDisconnect;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public removeValue(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/firebase/client/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    .line 56
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;D)V
    .locals 0

    .line 86
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;DLcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 133
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 1

    .line 101
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 117
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 149
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/OnDisconnect;->onDisconnectSetInternal(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public updateChildren(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/OnDisconnect;->updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public updateChildren(Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/OnDisconnect;->repo:Lcom/firebase/client/core/Repo;

    new-instance v2, Lcom/firebase/client/OnDisconnect$2;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/firebase/client/OnDisconnect$2;-><init>(Lcom/firebase/client/OnDisconnect;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method
