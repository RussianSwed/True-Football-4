.class Lcom/firebase/client/core/view/QueryView$10;
.super Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;
.source "QueryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/view/QueryView;->filterChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/view/QueryView;

.field final synthetic val$addedChildren:Ljava/util/List;

.field final synthetic val$filteredChanges:Ljava/util/List;

.field final synthetic val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

.field final synthetic val$startAddingAt:Ljava/lang/String;

.field final synthetic val$startDeletingAt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/core/view/QueryView$WindowProgress;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/firebase/client/core/view/QueryView$10;->this$0:Lcom/firebase/client/core/view/QueryView;

    iput-object p2, p0, Lcom/firebase/client/core/view/QueryView$10;->val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

    iput-object p3, p0, Lcom/firebase/client/core/view/QueryView$10;->val$startAddingAt:Ljava/lang/String;

    iput-object p4, p0, Lcom/firebase/client/core/view/QueryView$10;->val$filteredChanges:Ljava/util/List;

    iput-object p5, p0, Lcom/firebase/client/core/view/QueryView$10;->val$addedChildren:Ljava/util/List;

    iput-object p6, p0, Lcom/firebase/client/core/view/QueryView$10;->val$startDeletingAt:Ljava/lang/String;

    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 262
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/core/view/QueryView$10;->shouldContinue(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Z

    move-result p1

    return p1
.end method

.method public shouldContinue(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Z
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryView$WindowProgress;->isAdding()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->val$startAddingAt:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/view/QueryView$WindowProgress;->setAdding(Z)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryView$WindowProgress;->isAdding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryView$WindowProgress;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryView$WindowProgress;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->val$filteredChanges:Ljava/util/List;

    new-instance v2, Lcom/firebase/client/core/view/Change;

    sget-object v3, Lcom/firebase/client/core/Constants$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/Constants$EventType;

    invoke-direct {v2, v3, p2, p1}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object p2, p0, Lcom/firebase/client/core/view/QueryView$10;->this$0:Lcom/firebase/client/core/view/QueryView;

    iget-object v0, p2, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    iput-object v0, p2, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryView$WindowProgress;->isAdding()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->val$addedChildren:Ljava/util/List;

    new-instance v2, Lcom/firebase/client/core/view/Change;

    sget-object v3, Lcom/firebase/client/core/Constants$EventType;->CHILD_ADDED:Lcom/firebase/client/core/Constants$EventType;

    invoke-direct {v2, v3, p2, p1}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$10;->this$0:Lcom/firebase/client/core/view/QueryView;

    iget-object v2, v0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v2, p1, p2}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    iput-object p2, v0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 283
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/firebase/client/core/view/QueryView$10;->val$startAddingAt:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 284
    iget-object p2, p0, Lcom/firebase/client/core/view/QueryView$10;->val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

    invoke-virtual {p2, v1}, Lcom/firebase/client/core/view/QueryView$WindowProgress;->setAdding(Z)V

    .line 286
    :cond_4
    iget-object p2, p0, Lcom/firebase/client/core/view/QueryView$10;->val$startDeletingAt:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 287
    iget-object p1, p0, Lcom/firebase/client/core/view/QueryView$10;->val$progress:Lcom/firebase/client/core/view/QueryView$WindowProgress;

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/view/QueryView$WindowProgress;->setDeleting(Z)V

    :cond_5
    return v1
.end method
