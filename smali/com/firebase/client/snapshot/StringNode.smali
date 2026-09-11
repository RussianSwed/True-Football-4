.class public Lcom/firebase/client/snapshot/StringNode;
.super Lcom/firebase/client/snapshot/LeafNode;
.source "StringNode.java"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V
    .locals 0

    .line 15
    invoke-direct {p0, p2}, Lcom/firebase/client/snapshot/LeafNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;)V

    .line 16
    iput-object p1, p0, Lcom/firebase/client/snapshot/StringNode;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/firebase/client/snapshot/StringNode;->getPriorityHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "string:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/snapshot/StringNode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/firebase/client/snapshot/StringNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/StringNode;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/StringNode;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/StringNode;
    .locals 2

    .line 31
    new-instance v0, Lcom/firebase/client/snapshot/StringNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/StringNode;->value:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    return-object v0
.end method
