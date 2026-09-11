.class Lcom/firebase/client/core/FirebaseData;
.super Ljava/lang/Object;
.source "FirebaseData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentSetId:J

.field private mergedData:Lcom/firebase/client/core/SnapshotHolder;

.field private pendingPuts:Lcom/firebase/client/core/utilities/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private serverData:Lcom/firebase/client/core/SnapshotHolder;

.field private visibleData:Lcom/firebase/client/core/SnapshotHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/firebase/client/core/FirebaseData;->currentSetId:J

    .line 60
    new-instance v0, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0}, Lcom/firebase/client/core/SnapshotHolder;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/FirebaseData;->serverData:Lcom/firebase/client/core/SnapshotHolder;

    .line 61
    new-instance v0, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0}, Lcom/firebase/client/core/SnapshotHolder;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/FirebaseData;->mergedData:Lcom/firebase/client/core/SnapshotHolder;

    .line 62
    new-instance v0, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0}, Lcom/firebase/client/core/SnapshotHolder;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/FirebaseData;->visibleData:Lcom/firebase/client/core/SnapshotHolder;

    .line 63
    new-instance v0, Lcom/firebase/client/core/utilities/Tree;

    invoke-direct {v0}, Lcom/firebase/client/core/utilities/Tree;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/FirebaseData;->pendingPuts:Lcom/firebase/client/core/utilities/Tree;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;)Lcom/firebase/client/snapshot/Node;
    .locals 0

    .line 18
    invoke-static {p0, p1, p2}, Lcom/firebase/client/core/FirebaseData;->mergeSnapshotNodes(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    return-object p0
.end method

.method private static mergeSnapshotNodes(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;)Lcom/firebase/client/snapshot/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/firebase/client/snapshot/Node;"
        }
    .end annotation

    .line 23
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object p1

    .line 36
    :cond_1
    new-instance v0, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0}, Lcom/firebase/client/core/SnapshotHolder;-><init>()V

    .line 37
    new-instance v1, Lcom/firebase/client/core/Path;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1, p0}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 39
    new-instance v2, Lcom/firebase/client/core/FirebaseData$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/firebase/client/core/FirebaseData$1;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)V

    invoke-virtual {p2, v2}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    return-object p0
.end method

.method private nextSetId()J
    .locals 4

    .line 131
    iget-wide v0, p0, Lcom/firebase/client/core/FirebaseData;->currentSetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/firebase/client/core/FirebaseData;->currentSetId:J

    return-wide v0
.end method


# virtual methods
.method clearPutIfMatching(JLcom/firebase/client/core/Path;)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/firebase/client/core/FirebaseData;->pendingPuts:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v0, p3}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object p3

    .line 109
    invoke-virtual {p3}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 111
    invoke-virtual {p3, p1}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method forget(Lcom/firebase/client/core/Path;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Path;",
            ">;)Z"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 167
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/firebase/client/core/FirebaseData;->serverData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/Path;

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/firebase/client/core/FirebaseData;->serverData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 172
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/firebase/client/core/FirebaseData;->serverData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/Path;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2, v3, v4}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/FirebaseData;->mergeServerAndPendingData(Lcom/firebase/client/core/Path;)Z

    move-result p1

    return p1
.end method

.method public getMergedData()Lcom/firebase/client/core/SnapshotHolder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/firebase/client/core/FirebaseData;->mergedData:Lcom/firebase/client/core/SnapshotHolder;

    return-object v0
.end method

.method public getServerData()Lcom/firebase/client/core/SnapshotHolder;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/firebase/client/core/FirebaseData;->serverData:Lcom/firebase/client/core/SnapshotHolder;

    return-object v0
.end method

.method public getVisibleData()Lcom/firebase/client/core/SnapshotHolder;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/firebase/client/core/FirebaseData;->visibleData:Lcom/firebase/client/core/SnapshotHolder;

    return-object v0
.end method

.method markPaths(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Path;",
            ">;)J"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lcom/firebase/client/core/FirebaseData;->nextSetId()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 101
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/firebase/client/core/FirebaseData;->pendingPuts:Lcom/firebase/client/core/utilities/Tree;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/Path;

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method mergeServerAndPendingData(Lcom/firebase/client/core/Path;)Z
    .locals 7

    .line 137
    iget-object v0, p0, Lcom/firebase/client/core/FirebaseData;->serverData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/firebase/client/core/FirebaseData;->mergedData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/firebase/client/core/FirebaseData;->pendingPuts:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v2

    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 144
    invoke-virtual {v3}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    .line 148
    :cond_0
    invoke-virtual {v3}, Lcom/firebase/client/core/utilities/Tree;->getParent()Lcom/firebase/client/core/utilities/Tree;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    return v5

    .line 154
    :cond_2
    invoke-static {v0, v1, v2}, Lcom/firebase/client/core/FirebaseData;->mergeSnapshotNodes(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    if-eq v0, v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/firebase/client/core/FirebaseData;->mergedData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v1, p1, v0}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    return v4

    :cond_3
    return v5
.end method

.method set(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/utilities/tuple/NodeAndPath;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/firebase/client/utilities/tuple/PathAndId;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 87
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    .line 89
    invoke-virtual {v1}, Lcom/firebase/client/utilities/tuple/NodeAndPath;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 90
    invoke-virtual {v1}, Lcom/firebase/client/utilities/tuple/NodeAndPath;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 91
    invoke-direct {p0}, Lcom/firebase/client/core/FirebaseData;->nextSetId()J

    move-result-wide v3

    .line 92
    iget-object v5, p0, Lcom/firebase/client/core/FirebaseData;->pendingPuts:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v5, v2}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 93
    iget-object v5, p0, Lcom/firebase/client/core/FirebaseData;->mergedData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v5, v2, v1}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 94
    new-instance v1, Lcom/firebase/client/utilities/tuple/PathAndId;

    invoke-direct {v1, v2, v3, v4}, Lcom/firebase/client/utilities/tuple/PathAndId;-><init>(Lcom/firebase/client/core/Path;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method setCompleted(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/utilities/tuple/PathAndId;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 119
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/utilities/tuple/PathAndId;

    .line 121
    iget-object v1, p0, Lcom/firebase/client/core/FirebaseData;->pendingPuts:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/tuple/PathAndId;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 124
    invoke-virtual {v0}, Lcom/firebase/client/utilities/tuple/PathAndId;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 125
    invoke-virtual {v1, v0}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateServerData(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/firebase/client/core/FirebaseData;->serverData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/firebase/client/core/FirebaseData;->mergeServerAndPendingData(Lcom/firebase/client/core/Path;)Z

    move-result p1

    return p1
.end method
