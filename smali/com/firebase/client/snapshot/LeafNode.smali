.class public abstract Lcom/firebase/client/snapshot/LeafNode;
.super Ljava/lang/Object;
.source "LeafNode.java"

# interfaces
.implements Lcom/firebase/client/snapshot/Node;


# instance fields
.field private priority:Lcom/firebase/client/snapshot/NodePriority;


# direct methods
.method constructor <init>(Lcom/firebase/client/snapshot/NodePriority;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    return-void
.end method


# virtual methods
.method public getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
    .locals 0

    .line 35
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p0

    .line 38
    :cond_0
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;
    .locals 0

    .line 69
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority()Lcom/firebase/client/snapshot/NodePriority;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    return-object v0
.end method

.method protected getPriorityHash()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v1}, Lcom/firebase/client/snapshot/NodePriority;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {p1}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ".value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {v0}, Lcom/firebase/client/snapshot/NodePriority;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, ".priority"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/client/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLeafNode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 2

    .line 44
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 48
    :cond_0
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/firebase/client/snapshot/LeafNode;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
    .locals 1

    .line 86
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    iget-object p2, p0, Lcom/firebase/client/snapshot/LeafNode;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-interface {p1, p2}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    return-object p1
.end method
