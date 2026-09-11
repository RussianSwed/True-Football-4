.class Lcom/firebase/client/core/view/QueryView$11;
.super Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;
.source "QueryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/view/QueryView;->getLimitName(Lcom/firebase/client/snapshot/Node;Ljava/util/List;IZ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/view/QueryView;

.field final synthetic val$constraints:Ljava/util/List;

.field final synthetic val$progress:Lcom/firebase/client/core/view/QueryView$LimitProgress;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/view/QueryView;Ljava/util/List;Lcom/firebase/client/core/view/QueryView$LimitProgress;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/firebase/client/core/view/QueryView$11;->this$0:Lcom/firebase/client/core/view/QueryView;

    iput-object p2, p0, Lcom/firebase/client/core/view/QueryView$11;->val$constraints:Ljava/util/List;

    iput-object p3, p0, Lcom/firebase/client/core/view/QueryView$11;->val$progress:Lcom/firebase/client/core/view/QueryView$LimitProgress;

    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 346
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/core/view/QueryView$11;->shouldContinue(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Z

    move-result p1

    return p1
.end method

.method public shouldContinue(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$11;->this$0:Lcom/firebase/client/core/view/QueryView;

    iget-object v1, p0, Lcom/firebase/client/core/view/QueryView$11;->val$constraints:Ljava/util/List;

    invoke-static {v0, p2, p1, v1}, Lcom/firebase/client/core/view/QueryView;->access$200(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 350
    iget-object p2, p0, Lcom/firebase/client/core/view/QueryView$11;->val$progress:Lcom/firebase/client/core/view/QueryView$LimitProgress;

    invoke-virtual {p2, p1}, Lcom/firebase/client/core/view/QueryView$LimitProgress;->setLastChild(Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/firebase/client/core/view/QueryView$11;->val$progress:Lcom/firebase/client/core/view/QueryView$LimitProgress;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryView$LimitProgress;->decrementLimit()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
