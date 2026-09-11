.class Lcom/firebase/client/core/view/QueryView$5;
.super Ljava/lang/Object;
.source "QueryView.java"

# interfaces
.implements Lcom/firebase/client/core/view/QueryView$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/view/QueryView;->filterChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/view/QueryView;

.field final synthetic val$params:Lcom/firebase/client/core/view/QueryParams;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/core/view/QueryParams;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/firebase/client/core/view/QueryView$5;->this$0:Lcom/firebase/client/core/view/QueryView;

    iput-object p2, p0, Lcom/firebase/client/core/view/QueryView$5;->val$params:Lcom/firebase/client/core/view/QueryParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public meetsConstraint(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)Z
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/firebase/client/core/view/QueryView$5;->val$params:Lcom/firebase/client/core/view/QueryParams;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/QueryParams;->getStartPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/firebase/client/snapshot/NodePriority;->compareTo(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
