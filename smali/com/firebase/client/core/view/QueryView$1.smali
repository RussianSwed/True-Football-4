.class Lcom/firebase/client/core/view/QueryView$1;
.super Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
.source "QueryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/view/QueryView;->getChildRelevance(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/view/QueryView;

.field final synthetic val$childRelevance:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/view/QueryView;Ljava/util/Map;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/firebase/client/core/view/QueryView$1;->this$0:Lcom/firebase/client/core/view/QueryView;

    iput-object p2, p0, Lcom/firebase/client/core/view/QueryView$1;->val$childRelevance:Ljava/util/Map;

    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V
    .locals 1

    .line 43
    iget-object p2, p0, Lcom/firebase/client/core/view/QueryView$1;->val$childRelevance:Ljava/util/Map;

    sget-object v0, Lcom/firebase/client/core/view/QueryView$ViewState;->IN_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
