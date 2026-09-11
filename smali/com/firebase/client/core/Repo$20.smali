.class Lcom/firebase/client/core/Repo$20;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/core/utilities/Tree$TreeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/core/utilities/Tree$TreeFilter<",
        "Ljava/util/List<",
        "Lcom/firebase/client/core/Repo$TransactionData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/firebase/client/core/Repo$20;->this$0:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterTreeNode(Lcom/firebase/client/core/utilities/Tree;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)Z"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lcom/firebase/client/core/Repo$20;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0, p1}, Lcom/firebase/client/core/Repo;->access$2400(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V

    const/4 p1, 0x0

    return p1
.end method
