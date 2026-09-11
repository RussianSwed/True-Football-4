.class Lcom/firebase/client/core/Repo$11;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->runOnDisconnectEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$setIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Ljava/util/List;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$11;->val$setIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$600(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/ViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v1}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/FirebaseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/firebase/client/core/ViewManager;->pruneUpdate(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object p2

    .line 485
    iget-object v0, p0, Lcom/firebase/client/core/Repo$11;->val$setIds:Ljava/util/List;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v1}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/FirebaseData;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/firebase/client/core/FirebaseData;->set(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    iget-object p2, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {p2, p1}, Lcom/firebase/client/core/Repo;->access$800(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object p1

    .line 488
    iget-object p2, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {p2, p1}, Lcom/firebase/client/core/Repo;->access$500(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 489
    iget-object p2, p0, Lcom/firebase/client/core/Repo$11;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {p2}, Lcom/firebase/client/core/Repo;->access$600(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/ViewManager;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/firebase/client/core/Path;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V

    return-void
.end method
