.class public Lcom/firebase/client/core/Repo;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/core/PersistentConnection$Delegate;
.implements Lcom/firebase/client/RunLoop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/Repo$TransactionData;,
        Lcom/firebase/client/core/Repo$TransactionStatus;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TRANSACTION_MAX_RETRIES:I = 0x19

.field private static final TRANSACTION_OVERRIDE_BY_SET:Ljava/lang/String; = "overriddenBySet"

.field private static final TRANSACTION_TOO_MANY_RETRIES:Ljava/lang/String; = "maxretries"


# instance fields
.field private connection:Lcom/firebase/client/core/PersistentConnection;

.field private ctx:Lcom/firebase/client/core/Context;

.field private data:Lcom/firebase/client/core/FirebaseData;

.field private dataLogger:Lcom/firebase/client/utilities/LogWrapper;

.field public dataUpdateCount:J

.field private hijackHash:Z

.field private infoData:Lcom/firebase/client/core/SnapshotHolder;

.field private infoManager:Lcom/firebase/client/core/ViewManager;

.field private onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

.field private operationLogger:Lcom/firebase/client/utilities/LogWrapper;

.field private repoInfo:Lcom/firebase/client/core/RepoInfo;

.field private serverTimeOffset:J

.field private transactionLogger:Lcom/firebase/client/utilities/LogWrapper;

.field private transactionOrder:J

.field private transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;"
        }
    .end annotation
.end field

.field private transactionResultData:Lcom/firebase/client/core/SnapshotHolder;

.field private viewManager:Lcom/firebase/client/core/ViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/Context;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/firebase/client/core/Repo;->serverTimeOffset:J

    const/4 v2, 0x0

    .line 33
    iput-boolean v2, p0, Lcom/firebase/client/core/Repo;->hijackHash:Z

    .line 38
    iput-wide v0, p0, Lcom/firebase/client/core/Repo;->dataUpdateCount:J

    .line 510
    iput-wide v0, p0, Lcom/firebase/client/core/Repo;->transactionOrder:J

    .line 41
    iput-object p1, p0, Lcom/firebase/client/core/Repo;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    .line 42
    iput-object p2, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    const-string v0, "RepoOperation"

    .line 44
    invoke-virtual {p2, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    .line 45
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    const-string v1, "Transaction"

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->transactionLogger:Lcom/firebase/client/utilities/LogWrapper;

    .line 46
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    const-string v1, "DataOperation"

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    .line 48
    invoke-direct {p0}, Lcom/firebase/client/core/Repo;->initTransactions()V

    .line 50
    new-instance v0, Lcom/firebase/client/core/FirebaseData;

    invoke-direct {v0}, Lcom/firebase/client/core/FirebaseData;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    .line 51
    new-instance v0, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0}, Lcom/firebase/client/core/SnapshotHolder;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->infoData:Lcom/firebase/client/core/SnapshotHolder;

    .line 52
    new-instance v0, Lcom/firebase/client/core/PersistentConnection;

    invoke-direct {v0, p2, p1, p0}, Lcom/firebase/client/core/PersistentConnection;-><init>(Lcom/firebase/client/core/Context;Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/PersistentConnection$Delegate;)V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    .line 53
    new-instance p1, Lcom/firebase/client/core/ViewManager;

    iget-object v1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1}, Lcom/firebase/client/core/FirebaseData;->getVisibleData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v1

    invoke-direct {p1, v0, v1, p2}, Lcom/firebase/client/core/ViewManager;-><init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Context;)V

    iput-object p1, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    .line 54
    new-instance p1, Lcom/firebase/client/core/ViewManager;

    iget-object v0, p0, Lcom/firebase/client/core/Repo;->infoData:Lcom/firebase/client/core/SnapshotHolder;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p2}, Lcom/firebase/client/core/ViewManager;-><init>(Lcom/firebase/client/core/PersistentConnection;Lcom/firebase/client/core/SnapshotHolder;Lcom/firebase/client/core/Context;)V

    iput-object p1, p0, Lcom/firebase/client/core/Repo;->infoManager:Lcom/firebase/client/core/ViewManager;

    .line 55
    new-instance p1, Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-direct {p1}, Lcom/firebase/client/core/SparseSnapshotTree;-><init>()V

    iput-object p1, p0, Lcom/firebase/client/core/Repo;->onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

    .line 56
    new-instance p1, Lcom/firebase/client/core/Repo$1;

    invoke-direct {p1, p0}, Lcom/firebase/client/core/Repo$1;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p0, p1}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method private abortTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    .locals 4

    .line 938
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->getAncestorTransactionNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 940
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->transactionLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting transactions for path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Affected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 942
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object p1

    .line 943
    new-instance v1, Lcom/firebase/client/core/Repo$20;

    invoke-direct {v1, p0}, Lcom/firebase/client/core/Repo$20;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/utilities/Tree;->forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;)Z

    .line 951
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    .line 953
    new-instance v1, Lcom/firebase/client/core/Repo$21;

    invoke-direct {v1, p0}, Lcom/firebase/client/core/Repo$21;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p1, v1}, Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    return-object v0
.end method

.method private abortTransactions(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .line 964
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 966
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 969
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 970
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/core/Repo$TransactionData;

    .line 971
    invoke-static {v6}, Lcom/firebase/client/core/Repo$TransactionData;->access$1000(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v7

    sget-object v8, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 973
    :cond_0
    invoke-static {v6}, Lcom/firebase/client/core/Repo$TransactionData;->access$1000(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v7

    sget-object v8, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT:Lcom/firebase/client/core/Repo$TransactionStatus;

    const-string v9, "overriddenBySet"

    if-ne v7, v8, :cond_1

    .line 975
    sget-object v5, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v6, v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1002(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 976
    invoke-static {v9}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$2102(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/FirebaseError;

    move v5, v4

    goto :goto_1

    .line 979
    :cond_1
    new-instance v7, Lcom/firebase/client/Firebase;

    invoke-static {v6}, Lcom/firebase/client/core/Repo$TransactionData;->access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    new-instance v8, Lcom/firebase/client/core/ValueListenerContainer;

    invoke-static {v6}, Lcom/firebase/client/core/Repo$TransactionData;->access$1700(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/ValueEventListener;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/firebase/client/core/ValueListenerContainer;-><init>(Lcom/firebase/client/ValueEventListener;)V

    invoke-virtual {p0, v7, v8}, Lcom/firebase/client/core/Repo;->removeEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V

    .line 981
    invoke-static {v9}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v7

    .line 982
    new-instance v8, Lcom/firebase/client/core/Repo$22;

    invoke-direct {v8, p0, v6, v7}, Lcom/firebase/client/core/Repo$22;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne v5, v2, :cond_3

    const/4 v0, 0x0

    .line 993
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 996
    invoke-interface {v0, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 999
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_4

    .line 1000
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object p1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/Repo;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/Repo;->updateInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/PersistentConnection;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->sendReadyTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/Repo;->transactionLogger:Lcom/firebase/client/utilities/LogWrapper;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/DataSnapshot;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->getSnapshot(Lcom/firebase/client/core/Path;)Lcom/firebase/client/DataSnapshot;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/utilities/Tree;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$200(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/firebase/client/core/Repo;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/firebase/client/core/Repo;->sendAllReadyTransactions()V

    return-void
.end method

.method static synthetic access$2300(Lcom/firebase/client/core/Repo;Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/Repo;->aggregateTransactionQueues(Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/FirebaseData;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->rerunTransactionsAndUpdateVisibleData(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/ViewManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/SparseSnapshotTree;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/firebase/client/core/Repo;->onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

    return-object p0
.end method

.method static synthetic access$800(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object p0

    return-object p0
.end method

.method private aggregateTransactionQueues(Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .line 924
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 926
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 929
    :cond_0
    new-instance v0, Lcom/firebase/client/core/Repo$19;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/core/Repo$19;-><init>(Lcom/firebase/client/core/Repo;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    return-void
.end method

.method private buildTransactionQueue(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;"
        }
    .end annotation

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 916
    invoke-direct {p0, v0, p1}, Lcom/firebase/client/core/Repo;->aggregateTransactionQueues(Ljava/util/List;Lcom/firebase/client/core/utilities/Tree;)V

    .line 918
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private getAncestorTransactionNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    .line 906
    :goto_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 907
    new-instance v1, Lcom/firebase/client/core/Path;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v0

    .line 908
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSnapshot(Lcom/firebase/client/core/Path;)Lcom/firebase/client/DataSnapshot;
    .locals 3

    .line 786
    new-instance v0, Lcom/firebase/client/DataSnapshot;

    new-instance v1, Lcom/firebase/client/Firebase;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    iget-object v2, p0, Lcom/firebase/client/core/Repo;->transactionResultData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v2, p1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/Node;)V

    return-object v0
.end method

.method private initTransactions()V
    .locals 1

    .line 82
    new-instance v0, Lcom/firebase/client/core/utilities/Tree;

    invoke-direct {v0}, Lcom/firebase/client/core/utilities/Tree;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    .line 83
    new-instance v0, Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {v0}, Lcom/firebase/client/core/SnapshotHolder;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->transactionResultData:Lcom/firebase/client/core/SnapshotHolder;

    return-void
.end method

.method private nextTransactionOrder()J
    .locals 4

    .line 790
    iget-wide v0, p0, Lcom/firebase/client/core/Repo;->transactionOrder:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/firebase/client/core/Repo;->transactionOrder:J

    return-wide v0
.end method

.method private pathsWithLocallyAppliedChanges(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Path;",
            ">;"
        }
    .end annotation

    .line 746
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 747
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 748
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Repo$TransactionData;

    .line 749
    invoke-static {v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$2200(Lcom/firebase/client/core/Repo$TransactionData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    invoke-static {v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 754
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method private pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .line 759
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 762
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 763
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/Repo$TransactionData;

    .line 764
    invoke-static {v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1000(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v2

    sget-object v3, Lcom/firebase/client/core/Repo$TransactionStatus;->COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v2, v3, :cond_0

    .line 765
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 771
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 773
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 777
    :cond_3
    :goto_1
    new-instance v0, Lcom/firebase/client/core/Repo$16;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/Repo$16;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    return-void
.end method

.method private rerunTransactionQueue(Ljava/util/List;Lcom/firebase/client/core/Path;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;",
            "Lcom/firebase/client/core/Path;",
            ")V"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v0}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1}, Lcom/firebase/client/core/FirebaseData;->getVisibleData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 808
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->transactionResultData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v1, p2, v0}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 810
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v0}, Lcom/firebase/client/core/FirebaseData;->getVisibleData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 823
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v4, 0x0

    .line 824
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 825
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/core/Repo$TransactionData;

    .line 826
    invoke-static {v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/firebase/client/core/Path;->getRelative(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object v6

    .line 831
    invoke-static {v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1000(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v7

    sget-object v8, Lcom/firebase/client/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/firebase/client/core/Repo$TransactionStatus;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v7, v8, :cond_1

    .line 833
    invoke-static {v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$2100(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/FirebaseError;

    move-result-object v9

    goto :goto_3

    .line 834
    :cond_1
    invoke-static {v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1000(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v7

    sget-object v8, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-ne v7, v8, :cond_4

    .line 835
    invoke-static {v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1300(Lcom/firebase/client/core/Repo$TransactionData;)I

    move-result v7

    const/16 v8, 0x19

    if-lt v7, v8, :cond_2

    const-string v7, "maxretries"

    .line 837
    invoke-static {v7}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v9

    goto :goto_3

    .line 839
    :cond_2
    invoke-interface {v0, v6}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 840
    new-instance v8, Lcom/firebase/client/MutableData;

    invoke-direct {v8, v7}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 844
    :try_start_0
    invoke-static {v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1600(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/Transaction$Handler;

    move-result-object v7

    invoke-interface {v7, v8}, Lcom/firebase/client/Transaction$Handler;->doTransaction(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    goto :goto_1

    :catch_0
    move-exception v7

    .line 846
    invoke-static {v7}, Lcom/firebase/client/FirebaseError;->fromException(Ljava/lang/Exception;)Lcom/firebase/client/FirebaseError;

    move-result-object v7

    .line 847
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    .line 849
    :goto_1
    invoke-virtual {v7}, Lcom/firebase/client/Transaction$Result;->isSuccess()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 850
    invoke-virtual {v7}, Lcom/firebase/client/Transaction$Result;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 851
    invoke-interface {v0, v6, v7}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 852
    invoke-static {v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$2200(Lcom/firebase/client/core/Repo$TransactionData;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 853
    invoke-interface {v3, v6, v7}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v9, v8

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    .line 864
    new-instance v7, Lcom/firebase/client/Firebase;

    invoke-static {v5}, Lcom/firebase/client/core/Repo$TransactionData;->access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 865
    sget-object v8, Lcom/firebase/client/core/Repo$TransactionStatus;->COMPLETED:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v5, v8}, Lcom/firebase/client/core/Repo$TransactionData;->access$1002(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 869
    new-instance v8, Lcom/firebase/client/core/Repo$17;

    invoke-direct {v8, p0, v7, v5}, Lcom/firebase/client/core/Repo$17;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Firebase;Lcom/firebase/client/core/Repo$TransactionData;)V

    invoke-virtual {p0, v8}, Lcom/firebase/client/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 877
    new-instance v8, Lcom/firebase/client/DataSnapshot;

    invoke-interface {v0, v6}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/Node;)V

    .line 878
    new-instance v6, Lcom/firebase/client/core/Repo$18;

    invoke-direct {v6, p0, v5, v9, v8}, Lcom/firebase/client/core/Repo$18;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/DataSnapshot;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 888
    :cond_6
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->transactionResultData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {p1, p2, v0}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 891
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {p1}, Lcom/firebase/client/core/FirebaseData;->getVisibleData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 894
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    .line 897
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 898
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 901
    :cond_7
    invoke-direct {p0}, Lcom/firebase/client/core/Repo;->sendAllReadyTransactions()V

    return-void
.end method

.method private rerunTransactionsAndUpdateVisibleData(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;
    .locals 1

    .line 794
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->getAncestorTransactionNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object p1

    .line 795
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    .line 797
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->buildTransactionQueue(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;

    move-result-object p1

    .line 798
    invoke-direct {p0, p1, v0}, Lcom/firebase/client/core/Repo;->rerunTransactionQueue(Ljava/util/List;Lcom/firebase/client/core/Path;)V

    return-object v0
.end method

.method private runOnDisconnectEvents()V
    .locals 4

    .line 477
    invoke-virtual {p0}, Lcom/firebase/client/core/Repo;->generateServerValues()Ljava/util/Map;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-static {v1, v0}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueTree(Lcom/firebase/client/core/SparseSnapshotTree;Ljava/util/Map;)Lcom/firebase/client/core/SparseSnapshotTree;

    move-result-object v0

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    new-instance v2, Lcom/firebase/client/core/Path;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/firebase/client/core/Repo$11;

    invoke-direct {v3, p0, v1}, Lcom/firebase/client/core/Repo$11;-><init>(Lcom/firebase/client/core/Repo;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Lcom/firebase/client/core/SparseSnapshotTree;->forEachTree(Lcom/firebase/client/core/Path;Lcom/firebase/client/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V

    .line 492
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/FirebaseData;->setCompleted(Ljava/util/List;)V

    .line 493
    new-instance v0, Lcom/firebase/client/core/SparseSnapshotTree;

    invoke-direct {v0}, Lcom/firebase/client/core/SparseSnapshotTree;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/Repo;->onDisconnect:Lcom/firebase/client/core/SparseSnapshotTree;

    return-void
.end method

.method private sendAllReadyTransactions()V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    .line 620
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->pruneCompletedTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    .line 621
    invoke-direct {p0, v0}, Lcom/firebase/client/core/Repo;->sendReadyTransactions(Lcom/firebase/client/core/utilities/Tree;)V

    return-void
.end method

.method private sendReadyTransactions(Lcom/firebase/client/core/utilities/Tree;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .line 625
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 627
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->buildTransactionQueue(Lcom/firebase/client/core/utilities/Tree;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 629
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 630
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/Repo$TransactionData;

    .line 631
    invoke-static {v3}, Lcom/firebase/client/core/Repo$TransactionData;->access$1000(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;

    move-result-object v3

    sget-object v4, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    if-eq v3, v4, :cond_0

    const/4 v1, 0x0

    .line 632
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 637
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->getPath()Lcom/firebase/client/core/Path;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/firebase/client/core/Repo;->sendTransaction(Ljava/util/List;Lcom/firebase/client/core/Path;)V

    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {p1}, Lcom/firebase/client/core/utilities/Tree;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    new-instance v0, Lcom/firebase/client/core/Repo$14;

    invoke-direct {v0, p0}, Lcom/firebase/client/core/Repo$14;-><init>(Lcom/firebase/client/core/Repo;)V

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sendTransaction(Ljava/util/List;Lcom/firebase/client/core/Path;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/Repo$TransactionData;",
            ">;",
            "Lcom/firebase/client/core/Path;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 651
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 652
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/Repo$TransactionData;

    .line 654
    iget-object v2, p0, Lcom/firebase/client/core/Repo;->transactionLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " SENT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 655
    invoke-static {v1}, Lcom/firebase/client/core/Repo$TransactionData;->access$1308(Lcom/firebase/client/core/Repo$TransactionData;)I

    .line 656
    sget-object v2, Lcom/firebase/client/core/Repo$TransactionStatus;->SENT:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v1, v2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1002(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_0
    iget-boolean v0, p0, Lcom/firebase/client/core/Repo;->hijackHash:Z

    if-nez v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v0}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "badhash"

    .line 666
    :goto_1
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v2}, Lcom/firebase/client/core/FirebaseData;->getVisibleData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 669
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->transactionResultData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v1, p2}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    .line 673
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->pathsWithLocallyAppliedChanges(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 674
    iget-object v2, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v2, v5}, Lcom/firebase/client/core/FirebaseData;->markPaths(Ljava/util/List;)J

    move-result-wide v6

    .line 676
    iget-object v9, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {p2}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/firebase/client/core/Repo$15;

    move-object v2, v11

    move-object v3, p0

    move-object v4, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/firebase/client/core/Repo$15;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Ljava/util/List;JLjava/util/List;)V

    invoke-virtual {v9, v10, v1, v11, v0}, Lcom/firebase/client/core/PersistentConnection;->put(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Ljava/lang/String;)V

    return-void
.end method

.method private updateInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "serverTimeOffset"

    .line 461
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/core/Repo;->serverTimeOffset:J

    .line 465
    :cond_0
    new-instance v0, Lcom/firebase/client/core/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 467
    :try_start_0
    invoke-static {p2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    .line 468
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->infoData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {p2, v0, p1}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 470
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->infoManager:Lcom/firebase/client/core/ViewManager;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/firebase/client/core/Path;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/firebase/client/FirebaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 472
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    const-string v0, "Failed to parse info update"

    invoke-virtual {p2, v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V
    .locals 2

    .line 448
    invoke-virtual {p1}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getFront()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ".info"

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->infoManager:Lcom/firebase/client/core/ViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/ViewManager;->addEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/ViewManager;->addEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V

    :goto_0
    return-void
.end method

.method public auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    new-instance v1, Lcom/firebase/client/core/Repo$2;

    invoke-direct {v1, p0, p2}, Lcom/firebase/client/core/Repo$2;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Firebase$AuthListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/firebase/client/core/PersistentConnection;->auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V

    return-void
.end method

.method callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 201
    new-instance v0, Lcom/firebase/client/Firebase;

    invoke-direct {v0, p0, p3}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 202
    iget-object p3, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {p3}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object p3

    new-instance v1, Lcom/firebase/client/core/Repo$4;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/firebase/client/core/Repo$4;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V

    invoke-interface {p3, v1}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public generateServerValues()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/firebase/client/core/Repo;->getServerTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v0}, Lcom/firebase/client/core/ServerValues;->generateWithValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getConnection()Lcom/firebase/client/core/PersistentConnection;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    return-object v0
.end method

.method public getServerDataHashForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 435
    new-instance v0, Lcom/firebase/client/core/Path;

    invoke-direct {v0, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {p1}, Lcom/firebase/client/core/FirebaseData;->getServerData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getServerTime()J
    .locals 4

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/firebase/client/core/Repo;->serverTimeOffset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method interrupt()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection;->interrupt()V

    return-void
.end method

.method public onAuthStatus(Z)V
    .locals 1

    .line 418
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "authenticated"

    invoke-virtual {p0, v0, p1}, Lcom/firebase/client/core/Repo;->onServerInfoUpdate(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onConnect()V
    .locals 2

    const/4 v0, 0x1

    .line 409
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {p0, v1, v0}, Lcom/firebase/client/core/Repo;->onServerInfoUpdate(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDataUpdate(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .line 99
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 101
    iget-wide v0, p0, Lcom/firebase/client/core/Repo;->dataUpdateCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/firebase/client/core/Repo;->dataUpdateCount:J

    .line 108
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const-string v0, ".priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance p3, Lcom/firebase/client/core/Path;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {p2}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    .line 112
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {p2}, Lcom/firebase/client/core/FirebaseData;->getServerData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    new-array p2, v2, [Lcom/firebase/client/core/Path;

    aput-object p3, p2, v3

    .line 113
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    .line 115
    new-instance p3, Lcom/firebase/client/core/Path;

    invoke-direct {p3, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {p1}, Lcom/firebase/client/core/FirebaseData;->getServerData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    .line 118
    check-cast p2, Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 121
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    .line 124
    new-instance v5, Lcom/firebase/client/core/Path;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-interface {p1, v5, v4}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_1

    .line 129
    :cond_2
    new-instance p3, Lcom/firebase/client/core/Path;

    invoke-direct {p3, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {p2}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    new-array p2, v2, [Lcom/firebase/client/core/Path;

    aput-object p3, p2, v3

    .line 131
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    iget-object v1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v1

    invoke-virtual {v0, p3, p1, v1}, Lcom/firebase/client/core/ViewManager;->pruneUpdate(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    const/4 v0, 0x0

    .line 137
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/utilities/tuple/NodeAndPath;

    .line 139
    iget-object v4, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1}, Lcom/firebase/client/utilities/tuple/NodeAndPath;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v5

    invoke-virtual {v1}, Lcom/firebase/client/utilities/tuple/NodeAndPath;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/firebase/client/core/FirebaseData;->updateServerData(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 144
    invoke-direct {p0, p3}, Lcom/firebase/client/core/Repo;->rerunTransactionsAndUpdateVisibleData(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 149
    :cond_6
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    invoke-virtual {p1, p3, p2}, Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/firebase/client/FirebaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 151
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    const-string p3, "FIREBASE INTERNAL ERROR"

    invoke-virtual {p2, p3, p1}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const/4 v0, 0x0

    .line 413
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {p0, v1, v0}, Lcom/firebase/client/core/Repo;->onServerInfoUpdate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    invoke-direct {p0}, Lcom/firebase/client/core/Repo;->runOnDisconnectEvents()V

    return-void
.end method

.method public onDisconnectCancel(Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/firebase/client/core/Repo$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/firebase/client/core/Repo$10;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/PersistentConnection;->onDisconnectCancel(Ljava/lang/String;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public onDisconnectSetValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/firebase/client/core/Repo$8;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/firebase/client/core/Repo$8;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/firebase/client/core/PersistentConnection;->onDisconnectPut(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public onDisconnectUpdate(Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/firebase/client/core/Repo$9;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/firebase/client/core/Repo$9;-><init>(Lcom/firebase/client/core/Repo;Ljava/util/Map;Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v0, v1, p4, v2}, Lcom/firebase/client/core/PersistentConnection;->onDisconnectMerge(Ljava/lang/String;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public onServerInfoUpdate(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/Repo;->updateInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onServerInfoUpdate(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 426
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 427
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/firebase/client/core/Repo;->updateInfo(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V
    .locals 2

    .line 338
    invoke-virtual {p1}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Path;->getFront()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->infoManager:Lcom/firebase/client/core/ViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/ViewManager;->removeEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)Ljava/util/List;

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/ViewManager;->removeEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 355
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {p1}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/firebase/client/core/FirebaseData;->forget(Lcom/firebase/client/core/Path;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 360
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {p2}, Lcom/firebase/client/core/FirebaseData;->getVisibleData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 361
    iget-object p1, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    iget-object p2, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {p2}, Lcom/firebase/client/core/FirebaseData;->getVisibleData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/firebase/client/core/ViewManager;->updateOldData(Lcom/firebase/client/snapshot/Node;)V

    :cond_1
    :goto_0
    return-void
.end method

.method resume()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection;->resume()V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/firebase/client/RunLoop;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleNow(Ljava/lang/Runnable;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getRunLoop()Lcom/firebase/client/RunLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/firebase/client/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHijackHash(Z)V
    .locals 0

    .line 614
    iput-boolean p1, p0, Lcom/firebase/client/core/Repo;->hijackHash:Z

    return-void
.end method

.method public setPriority(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/firebase/client/core/Repo;->generateServerValues()Ljava/util/Map;

    move-result-object v0

    .line 249
    invoke-interface {p2}, Lcom/firebase/client/snapshot/NodePriority;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/firebase/client/snapshot/Node;->updatePriority(Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    iget-object v2, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v2}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/firebase/client/core/ViewManager;->pruneUpdate(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/FirebaseData;->set(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/.priority"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/firebase/client/snapshot/NodePriority;->getValue()Ljava/lang/Object;

    move-result-object p2

    new-instance v3, Lcom/firebase/client/core/Repo$6;

    invoke-direct {v3, p0, v0, p1, p3}, Lcom/firebase/client/core/Repo$6;-><init>(Lcom/firebase/client/core/Repo;Ljava/util/List;Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/firebase/client/core/PersistentConnection;->put(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object p1

    .line 276
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->rerunTransactionsAndUpdateVisibleData(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 277
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1, p3}, Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V

    return-void
.end method

.method public setValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/firebase/client/core/Repo;->generateServerValues()Ljava/util/Map;

    move-result-object v0

    .line 216
    invoke-static {p2, v0}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    iget-object v2, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v2}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/firebase/client/core/ViewManager;->pruneUpdate(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1, v0}, Lcom/firebase/client/core/FirebaseData;->set(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Lcom/firebase/client/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    new-instance v4, Lcom/firebase/client/core/Repo$5;

    invoke-direct {v4, p0, v0, p1, p3}, Lcom/firebase/client/core/Repo$5;-><init>(Lcom/firebase/client/core/Repo;Ljava/util/List;Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {v1, v2, p2, v4}, Lcom/firebase/client/core/PersistentConnection;->put(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object p1

    .line 240
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->rerunTransactionsAndUpdateVisibleData(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 241
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    new-array p3, v3, [Lcom/firebase/client/core/Path;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V

    return-void
.end method

.method public startTransaction(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Z)V
    .locals 10

    .line 552
    new-instance v0, Lcom/firebase/client/Firebase;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 553
    new-instance v4, Lcom/firebase/client/core/Repo$12;

    invoke-direct {v4, p0}, Lcom/firebase/client/core/Repo$12;-><init>(Lcom/firebase/client/core/Repo;)V

    .line 564
    new-instance v1, Lcom/firebase/client/core/ValueListenerContainer;

    invoke-direct {v1, v4}, Lcom/firebase/client/core/ValueListenerContainer;-><init>(Lcom/firebase/client/ValueEventListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/firebase/client/core/Repo;->addEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V

    .line 565
    new-instance v0, Lcom/firebase/client/core/Repo$TransactionData;

    sget-object v5, Lcom/firebase/client/core/Repo$TransactionStatus;->INITIALIZING:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-direct {p0}, Lcom/firebase/client/core/Repo;->nextTransactionOrder()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/firebase/client/core/Repo$TransactionData;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/Repo$TransactionStatus;ZJLcom/firebase/client/core/Repo$1;)V

    .line 567
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->transactionResultData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 568
    new-instance v2, Lcom/firebase/client/MutableData;

    invoke-direct {v2, v1}, Lcom/firebase/client/MutableData;-><init>(Lcom/firebase/client/snapshot/Node;)V

    .line 573
    :try_start_0
    invoke-interface {p2, v2}, Lcom/firebase/client/Transaction$Handler;->doTransaction(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 575
    invoke-static {v1}, Lcom/firebase/client/FirebaseError;->fromException(Ljava/lang/Exception;)Lcom/firebase/client/FirebaseError;

    move-result-object v2

    .line 576
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v1

    .line 578
    :goto_0
    invoke-virtual {v1}, Lcom/firebase/client/Transaction$Result;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->getSnapshot(Lcom/firebase/client/core/Path;)Lcom/firebase/client/DataSnapshot;

    move-result-object p1

    .line 582
    iget-object p3, p0, Lcom/firebase/client/core/Repo;->ctx:Lcom/firebase/client/core/Context;

    invoke-virtual {p3}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object p3

    new-instance v0, Lcom/firebase/client/core/Repo$13;

    invoke-direct {v0, p0, p2, v2, p1}, Lcom/firebase/client/core/Repo$13;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/DataSnapshot;)V

    invoke-interface {p3, v0}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 589
    :cond_0
    sget-object p2, Lcom/firebase/client/core/Repo$TransactionStatus;->RUN:Lcom/firebase/client/core/Repo$TransactionStatus;

    invoke-static {v0, p2}, Lcom/firebase/client/core/Repo$TransactionData;->access$1002(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;

    .line 590
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->transactionQueueTree:Lcom/firebase/client/core/utilities/Tree;

    invoke-virtual {p2, p1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object p2

    .line 591
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 593
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 595
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {p2, v2}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/firebase/client/core/Repo;->generateServerValues()Ljava/util/Map;

    move-result-object p2

    .line 599
    invoke-virtual {v1}, Lcom/firebase/client/Transaction$Result;->getNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 600
    invoke-static {v0, p2}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    .line 602
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->transactionResultData:Lcom/firebase/client/core/SnapshotHolder;

    invoke-virtual {v0, p1, p2}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    if-eqz p3, :cond_2

    .line 605
    iget-object p3, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {p3}, Lcom/firebase/client/core/FirebaseData;->getVisibleData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    .line 606
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/firebase/client/core/Path;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V

    .line 609
    :cond_2
    invoke-direct {p0}, Lcom/firebase/client/core/Repo;->sendAllReadyTransactions()V

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->repoInfo:Lcom/firebase/client/core/RepoInfo;

    invoke-virtual {v0}, Lcom/firebase/client/core/RepoInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unauth(Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 3

    .line 190
    new-instance v0, Lcom/firebase/client/core/Path;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    new-instance v2, Lcom/firebase/client/core/Repo$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/firebase/client/core/Repo$3;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/Path;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/PersistentConnection;->unauth(Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method

.method public updateChildren(Lcom/firebase/client/core/Path;Ljava/util/Map;Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/firebase/client/core/Repo;->dataLogger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 285
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->operationLogger:Lcom/firebase/client/utilities/LogWrapper;

    const-string p4, "update called with no changes. No-op"

    invoke-virtual {p2, p4}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 288
    invoke-virtual {p0, p3, p2, p1}, Lcom/firebase/client/core/Repo;->callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V

    return-void

    .line 293
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 295
    iget-object v1, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v1}, Lcom/firebase/client/core/FirebaseData;->getVisibleData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/SnapshotHolder;->getNode(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Lcom/firebase/client/core/Repo;->generateServerValues()Ljava/util/Map;

    move-result-object v2

    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/snapshot/Node;

    invoke-static {v5, v2}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    .line 301
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 303
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v4

    .line 304
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v6, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    iget-object v7, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v7}, Lcom/firebase/client/core/FirebaseData;->getMergedData()Lcom/firebase/client/core/SnapshotHolder;

    move-result-object v7

    invoke-virtual {v6, v4, v5, v7}, Lcom/firebase/client/core/ViewManager;->pruneUpdate(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/List;

    move-result-object v4

    .line 307
    iget-object v5, p0, Lcom/firebase/client/core/Repo;->data:Lcom/firebase/client/core/FirebaseData;

    invoke-virtual {v5, v4}, Lcom/firebase/client/core/FirebaseData;->set(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 310
    :cond_1
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->connection:Lcom/firebase/client/core/PersistentConnection;

    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/firebase/client/core/Repo$7;

    invoke-direct {v2, p0, v3, p1, p3}, Lcom/firebase/client/core/Repo$7;-><init>(Lcom/firebase/client/core/Repo;Ljava/util/List;Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V

    invoke-virtual {p2, v1, p4, v2}, Lcom/firebase/client/core/PersistentConnection;->merge(Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->abortTransactions(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object p1

    .line 333
    invoke-direct {p0, p1}, Lcom/firebase/client/core/Repo;->rerunTransactionsAndUpdateVisibleData(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    .line 334
    iget-object p2, p0, Lcom/firebase/client/core/Repo;->viewManager:Lcom/firebase/client/core/ViewManager;

    invoke-virtual {p2, p1, v0}, Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V

    return-void
.end method
