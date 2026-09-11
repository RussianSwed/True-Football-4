.class public interface abstract Lcom/firebase/client/snapshot/Node;
.super Ljava/lang/Object;
.source "Node.java"


# virtual methods
.method public abstract getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getHash()Ljava/lang/String;
.end method

.method public abstract getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;
.end method

.method public abstract getPriority()Lcom/firebase/client/snapshot/NodePriority;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract getValue(Z)Ljava/lang/Object;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isLeafNode()Z
.end method

.method public abstract updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;
.end method

.method public abstract updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;
.end method
