.class final Lcom/firebase/client/core/FirebaseData$1;
.super Ljava/lang/Object;
.source "FirebaseData.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/FirebaseData;->mergeSnapshotNodes(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;)Lcom/firebase/client/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pendingNode:Lcom/firebase/client/snapshot/Node;

.field final synthetic val$serverData:Lcom/firebase/client/core/SnapshotHolder;

.field final synthetic val$serverNode:Lcom/firebase/client/snapshot/Node;


# direct methods
.method constructor <init>(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/firebase/client/core/FirebaseData$1;->val$serverNode:Lcom/firebase/client/snapshot/Node;

    iput-object p2, p0, Lcom/firebase/client/core/FirebaseData$1;->val$pendingNode:Lcom/firebase/client/snapshot/Node;

    iput-object p3, p0, Lcom/firebase/client/core/FirebaseData$1;->val$serverData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getName()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/firebase/client/core/FirebaseData$1;->val$serverNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, v0}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/firebase/client/core/FirebaseData$1;->val$pendingNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v2, v0}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    .line 45
    invoke-static {v1, v2, p1}, Lcom/firebase/client/core/FirebaseData;->access$000(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/utilities/Tree;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    .line 46
    iget-object v1, p0, Lcom/firebase/client/core/FirebaseData$1;->val$serverData:Lcom/firebase/client/core/SnapshotHolder;

    new-instance v2, Lcom/firebase/client/core/Path;

    invoke-direct {v2, v0}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    return-void
.end method
