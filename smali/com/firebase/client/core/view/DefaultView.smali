.class public Lcom/firebase/client/core/view/DefaultView;
.super Lcom/firebase/client/core/view/View;
.source "DefaultView.java"


# direct methods
.method public constructor <init>(Lcom/firebase/client/Query;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/core/view/View;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Context;)V

    return-void
.end method


# virtual methods
.method protected filterChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/firebase/client/core/view/DefaultView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 28
    iget-boolean v0, p0, Lcom/firebase/client/core/view/DefaultView;->complete:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 29
    new-instance v0, Lcom/firebase/client/core/view/Change;

    sget-object v1, Lcom/firebase/client/core/Constants$EventType;->VALUE:Lcom/firebase/client/core/Constants$EventType;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p2
.end method
