.class Lcom/firebase/client/core/view/QueryView$2;
.super Ljava/lang/Object;
.source "QueryView.java"

# interfaces
.implements Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;


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


# direct methods
.method constructor <init>(Lcom/firebase/client/core/view/QueryView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/firebase/client/core/view/QueryView$2;->this$0:Lcom/firebase/client/core/view/QueryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiff(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 62
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$2;->this$0:Lcom/firebase/client/core/view/QueryView;

    iget-object v0, v0, Lcom/firebase/client/core/view/QueryView;->query:Lcom/firebase/client/Query;

    invoke-virtual {v0}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Path;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/firebase/client/core/view/QueryView$2;->this$0:Lcom/firebase/client/core/view/QueryView;

    invoke-virtual {p1, p2, p3}, Lcom/firebase/client/core/view/QueryView;->filterChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Ljava/util/List;

    :cond_0
    return-void
.end method
