.class public Lcom/firebase/client/snapshot/SortedChildrenNode;
.super Lcom/firebase/client/snapshot/ChildrenNode;
.source "SortedChildrenNode.java"


# instance fields
.field private sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedMap<",
            "Lcom/firebase/client/utilities/tuple/NameAndPriority;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/collection/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/NodePriority;",
            "Lcom/firebase/client/collection/ImmutableSortedMap<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Lcom/firebase/client/collection/ImmutableSortedMap<",
            "Lcom/firebase/client/utilities/tuple/NameAndPriority;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    .line 38
    iput-object p3, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    return-void
.end method

.method public static from(Lcom/firebase/client/snapshot/ChildrenNode;)Lcom/firebase/client/snapshot/SortedChildrenNode;
    .locals 6

    .line 20
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/firebase/client/collection/ImmutableSortedMap;

    sget-object v2, Lcom/firebase/client/snapshot/NodeUtilities;->NameAndPriorityComparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lcom/firebase/client/collection/ImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/Node;

    .line 27
    new-instance v4, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    .line 28
    invoke-virtual {v1, v4, v3}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v1

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/firebase/client/snapshot/SortedChildrenNode;

    iget-object v2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    iget-object p0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-direct {v0, v2, p0, v1}, Lcom/firebase/client/snapshot/SortedChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object v0
.end method


# virtual methods
.method public forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V
    .locals 1

    .line 109
    new-instance v0, Lcom/firebase/client/snapshot/SortedChildrenNode$2;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/snapshot/SortedChildrenNode$2;-><init>(Lcom/firebase/client/snapshot/SortedChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    .line 115
    iget-object p1, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {p1, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    return-void
.end method

.method public forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;Z)V
    .locals 1

    .line 120
    new-instance v0, Lcom/firebase/client/snapshot/SortedChildrenNode$3;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/snapshot/SortedChildrenNode$3;-><init>(Lcom/firebase/client/snapshot/SortedChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;)V

    if-eqz p2, :cond_0

    .line 128
    iget-object p1, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {p1, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {p1, v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    :goto_0
    return-void
.end method

.method public getFirstChildName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getMinKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/firebase/client/snapshot/SortedChildrenNode$1;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/snapshot/SortedChildrenNode$1;-><init>(Lcom/firebase/client/snapshot/SortedChildrenNode;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getLastChildName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getMaxKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    new-instance v1, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap;->getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 4

    .line 48
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/SortedChildrenNode;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v1, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    .line 52
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, v2}, Lcom/firebase/client/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 54
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {v1, p1, p2}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v1

    .line 56
    new-instance v2, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    .line 57
    invoke-virtual {v0, v2, p2}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 60
    :cond_0
    new-instance p1, Lcom/firebase/client/snapshot/SortedChildrenNode;

    iget-object p2, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-direct {p1, p2, v1, v0}, Lcom/firebase/client/snapshot/SortedChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object p1
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/ChildrenNode;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/SortedChildrenNode;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/SortedChildrenNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/SortedChildrenNode;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/SortedChildrenNode;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/SortedChildrenNode;
    .locals 3

    .line 43
    new-instance v0, Lcom/firebase/client/snapshot/SortedChildrenNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    iget-object v2, p0, Lcom/firebase/client/snapshot/SortedChildrenNode;->sortedChildren:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-direct {v0, p1, v1, v2}, Lcom/firebase/client/snapshot/SortedChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object v0
.end method
