.class public abstract Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;
.super Ljava/lang/Object;
.source "ChildrenNode.java"

# interfaces
.implements Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/snapshot/ChildrenNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ShortCircuitingChildVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor<",
        "Ljava/lang/String;",
        "Lcom/firebase/client/snapshot/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
