.class Lcom/firebase/client/core/ViewManager$7;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/ViewManager;

.field final synthetic val$changePath:Lcom/firebase/client/core/Path;

.field final synthetic val$completePaths:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/Path;Ljava/util/List;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$7;->this$0:Lcom/firebase/client/core/ViewManager;

    iput-object p2, p0, Lcom/firebase/client/core/ViewManager$7;->val$changePath:Lcom/firebase/client/core/Path;

    iput-object p3, p0, Lcom/firebase/client/core/ViewManager$7;->val$completePaths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiff(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V
    .locals 4
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

    .line 335
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$7;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-static {v0}, Lcom/firebase/client/core/ViewManager;->access$100(Lcom/firebase/client/core/ViewManager;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Doing onDiff with changes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v2, "null changes"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$7;->val$changePath:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 340
    :goto_1
    iget-object v2, p0, Lcom/firebase/client/core/ViewManager$7;->val$completePaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 341
    iget-object v2, p0, Lcom/firebase/client/core/ViewManager$7;->val$completePaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Path;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/Path;->contains(Lcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 348
    iget-object v2, p0, Lcom/firebase/client/core/ViewManager$7;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-static {v2, p1, v0}, Lcom/firebase/client/core/ViewManager;->access$300(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/Path;Z)V

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$7;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-static {v0, p1, p2, p3}, Lcom/firebase/client/core/ViewManager;->access$500(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V

    if-eqz v1, :cond_5

    .line 352
    iget-object p2, p0, Lcom/firebase/client/core/ViewManager$7;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-static {p2, p1, v3}, Lcom/firebase/client/core/ViewManager;->access$300(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/Path;Z)V

    goto :goto_3

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$7;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-static {v0, p1, p2, p3}, Lcom/firebase/client/core/ViewManager;->access$500(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V

    :cond_5
    :goto_3
    return-void
.end method
