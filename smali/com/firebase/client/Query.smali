.class public Lcom/firebase/client/Query;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/Query$SingleEventProgress;
    }
.end annotation


# instance fields
.field protected final params:Lcom/firebase/client/core/view/QueryParams;

.field protected final path:Lcom/firebase/client/core/Path;

.field protected final repo:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    .line 36
    iput-object p2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    .line 37
    sget-object p1, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    iput-object p1, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    return-void
.end method

.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    .line 27
    iput-object p2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    .line 28
    iput-object p3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    .line 29
    invoke-virtual {p3}, Lcom/firebase/client/core/view/QueryParams;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance p1, Lcom/firebase/client/FirebaseException;

    const-string p2, "A query can only have two of start, end and limit"

    invoke-direct {p1, p2}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addEventCallback(Lcom/firebase/client/core/ListenerContainer;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Query$4;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Query$4;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addChildEventListener(Lcom/firebase/client/ChildEventListener;)Lcom/firebase/client/ChildEventListener;
    .locals 1

    .line 58
    new-instance v0, Lcom/firebase/client/core/ChildListenerContainer;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/ChildListenerContainer;-><init>(Lcom/firebase/client/ChildEventListener;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->addEventCallback(Lcom/firebase/client/core/ListenerContainer;)V

    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V
    .locals 3

    .line 80
    new-instance v0, Lcom/firebase/client/Query$SingleEventProgress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/firebase/client/Query$SingleEventProgress;-><init>(Lcom/firebase/client/Query$1;)V

    .line 81
    new-instance v1, Lcom/firebase/client/core/ValueListenerContainer;

    new-instance v2, Lcom/firebase/client/Query$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/firebase/client/Query$1;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/Query$SingleEventProgress;Lcom/firebase/client/ValueEventListener;)V

    invoke-direct {v1, v2}, Lcom/firebase/client/core/ValueListenerContainer;-><init>(Lcom/firebase/client/ValueEventListener;)V

    invoke-direct {p0, v1}, Lcom/firebase/client/Query;->addEventCallback(Lcom/firebase/client/core/ListenerContainer;)V

    return-void
.end method

.method public addValueEventListener(Lcom/firebase/client/ValueEventListener;)Lcom/firebase/client/ValueEventListener;
    .locals 1

    .line 47
    new-instance v0, Lcom/firebase/client/core/ValueListenerContainer;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/ValueListenerContainer;-><init>(Lcom/firebase/client/ValueEventListener;)V

    invoke-direct {p0, v0}, Lcom/firebase/client/Query;->addEventCallback(Lcom/firebase/client/core/ListenerContainer;)V

    return-object p1
.end method

.method public endAt()Lcom/firebase/client/Query;
    .locals 0

    return-object p0
.end method

.method public endAt(D)Lcom/firebase/client/Query;
    .locals 4

    .line 236
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/firebase/client/core/view/QueryParams;->endAt(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public endAt(DLjava/lang/String;)Lcom/firebase/client/Query;
    .locals 4

    .line 260
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-virtual {v3, p1, p3}, Lcom/firebase/client/core/view/QueryParams;->endAt(Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public endAt(Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 4

    .line 226
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/firebase/client/core/view/QueryParams;->endAt(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 4

    .line 248
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Lcom/firebase/client/core/view/QueryParams;->endAt(Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public getParams()Lcom/firebase/client/core/view/QueryParams;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public getRef()Lcom/firebase/client/Firebase;
    .locals 3

    .line 276
    new-instance v0, Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method public getRepo()Lcom/firebase/client/core/Repo;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    return-object v0
.end method

.method public limit(I)Lcom/firebase/client/Query;
    .locals 4

    .line 269
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {v3, p1}, Lcom/firebase/client/core/view/QueryParams;->limit(I)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public removeEventListener(Lcom/firebase/client/ChildEventListener;)V
    .locals 2

    const-string v0, "listener must not be null"

    .line 121
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Query$3;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Query$3;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/ChildEventListener;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeEventListener(Lcom/firebase/client/ValueEventListener;)V
    .locals 2

    const-string v0, "listener must not be null"

    .line 104
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    new-instance v1, Lcom/firebase/client/Query$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Query$2;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/ValueEventListener;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAt()Lcom/firebase/client/Query;
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0}, Lcom/firebase/client/Query;->startAt(Ljava/lang/String;)Lcom/firebase/client/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAt(D)Lcom/firebase/client/Query;
    .locals 4

    .line 170
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/firebase/client/core/view/QueryParams;->startAt(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public startAt(DLjava/lang/String;)Lcom/firebase/client/Query;
    .locals 4

    .line 194
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-virtual {v3, p1, p3}, Lcom/firebase/client/core/view/QueryParams;->startAt(Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public startAt(Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 4

    .line 160
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/firebase/client/core/view/QueryParams;->startAt(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/firebase/client/Query;
    .locals 4

    .line 182
    new-instance v0, Lcom/firebase/client/Query;

    iget-object v1, p0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v2, p0, Lcom/firebase/client/Query;->path:Lcom/firebase/client/core/Path;

    iget-object v3, p0, Lcom/firebase/client/Query;->params:Lcom/firebase/client/core/view/QueryParams;

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Lcom/firebase/client/core/view/QueryParams;->startAt(Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;)Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/firebase/client/Query;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryParams;)V

    return-object v0
.end method
