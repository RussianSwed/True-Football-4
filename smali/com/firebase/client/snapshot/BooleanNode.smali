.class public Lcom/firebase/client/snapshot/BooleanNode;
.super Lcom/firebase/client/snapshot/LeafNode;
.source "BooleanNode.java"


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lcom/firebase/client/snapshot/NodePriority;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lcom/firebase/client/snapshot/LeafNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/firebase/client/snapshot/BooleanNode;->getPriorityHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "boolean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/BooleanNode;
    .locals 2

    .line 31
    new-instance v0, Lcom/firebase/client/snapshot/BooleanNode;

    iget-boolean v1, p0, Lcom/firebase/client/snapshot/BooleanNode;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/firebase/client/snapshot/NodePriority;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/BooleanNode;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/BooleanNode;

    move-result-object p1

    return-object p1
.end method
