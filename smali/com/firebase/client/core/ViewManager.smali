.class public Lcom/firebase/client/core/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# instance fields
.field private connection:Lcom/firebase/client/core/PersistentConnection;

.field private ctx:Lcom/firebase/client/core/Context;

.field private data:Lcom/firebase/client/core/SnapshotHolder;

.field private logger:Lcom/firebase/client/utilities/LogWrapper;

.field private oldDataNode:Lcom/firebase/client/snapshot/Node;

.field private viewsTree:Lcom/firebase/client/core/utilities/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lcom/firebase/client/core/ViewManager;->ctx:Lcom/firebase/client/core/Context;

    const-string v0, "ViewManager"

    .line 32
    invoke-virtual {p3, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p3

    iput-object p3, p0, Lcom/firebase/client/core/ViewManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    .line 33
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    .line 34
    iput-object p2, p0, Lcom/firebase/client/core/ViewManager;->data:Lcom/firebase/client/core/SnapshotHolder;

    .line 35
    new-instance p1, Lcom/firebase/client/core/utilities/Tree;

    invoke-direct {p1}, Lcom/firebase/client/core/utilities/Tree;-><init>()V

    iput-object p1, p0, Lcom/firebase/client/core/ViewManager;->viewsTree:Lcom/firebase/client/core/utilities/Tree;

    .line 36
    invoke-virtual {p2}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/core/ViewManager;->oldDataNode:Lcom/firebase/client/snapshot/Node;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/ViewManager;)Lcom/firebase/client/core/PersistentConnection;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/ViewManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/firebase/client/core/ViewManager;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/ViewManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/ViewManager;->raiseCancelEvents(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/FirebaseError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/Path;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/ViewManager;->markQueriesComplete(Lcom/firebase/client/core/Path;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/ViewManager;->collectListeners(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/core/ViewManager;->processChanges(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/core/ViewManager;->pruneObjectToListeners(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private collectListeners(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Path;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/QueryMap;

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryMap;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    invoke-direct {p0, v1}, Lcom/firebase/client/core/ViewManager;->startListening(Lcom/firebase/client/core/view/QueryMap;)Lcom/firebase/client/core/view/QueryMap$StopListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/view/QueryMap;->activate(Lcom/firebase/client/core/view/QueryMap$StopListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryMap;->hasDefaultQuery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryMap;->getPath()Lcom/firebase/client/core/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_4

    .line 265
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 266
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryMap;->getViews()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 267
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 268
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/view/View;

    invoke-virtual {v4}, Lcom/firebase/client/core/view/View;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 269
    invoke-virtual {v4}, Lcom/firebase/client/snapshot/ChildrenNode;->getIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 270
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 271
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 273
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 275
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v1}, Lcom/firebase/client/core/view/QueryMap;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_4
    new-instance v1, Lcom/firebase/client/core/ViewManager$6;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/core/ViewManager$6;-><init>(Lcom/firebase/client/core/ViewManager;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    :goto_1
    return-object v0
.end method

.method private createView(Lcom/firebase/client/Query;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Context;)Lcom/firebase/client/core/view/View;
    .locals 1

    .line 318
    invoke-virtual {p1}, Lcom/firebase/client/Query;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryParams;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Lcom/firebase/client/core/view/DefaultView;

    invoke-direct {v0, p1, p2, p3}, Lcom/firebase/client/core/view/DefaultView;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Context;)V

    return-object v0

    .line 321
    :cond_0
    new-instance v0, Lcom/firebase/client/core/view/QueryView;

    invoke-direct {v0, p1, p2, p3}, Lcom/firebase/client/core/view/QueryView;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Context;)V

    return-object v0
.end method

.method private doRemoveQueries(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/ListenerContainer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QueryMap;",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/ListenerContainer;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->getParamsSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/view/QueryParams;

    if-eqz p2, :cond_1

    .line 299
    invoke-virtual {v2, p2}, Lcom/firebase/client/core/view/QueryParams;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    :cond_1
    invoke-virtual {p1, v2}, Lcom/firebase/client/core/view/QueryMap;->getView(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/view/View;

    move-result-object v3

    .line 301
    invoke-virtual {v3, p3}, Lcom/firebase/client/core/view/View;->removeCallback(Lcom/firebase/client/core/ListenerContainer;)V

    .line 302
    invoke-virtual {v3}, Lcom/firebase/client/core/view/View;->hasCallbacks()Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 306
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    :cond_2
    return-object v0
.end method

.method private ensureListening(Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;",
            "Lcom/firebase/client/core/view/View;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/QueryMap;

    .line 110
    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryMap;->hasActiveDefaultQuery()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/firebase/client/core/ViewManager;->hasActiveAncestor(Lcom/firebase/client/core/utilities/Tree;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryMap;->getParamsSet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 119
    :cond_1
    invoke-virtual {p2}, Lcom/firebase/client/core/view/View;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/firebase/client/core/view/QueryMap;->set(Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/view/View;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/firebase/client/core/ViewManager;->startListening(Lcom/firebase/client/core/view/QueryMap;)Lcom/firebase/client/core/view/QueryMap$StopListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/firebase/client/core/view/QueryMap;->activate(Lcom/firebase/client/core/view/QueryMap$StopListener;)V

    if-eqz v1, :cond_3

    .line 123
    iget-object v2, p0, Lcom/firebase/client/core/ViewManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {p2}, Lcom/firebase/client/core/view/View;->getQuery()Lcom/firebase/client/Query;

    move-result-object p2

    invoke-virtual {p2}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object p2

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2, v1}, Lcom/firebase/client/core/PersistentConnection;->unlisten(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 111
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/firebase/client/core/view/View;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/firebase/client/core/view/QueryMap;->set(Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/view/View;)V

    .line 127
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryMap;->hasActiveDefaultQuery()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 129
    new-instance p2, Lcom/firebase/client/core/ViewManager$3;

    invoke-direct {p2, p0}, Lcom/firebase/client/core/ViewManager$3;-><init>(Lcom/firebase/client/core/ViewManager;)V

    invoke-virtual {p1, p2}, Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    :cond_4
    return-void
.end method

.method private getAncestorUpdate(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/SnapshotHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/client/utilities/tuple/NodeAndPath;",
            ">;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager;->viewsTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getParent()Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    if-eqz v0, :cond_4

    .line 401
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/view/QueryMap;

    if-eqz v3, :cond_3

    .line 403
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryMap;->hasDefaultQuery()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 406
    new-instance v0, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    invoke-direct {v0, p2, p1}, Lcom/firebase/client/utilities/tuple/NodeAndPath;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 409
    :cond_0
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/firebase/client/core/ViewManager;->getChildRelevance(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/Map;

    move-result-object v3

    .line 411
    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/Tree;->getName()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 413
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/QueryView$ViewState;

    .line 414
    sget-object v3, Lcom/firebase/client/core/view/QueryView$ViewState;->IN_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/firebase/client/core/view/QueryView$ViewState;->ENTERING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 420
    :cond_1
    sget-object v3, Lcom/firebase/client/core/view/QueryView$ViewState;->LEAVING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    if-ne v1, v3, :cond_3

    .line 422
    new-instance v1, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lcom/firebase/client/utilities/tuple/NodeAndPath;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 417
    :cond_2
    :goto_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 418
    new-instance v0, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    invoke-direct {v0, p2, p1}, Lcom/firebase/client/utilities/tuple/NodeAndPath;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 432
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getParent()Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private getChildRelevance(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/core/view/QueryMap;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/SnapshotHolder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/core/view/QueryView$ViewState;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 501
    invoke-virtual {p2}, Lcom/firebase/client/core/view/QueryMap;->getViews()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 502
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 505
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/QueryView;

    .line 506
    invoke-virtual {v1, p1, p3, p4}, Lcom/firebase/client/core/view/QueryView;->getChildRelevance(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/Map;

    move-result-object v1

    .line 507
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 508
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 510
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 511
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/view/QueryView$ViewState;

    .line 512
    sget-object v4, Lcom/firebase/client/core/view/QueryView$ViewState;->IN_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    if-ne v2, v4, :cond_1

    .line 513
    sget-object v2, Lcom/firebase/client/core/view/QueryView$ViewState;->IN_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 515
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 516
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 518
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/firebase/client/core/view/QueryView$ViewState;

    if-ne v4, v2, :cond_3

    goto :goto_0

    .line 523
    :cond_3
    sget-object v2, Lcom/firebase/client/core/view/QueryView$ViewState;->IN_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 532
    :cond_4
    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result p1

    if-nez p1, :cond_5

    .line 533
    check-cast p3, Lcom/firebase/client/snapshot/ChildrenNode;

    new-instance p1, Lcom/firebase/client/core/ViewManager$9;

    invoke-direct {p1, p0, v0}, Lcom/firebase/client/core/ViewManager$9;-><init>(Lcom/firebase/client/core/ViewManager;Ljava/util/Map;)V

    invoke-virtual {p3, p1}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    :cond_5
    return-object v0
.end method

.method private hasActiveAncestor(Lcom/firebase/client/core/utilities/Tree;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;)Z"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/firebase/client/core/ViewManager$2;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/ViewManager$2;-><init>(Lcom/firebase/client/core/ViewManager;)V

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;)Z

    move-result p1

    return p1
.end method

.method private markQueriesComplete(Lcom/firebase/client/core/Path;Z)V
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking queries complete for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager;->viewsTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object p1

    .line 549
    new-instance v0, Lcom/firebase/client/core/ViewManager$10;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/ViewManager$10;-><init>(Lcom/firebase/client/core/ViewManager;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;ZZ)V

    return-void
.end method

.method private processChanges(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager;->viewsTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/client/core/view/QueryMap;

    if-nez p1, :cond_0

    return-void

    .line 567
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->getViews()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 568
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    invoke-virtual {v0, p2, p3}, Lcom/firebase/client/core/view/View;->processChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pruneNonDefaultQuery(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QueryMap;",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/SnapshotHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/client/utilities/tuple/NodeAndPath;",
            ">;"
        }
    .end annotation

    .line 466
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 467
    invoke-direct {p0, v0, p1, p3, p4}, Lcom/firebase/client/core/ViewManager;->getChildRelevance(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/Map;

    move-result-object p1

    .line 469
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 470
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 473
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 474
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 475
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/view/QueryView$ViewState;

    .line 476
    new-instance v5, Lcom/firebase/client/core/Path;

    invoke-direct {v5, v4}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 477
    sget-object v6, Lcom/firebase/client/core/view/QueryView$ViewState;->IN_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    if-eq v3, v6, :cond_2

    sget-object v6, Lcom/firebase/client/core/view/QueryView$ViewState;->ENTERING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    if-ne v3, v6, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    sget-object v6, Lcom/firebase/client/core/view/QueryView$ViewState;->LEAVING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    if-ne v3, v6, :cond_1

    .line 480
    new-instance v3, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/firebase/client/utilities/tuple/NodeAndPath;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {p3, v5}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {p2, v5}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v4

    invoke-direct {p0, v3, v4, p4}, Lcom/firebase/client/core/ViewManager;->pruneObjectToListeners(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 485
    :cond_1
    invoke-interface {p3, v5}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {p2, v5}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v4

    invoke-direct {p0, v3, v4, p4}, Lcom/firebase/client/core/ViewManager;->pruneObjectToListeners(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 478
    :cond_2
    :goto_1
    invoke-interface {p3, v4}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 495
    new-instance p2, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    invoke-direct {p2, v1, v0}, Lcom/firebase/client/utilities/tuple/NodeAndPath;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;)V

    invoke-interface {v2, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v2
.end method

.method private pruneObjectToListeners(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;",
            "Lcom/firebase/client/core/SnapshotHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/client/utilities/tuple/NodeAndPath;",
            ">;"
        }
    .end annotation

    .line 439
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/QueryMap;

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryMap;->hasDefaultQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/firebase/client/utilities/tuple/NodeAndPath;

    const/4 v0, 0x0

    .line 442
    new-instance v1, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->getPath()Lcom/firebase/client/core/Path;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/firebase/client/utilities/tuple/NodeAndPath;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;)V

    aput-object v1, p3, v0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 444
    :cond_0
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/firebase/client/core/ViewManager;->pruneNonDefaultQuery(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 447
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    new-instance v1, Lcom/firebase/client/core/ViewManager$8;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/firebase/client/core/ViewManager$8;-><init>(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/snapshot/Node;Ljava/util/List;Lcom/firebase/client/core/SnapshotHolder;)V

    invoke-virtual {p2, v1}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    return-object v0
.end method

.method private raiseCancelEvents(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .line 194
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->getViews()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/View;

    invoke-virtual {v1, p2}, Lcom/firebase/client/core/view/View;->raiseCancelEvents(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {p0, p1}, Lcom/firebase/client/core/ViewManager;->removeQueries(Lcom/firebase/client/core/view/QueryMap;)Ljava/util/List;

    return-void
.end method

.method private removeQueries(Lcom/firebase/client/core/view/QueryMap;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QueryMap;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Path;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, v0, v0}, Lcom/firebase/client/core/ViewManager;->removeQueries(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/ListenerContainer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private removeQueries(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/ListenerContainer;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/view/QueryMap;",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/ListenerContainer;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Path;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/firebase/client/core/ViewManager;->viewsTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v0

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/core/ViewManager;->doRemoveQueries(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/ListenerContainer;)Ljava/util/List;

    move-result-object p2

    .line 210
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->isEmpty()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 211
    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 214
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-direct {p0, v0}, Lcom/firebase/client/core/ViewManager;->hasActiveAncestor(Lcom/firebase/client/core/utilities/Tree;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 217
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getParent()Lcom/firebase/client/core/utilities/Tree;

    move-result-object p2

    const/4 p3, 0x0

    move-object v2, v0

    :goto_0
    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 220
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/view/QueryMap;

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {v2}, Lcom/firebase/client/core/utilities/Tree;->getName()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryMap;->getViews()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    if-nez p3, :cond_1

    .line 225
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/firebase/client/core/view/QueryView;

    invoke-virtual {p3, v2}, Lcom/firebase/client/core/view/QueryView;->hasChild(Ljava/lang/String;)Z

    move-result p3

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->getParent()Lcom/firebase/client/core/utilities/Tree;

    move-result-object v2

    move-object v5, v2

    move-object v2, p2

    move-object p2, v5

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->hasActiveDefaultQuery()Z

    move-result p2

    if-nez p2, :cond_3

    .line 236
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->removeStopListener()Lcom/firebase/client/core/view/QueryMap$StopListener;

    move-result-object p1

    .line 237
    invoke-direct {p0, v0}, Lcom/firebase/client/core/ViewManager;->collectListeners(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;

    move-result-object p2

    if-eqz p1, :cond_4

    .line 239
    invoke-interface {p1}, Lcom/firebase/client/core/view/QueryMap$StopListener;->stopListening()V

    goto :goto_2

    :cond_3
    move-object p2, v1

    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    return-object v1

    :cond_5
    return-object p2

    :cond_6
    return-object v1
.end method

.method private startListening(Lcom/firebase/client/core/view/QueryMap;)Lcom/firebase/client/core/view/QueryMap$StopListener;
    .locals 10

    .line 143
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v6

    .line 145
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->getParamsSet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 146
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->hasDefaultQuery()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 157
    new-instance v0, Lcom/firebase/client/core/ViewManager$1StopListener;

    invoke-direct {v0, p0, v7, p1}, Lcom/firebase/client/core/ViewManager$1StopListener;-><init>(Lcom/firebase/client/core/ViewManager;Ljava/util/Set;Lcom/firebase/client/core/view/QueryMap;)V

    .line 159
    iget-object v8, p0, Lcom/firebase/client/core/ViewManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    new-instance v9, Lcom/firebase/client/core/ViewManager$4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/firebase/client/core/ViewManager$4;-><init>(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/ViewManager$1StopListener;Ljava/lang/Boolean;Lcom/firebase/client/core/Path;Ljava/util/Set;)V

    invoke-virtual {v8, p1, v9}, Lcom/firebase/client/core/PersistentConnection;->listen(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-object v0

    .line 184
    :cond_0
    new-instance p1, Lcom/firebase/client/core/ViewManager$5;

    invoke-direct {p1, p0}, Lcom/firebase/client/core/ViewManager$5;-><init>(Lcom/firebase/client/core/ViewManager;)V

    return-object p1
.end method


# virtual methods
.method public addEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V
    .locals 5

    .line 40
    invoke-virtual {p1}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/firebase/client/core/ViewManager;->viewsTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/firebase/client/core/ViewManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callback for path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/view/QueryMap;

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Lcom/firebase/client/core/view/QueryMap;

    invoke-virtual {p1}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/firebase/client/core/view/QueryMap;-><init>(Lcom/firebase/client/core/Path;)V

    .line 48
    invoke-virtual {v1, v2}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/Query;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/core/view/QueryMap;->contains(Lcom/firebase/client/core/view/QueryParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 52
    iget-object v2, p0, Lcom/firebase/client/core/ViewManager;->data:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v2, v0}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/firebase/client/core/ViewManager;->ctx:Lcom/firebase/client/core/Context;

    invoke-direct {p0, p1, v2, v3}, Lcom/firebase/client/core/ViewManager;->createView(Lcom/firebase/client/Query;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Context;)Lcom/firebase/client/core/view/View;

    move-result-object p1

    .line 54
    invoke-direct {p0, v1, p1}, Lcom/firebase/client/core/ViewManager;->ensureListening(Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/view/View;)V

    .line 55
    invoke-virtual {p1, p2}, Lcom/firebase/client/core/view/View;->addCallback(Lcom/firebase/client/core/ListenerContainer;)V

    .line 57
    new-instance p2, Lcom/firebase/client/core/ViewManager$1;

    invoke-direct {p2, p0}, Lcom/firebase/client/core/ViewManager$1;-><init>(Lcom/firebase/client/core/ViewManager;)V

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/firebase/client/core/utilities/Tree;->forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;Z)Z

    move-result p2

    if-nez p2, :cond_2

    .line 72
    iget-object p2, p0, Lcom/firebase/client/core/ViewManager;->connection:Lcom/firebase/client/core/PersistentConnection;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/firebase/client/core/ViewManager;->data:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {p2, v0}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    .line 75
    invoke-virtual {p1}, Lcom/firebase/client/core/view/View;->markComplete()V

    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p1}, Lcom/firebase/client/Query;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/view/QueryMap;->getView(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/firebase/client/core/view/View;->addCallback(Lcom/firebase/client/core/ListenerContainer;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public pruneUpdate(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/SnapshotHolder;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/client/utilities/tuple/NodeAndPath;",
            ">;"
        }
    .end annotation

    .line 372
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/core/ViewManager;->getAncestorUpdate(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 374
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    .line 375
    invoke-virtual {v1}, Lcom/firebase/client/utilities/tuple/NodeAndPath;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/firebase/client/core/ViewManager;->viewsTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/view/QueryMap;

    if-eqz v2, :cond_3

    .line 385
    invoke-virtual {v2}, Lcom/firebase/client/core/view/QueryMap;->hasDefaultQuery()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    new-instance p3, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    invoke-direct {p3, p2, p1}, Lcom/firebase/client/utilities/tuple/NodeAndPath;-><init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_2
    invoke-direct {p0, v2, v1, p2, p3}, Lcom/firebase/client/core/ViewManager;->pruneNonDefaultQuery(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 391
    :cond_3
    invoke-direct {p0, p2, v1, p3}, Lcom/firebase/client/core/ViewManager;->pruneObjectToListeners(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method public raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Path;",
            ">;)V"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raising events for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager;->oldDataNode:Lcom/firebase/client/snapshot/Node;

    .line 329
    iget-object v1, p0, Lcom/firebase/client/core/ViewManager;->data:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v1}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 330
    iput-object v1, p0, Lcom/firebase/client/core/ViewManager;->oldDataNode:Lcom/firebase/client/snapshot/Node;

    .line 332
    iget-object v2, p0, Lcom/firebase/client/core/ViewManager;->viewsTree:Lcom/firebase/client/core/utilities/Tree;

    new-instance v3, Lcom/firebase/client/core/ViewManager$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/firebase/client/core/ViewManager$7;-><init>(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/Path;Ljava/util/List;)V

    invoke-static {v0, v1, p1, v2, v3}, Lcom/firebase/client/core/view/SnapshotDiffer;->diff(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;)V

    const/4 p2, 0x1

    .line 360
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/ViewManager;->markQueriesComplete(Lcom/firebase/client/core/Path;Z)V

    return-void
.end method

.method public removeEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/Query;",
            "Lcom/firebase/client/core/ListenerContainer;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Path;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/firebase/client/core/ViewManager;->viewsTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/QueryMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/Query;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v0, v1, p2}, Lcom/firebase/client/core/ViewManager;->removeQueries(Lcom/firebase/client/core/view/QueryMap;Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/ListenerContainer;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method updateOldData(Lcom/firebase/client/snapshot/Node;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager;->oldDataNode:Lcom/firebase/client/snapshot/Node;

    return-void
.end method
