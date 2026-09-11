.class Lcom/firebase/client/snapshot/SortedChildrenNode$2;
.super Lcom/firebase/client/collection/LLRBNode$NodeVisitor;
.source "SortedChildrenNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/snapshot/SortedChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/firebase/client/collection/LLRBNode$NodeVisitor<",
        "Lcom/firebase/client/utilities/tuple/NameAndPriority;",
        "Lcom/firebase/client/snapshot/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/snapshot/SortedChildrenNode;

.field final synthetic val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;


# direct methods
.method constructor <init>(Lcom/firebase/client/snapshot/SortedChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$2;->this$0:Lcom/firebase/client/snapshot/SortedChildrenNode;

    iput-object p2, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$2;->val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;

    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBNode$NodeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitEntry(Lcom/firebase/client/utilities/tuple/NameAndPriority;Lcom/firebase/client/snapshot/Node;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/firebase/client/snapshot/SortedChildrenNode$2;->val$visitor:Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;

    invoke-virtual {p1}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;->visitEntry(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V

    return-void
.end method

.method public bridge synthetic visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    check-cast p2, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/SortedChildrenNode$2;->visitEntry(Lcom/firebase/client/utilities/tuple/NameAndPriority;Lcom/firebase/client/snapshot/Node;)V

    return-void
.end method
