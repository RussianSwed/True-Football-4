.class Lcom/firebase/client/snapshot/ChildrenNode$1;
.super Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
.source "ChildrenNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/snapshot/ChildrenNode;->getHash()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/snapshot/ChildrenNode;

.field final synthetic val$toHash:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/firebase/client/snapshot/ChildrenNode;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode$1;->this$0:Lcom/firebase/client/snapshot/ChildrenNode;

    iput-object p2, p0, Lcom/firebase/client/snapshot/ChildrenNode$1;->val$toHash:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V
    .locals 2

    .line 118
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$1;->val$toHash:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v0, p0, Lcom/firebase/client/snapshot/ChildrenNode$1;->val$toHash:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode$1;->val$toHash:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object p1, p0, Lcom/firebase/client/snapshot/ChildrenNode$1;->val$toHash:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
