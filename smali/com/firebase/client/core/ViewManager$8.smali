.class Lcom/firebase/client/core/ViewManager$8;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ViewManager;->pruneObjectToListeners(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<",
        "Lcom/firebase/client/core/view/QueryMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/ViewManager;

.field final synthetic val$mergedData:Lcom/firebase/client/core/SnapshotHolder;

.field final synthetic val$newNode:Lcom/firebase/client/snapshot/Node;

.field final synthetic val$snapshots:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/snapshot/Node;Ljava/util/List;Lcom/firebase/client/core/SnapshotHolder;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$8;->this$0:Lcom/firebase/client/core/ViewManager;

    iput-object p2, p0, Lcom/firebase/client/core/ViewManager$8;->val$newNode:Lcom/firebase/client/snapshot/Node;

    iput-object p3, p0, Lcom/firebase/client/core/ViewManager$8;->val$snapshots:Ljava/util/List;

    iput-object p4, p0, Lcom/firebase/client/core/ViewManager$8;->val$mergedData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;)V"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$8;->val$newNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$8;->val$newNode:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 457
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/core/ViewManager$8;->val$snapshots:Ljava/util/List;

    iget-object v2, p0, Lcom/firebase/client/core/ViewManager$8;->this$0:Lcom/firebase/client/core/ViewManager;

    iget-object v3, p0, Lcom/firebase/client/core/ViewManager$8;->val$mergedData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-static {v2, v0, p1, v3}, Lcom/firebase/client/core/ViewManager;->access$600(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
