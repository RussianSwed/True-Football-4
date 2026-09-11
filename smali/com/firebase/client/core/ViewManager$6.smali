.class Lcom/firebase/client/core/ViewManager$6;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ViewManager;->collectListeners(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;
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

.field final synthetic val$newListenerPaths:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ViewManager;Ljava/util/List;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$6;->this$0:Lcom/firebase/client/core/ViewManager;

    iput-object p2, p0, Lcom/firebase/client/core/ViewManager$6;->val$newListenerPaths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;)V"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/firebase/client/core/ViewManager$6;->val$newListenerPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/firebase/client/core/ViewManager$6;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-static {v1, p1}, Lcom/firebase/client/core/ViewManager;->access$400(Lcom/firebase/client/core/ViewManager;Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
