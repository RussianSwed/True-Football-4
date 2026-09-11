.class Lcom/firebase/client/core/view/View$1;
.super Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/view/View;->generateChangesForSnapshot(Lcom/firebase/client/snapshot/Node;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prevName:Ljava/lang/String;

.field final synthetic this$0:Lcom/firebase/client/core/view/View;

.field final synthetic val$events:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/view/View;Ljava/util/List;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/firebase/client/core/view/View$1;->this$0:Lcom/firebase/client/core/view/View;

    iput-object p2, p0, Lcom/firebase/client/core/view/View$1;->val$events:Ljava/util/List;

    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V
    .locals 2

    .line 158
    new-instance v0, Lcom/firebase/client/core/view/Change;

    sget-object v1, Lcom/firebase/client/core/Constants$EventType;->CHILD_ADDED:Lcom/firebase/client/core/Constants$EventType;

    invoke-direct {v0, v1, p2}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;)V

    .line 159
    invoke-virtual {v0, p1}, Lcom/firebase/client/core/view/Change;->setChildName(Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/firebase/client/core/view/View$1;->prevName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/view/Change;->setPrevName(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/firebase/client/core/view/View$1;->val$events:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iput-object p1, p0, Lcom/firebase/client/core/view/View$1;->prevName:Ljava/lang/String;

    return-void
.end method
