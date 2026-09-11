.class public Lcom/firebase/client/snapshot/DeferredValueNode;
.super Lcom/firebase/client/snapshot/LeafNode;
.source "DeferredValueNode.java"


# instance fields
.field private value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/firebase/client/snapshot/NodePriority;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/firebase/client/snapshot/NodePriority;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p2}, Lcom/firebase/client/snapshot/LeafNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;)V

    .line 13
    iput-object p1, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/firebase/client/snapshot/DeferredValueNode;->getPriorityHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deferredValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/utilities/Utilities;->sha1HexDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    return-object v0
.end method

.method public updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/DeferredValueNode;
    .locals 2

    .line 28
    new-instance v0, Lcom/firebase/client/snapshot/DeferredValueNode;

    iget-object v1, p0, Lcom/firebase/client/snapshot/DeferredValueNode;->value:Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/snapshot/DeferredValueNode;-><init>(Ljava/util/Map;Lcom/firebase/client/snapshot/NodePriority;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/DeferredValueNode;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/DeferredValueNode;

    move-result-object p1

    return-object p1
.end method
