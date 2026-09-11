.class Lcom/firebase/client/core/ViewManager$2;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ViewManager;->hasActiveAncestor(Lcom/firebase/client/core/utilities/Tree;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Tree$TreeFilter<",
        "Lcom/firebase/client/core/view/QueryMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/ViewManager;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ViewManager;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$2;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterTreeNode(Lcom/firebase/client/core/utilities/Tree;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;)Z"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/client/core/view/QueryMap;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->hasActiveDefaultQuery()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
