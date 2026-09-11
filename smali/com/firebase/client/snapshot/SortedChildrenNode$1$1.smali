.class Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;
.super Ljava/lang/Object;
.source "SortedChildrenNode.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/snapshot/SortedChildrenNode$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/firebase/client/snapshot/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/snapshot/SortedChildrenNode$1;

.field final synthetic val$wrapped:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/firebase/client/snapshot/SortedChildrenNode$1;Ljava/util/Map$Entry;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;->this$1:Lcom/firebase/client/snapshot/SortedChildrenNode$1;

    iput-object p2, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;->val$wrapped:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;->val$wrapped:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-virtual {v0}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;->val$wrapped:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;->getValue()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .line 95
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setValue called on immutable collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/SortedChildrenNode$1$1;->setValue(Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    return-object p1
.end method
