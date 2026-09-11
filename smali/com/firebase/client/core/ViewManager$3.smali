.class Lcom/firebase/client/core/ViewManager$3;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ViewManager;->ensureListening(Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/view/View;)V
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

    .line 129
    iput-object p1, p0, Lcom/firebase/client/core/ViewManager$3;->this$0:Lcom/firebase/client/core/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Lcom/firebase/client/core/view/QueryMap;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/client/core/view/QueryMap;

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryMap;->deactivate()V

    :cond_0
    return-void
.end method
