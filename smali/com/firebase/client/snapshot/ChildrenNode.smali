.class public Lcom/firebase/client/snapshot/ChildrenNode;
.super Ljava/lang/Object;
.source "ChildrenNode.java"

# interfaces
.implements Lcom/firebase/client/snapshot/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;,
        Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
    }
.end annotation


# instance fields
.field protected children:Lcom/firebase/client/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedMap<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected priority:Lcom/firebase/client/snapshot/NodePriority;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/firebase/client/collection/ImmutableSortedMap;

    sget-object v1, Lcom/firebase/client/snapshot/NodeUtilities;->NameComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 37
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    return-void
.end method

.method protected constructor <init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/NodePriority;",
            "Lcom/firebase/client/collection/ImmutableSortedMap<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    .line 42
    iput-object p2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    return-void
.end method


# virtual methods
.method public forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    return-void
.end method

.method public forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 170
    iget-object p2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {p2, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    goto :goto_0

    .line 172
    :cond_0
    iget-object p2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {p2, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    :goto_0
    return-void
.end method

.method public getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .line 156
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->count()I

    move-result v0

    return v0
.end method

.method public getFirstChildName()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getMinKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v1}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "priority:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v3}, Lcom/firebase/client/snapshot/NodePriority;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/firebase/client/snapshot/ChildrenNode$1;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode$1;-><init>(Lcom/firebase/client/snapshot/ChildrenNode;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/firebase/client/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/client/snapshot/Node;

    return-object p1

    .line 150
    :cond_0
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
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

    .line 196
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLastChildName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getMaxKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {p2, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPriority()Lcom/firebase/client/snapshot/NodePriority;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 8

    .line 62
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/ChildrenNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 71
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 74
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v6, p1}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    if-eqz v2, :cond_1

    .line 79
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v6, v5, :cond_1

    move v5, v6

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    mul-int/lit8 v4, v4, 0x2

    if-ge v5, v4, :cond_4

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    add-int/lit8 v0, v5, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-gt v3, v5, :cond_3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 100
    iget-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {p1}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result p1

    if-nez p1, :cond_5

    .line 101
    iget-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {p1}, Lcom/firebase/client/snapshot/NodePriority;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, ".priority"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/firebase/client/collection/ImmutableSortedMap;->count()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .line 186
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 190
    :cond_0
    invoke-virtual {p0, v0}, Lcom/firebase/client/snapshot/ChildrenNode;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    .line 191
    invoke-virtual {p0, v0, p1}, Lcom/firebase/client/snapshot/ChildrenNode;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    .line 203
    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Lcom/firebase/client/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 207
    :cond_0
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    new-instance p1, Lcom/firebase/client/snapshot/ChildrenNode;

    iget-object p2, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-direct {p1, p2, v0}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object p1

    .line 210
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object p1

    .line 211
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    invoke-interface {p2}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 212
    new-instance p2, Lcom/firebase/client/snapshot/ChildrenNode;

    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-direct {p2, v0, p1}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object p2

    .line 214
    :cond_2
    new-instance p2, Lcom/firebase/client/snapshot/ChildrenNode;

    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-direct {p2, v0, p1}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    invoke-static {p2}, Lcom/firebase/client/snapshot/SortedChildrenNode;->from(Lcom/firebase/client/snapshot/ChildrenNode;)Lcom/firebase/client/snapshot/SortedChildrenNode;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/ChildrenNode;
    .locals 2

    .line 143
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/ChildrenNode;->children:Lcom/firebase/client/collection/ImmutableSortedMap;

    invoke-direct {v0, p1, v1}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/ChildrenNode;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/ChildrenNode;

    move-result-object p1

    return-object p1
.end method
