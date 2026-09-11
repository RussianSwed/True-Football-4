.class Lcom/firebase/client/snapshot/SortedChildrenNode$3;
.super Ljava/lang/Object;
.source "SortedChildrenNode.java"

# interfaces
.implements Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/snapshot/SortedChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor<",
        "Lcom/firebase/client/utilities/tuple/NameAndPriority;",
        "Lcom/firebase/client/snapshot/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/snapshot/SortedChildrenNode;

.field final synthetic val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;


# direct methods
.method constructor <init>(Lcom/firebase/client/snapshot/SortedChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$3;->this$0:Lcom/firebase/client/snapshot/SortedChildrenNode;

    iput-object p2, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$3;->val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldContinue(Lcom/firebase/client/utilities/tuple/NameAndPriority;Lcom/firebase/client/snapshot/Node;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$3;->val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;

    invoke-virtual {p1}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;->shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 121
    check-cast p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    check-cast p2, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/SortedChildrenNode$3;->shouldContinue(Lcom/firebase/client/utilities/tuple/NameAndPriority;Lcom/firebase/client/snapshot/Node;)Z

    move-result p1

    return p1
.end method
