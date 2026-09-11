.class Lcom/firebase/client/core/Repo$TransactionData;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/Repo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransactionData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/firebase/client/core/Repo$TransactionData;",
        ">;"
    }
.end annotation


# instance fields
.field private abortReason:Lcom/firebase/client/FirebaseError;

.field private applyLocally:Z

.field private handler:Lcom/firebase/client/Transaction$Handler;

.field private order:J

.field private outstandingListener:Lcom/firebase/client/ValueEventListener;

.field private path:Lcom/firebase/client/core/Path;

.field private retryCount:I

.field private status:Lcom/firebase/client/core/Repo$TransactionStatus;


# direct methods
.method private constructor <init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/Repo$TransactionStatus;ZJ)V
    .locals 0

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->path:Lcom/firebase/client/core/Path;

    .line 525
    iput-object p2, p0, Lcom/firebase/client/core/Repo$TransactionData;->handler:Lcom/firebase/client/Transaction$Handler;

    .line 526
    iput-object p3, p0, Lcom/firebase/client/core/Repo$TransactionData;->outstandingListener:Lcom/firebase/client/ValueEventListener;

    .line 527
    iput-object p4, p0, Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;

    const/4 p1, 0x0

    .line 528
    iput p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->retryCount:I

    .line 529
    iput-boolean p5, p0, Lcom/firebase/client/core/Repo$TransactionData;->applyLocally:Z

    .line 530
    iput-wide p6, p0, Lcom/firebase/client/core/Repo$TransactionData;->order:J

    const/4 p1, 0x0

    .line 531
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->abortReason:Lcom/firebase/client/FirebaseError;

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/Repo$TransactionStatus;ZJLcom/firebase/client/core/Repo$1;)V
    .locals 0

    .line 512
    invoke-direct/range {p0 .. p7}, Lcom/firebase/client/core/Repo$TransactionData;-><init>(Lcom/firebase/client/core/Path;Lcom/firebase/client/Transaction$Handler;Lcom/firebase/client/ValueEventListener;Lcom/firebase/client/core/Repo$TransactionStatus;ZJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Repo$TransactionStatus;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/core/Repo$TransactionStatus;)Lcom/firebase/client/core/Repo$TransactionStatus;
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->status:Lcom/firebase/client/core/Repo$TransactionStatus;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/core/Path;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/firebase/client/core/Repo$TransactionData;->path:Lcom/firebase/client/core/Path;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/firebase/client/core/Repo$TransactionData;)I
    .locals 0

    .line 512
    iget p0, p0, Lcom/firebase/client/core/Repo$TransactionData;->retryCount:I

    return p0
.end method

.method static synthetic access$1308(Lcom/firebase/client/core/Repo$TransactionData;)I
    .locals 2

    .line 512
    iget v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/firebase/client/core/Repo$TransactionData;->retryCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/Transaction$Handler;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/firebase/client/core/Repo$TransactionData;->handler:Lcom/firebase/client/Transaction$Handler;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/ValueEventListener;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/firebase/client/core/Repo$TransactionData;->outstandingListener:Lcom/firebase/client/ValueEventListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/firebase/client/core/Repo$TransactionData;)Lcom/firebase/client/FirebaseError;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/firebase/client/core/Repo$TransactionData;->abortReason:Lcom/firebase/client/FirebaseError;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/firebase/client/core/Repo$TransactionData;Lcom/firebase/client/FirebaseError;)Lcom/firebase/client/FirebaseError;
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/firebase/client/core/Repo$TransactionData;->abortReason:Lcom/firebase/client/FirebaseError;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/firebase/client/core/Repo$TransactionData;)Z
    .locals 0

    .line 512
    iget-boolean p0, p0, Lcom/firebase/client/core/Repo$TransactionData;->applyLocally:Z

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/core/Repo$TransactionData;)I
    .locals 4

    .line 536
    iget-wide v0, p0, Lcom/firebase/client/core/Repo$TransactionData;->order:J

    iget-wide v2, p1, Lcom/firebase/client/core/Repo$TransactionData;->order:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 512
    check-cast p1, Lcom/firebase/client/core/Repo$TransactionData;

    invoke-virtual {p0, p1}, Lcom/firebase/client/core/Repo$TransactionData;->compareTo(Lcom/firebase/client/core/Repo$TransactionData;)I

    move-result p1

    return p1
.end method
