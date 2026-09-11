.class Lcom/firebase/client/core/Repo$15;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->sendTransaction(Ljava/util/List;Lcom/firebase/client/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$paths:Ljava/util/List;

.field final synthetic val$putId:J

.field final synthetic val$queue:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Ljava/util/List;JLjava/util/List;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$15;->val$paths:Ljava/util/List;

    iput-wide p4, p0, Lcom/firebase/client/core/Repo$15;->val$putId:J

    iput-object p6, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 6

    .line 679
    iget-object p2, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {p2}, Lcom/firebase/client/core/Repo;->access$1400(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 681
    :goto_0
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$paths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 682
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$paths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Path;

    .line 684
    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v2}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/FirebaseData;

    move-result-object v2

    iget-wide v3, p0, Lcom/firebase/client/core/Repo$15;->val$putId:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/firebase/client/core/FirebaseData;->clearPutIfMatching(JLcom/firebase/client/core/Path;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v2}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/FirebaseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v3}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/FirebaseData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/FirebaseData;->getServerData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 692
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 693
    :goto_1
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 694
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Repo$TransactionData;

    .line 695
    sget-object v2, Lcom/firebase/client/core/Repo$TransactionStatus;->COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v1, v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1002(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 696
    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/firebase/client/core/Repo;->access$1500(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/DataSnapshot;

    move-result-object v2

    .line 697
    new-instance v3, Lcom/firebase/client/core/Repo$15$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/firebase/client/core/Repo$15$1;-><init>(Lcom/firebase/client/core/Repo$15;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/DataSnapshot;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    new-instance v3, Lcom/firebase/client/Firebase;

    iget-object v4, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    new-instance v4, Lcom/firebase/client/core/ValueListenerContainer;

    invoke-static {v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1700(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/ValueEventListener;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/firebase/client/core/ValueListenerContainer;-><init>(Lcom/firebase/client/ValueEventListener;)V

    invoke-virtual {v2, v3, v4}, Lcom/firebase/client/core/Repo;->removeEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$1800(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firebase/client/core/Repo;->access$1900(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V

    .line 712
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$2000(Lcom/firebase/client/core/Repo;)V

    .line 715
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 716
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$200(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 720
    :cond_3
    invoke-virtual {p1}, Lcom/firebase/client/FirebaseError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 p1, 0x0

    .line 721
    :goto_3
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 722
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/Repo$TransactionData;

    .line 723
    invoke-static {v0}, Lcom/firebase/client/core/Repo$TransactionData;->access$1000(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v1

    sget-object v2, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v1, v2, :cond_4

    .line 724
    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v0, v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1002(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    goto :goto_4

    .line 726
    :cond_4
    sget-object v1, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v0, v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1002(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 730
    :goto_5
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 731
    iget-object v1, p0, Lcom/firebase/client/core/Repo$15;->val$queue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Repo$TransactionData;

    .line 732
    sget-object v2, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v1, v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1002(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 733
    invoke-static {v1, p1}, Lcom/firebase/client/core/Repo$TransactionData;->access$2102(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/FirebaseError;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 738
    :cond_6
    iget-object p1, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {p1, v0}, Lcom/firebase/client/core/Repo;->access$500(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object p1

    .line 739
    iget-object v0, p0, Lcom/firebase/client/core/Repo$15;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$600(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/ViewManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/firebase/client/core/Path;

    iget-object v2, p0, Lcom/firebase/client/core/Repo$15;->val$path:Lcom/firebase/client/core/Path;

    aput-object v2, v1, p2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V

    :cond_7
    return-void
.end method
