.class Lcom/firebase/client/core/view/QueryView$4;
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

.field final synthetic val$startPost:Lcom/firebase/client/utilities/tuple/NameAndPriority;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/utilities/tuple/NameAndPriority;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/firebase/client/core/view/QueryView$4;->this$0:Lcom/firebase/client/core/view/QueryView;

    iput-object p2, p0, Lcom/firebase/client/core/view/QueryView$4;->val$startPost:Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public meetsConstraint(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$4;->val$startPost:Lcom/firebase/client/utilities/tuple/NameAndPriority;

    new-instance v1, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-direct {v1, p1, p2}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->compareTo(Lcom/firebase/client/utilities/tuple/NameAndPriority;)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
