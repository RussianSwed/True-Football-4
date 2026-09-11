.class Lcom/firebase/client/snapshot/SortedChildrenNode$1;
.super Ljava/lang/Object;
.source "SortedChildrenNode.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/snapshot/SortedChildrenNode;->getIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/firebase/client/snapshot/Node;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/snapshot/SortedChildrenNode;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/firebase/client/snapshot/SortedChildrenNode;Ljava/util/Iterator;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$1;->this$0:Lcom/firebase/client/snapshot/SortedChildrenNode;

    iput-object p2, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$1;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/SortedChildrenNode$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    new-instance v1, Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;-><init>(Lcom/firebase/client/snapshot/SortedChildrenNode$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
