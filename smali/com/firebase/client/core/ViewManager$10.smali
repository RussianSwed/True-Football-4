.class Lcom/firebase/client/core/ViewManager$10;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ViewManager;->markQueriesComplete(Lcom/firebase/client/core/Path;Z)V
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


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ViewManager;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$10;->this$0:Lcom/firebase/client/core/ViewManager;

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
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;)V"
        }
    .end annotation

    .line 552
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/client/core/view/QueryMap;

    .line 553
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$10;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-static {v0}, Lcom/firebase/client/core/ViewManager;->access$100(Lcom/firebase/client/core/ViewManager;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking queryMap complete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->markComplete()V

    :cond_0
    return-void
.end method
