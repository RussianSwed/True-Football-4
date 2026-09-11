.class Lcom/firebase/client/core/Repo$17;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->rerunTransactionQueue(Ljava/util/List;Lcom/firebase/client/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$ref:Lcom/firebase/client/Firebase;

.field final synthetic val$transaction:Lcom/firebase/client/core/Repo$TransactionData;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Firebase;Lcom/firebase/client/core/Repo$TransactionData;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/firebase/client/core/Repo$17;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$17;->val$ref:Lcom/firebase/client/Firebase;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$17;->val$transaction:Lcom/firebase/client/core/Repo$TransactionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 872
    iget-object v0, p0, Lcom/firebase/client/core/Repo$17;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$17;->val$ref:Lcom/firebase/client/Firebase;

    new-instance v2, Lcom/firebase/client/core/ValueListenerContainer;

    iget-object v3, p0, Lcom/firebase/client/core/Repo$17;->val$transaction:Lcom/firebase/client/core/Repo$TransactionData;

    invoke-static {v3}, Lcom/firebase/client/core/Repo$TransactionData;->access$1700(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/ValueEventListener;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/firebase/client/core/ValueListenerContainer;-><init>(Lcom/firebase/client/ValueEventListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/Repo;->removeEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V

    return-void
.end method
