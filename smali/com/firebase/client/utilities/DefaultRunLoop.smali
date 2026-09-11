.class public Lcom/firebase/client/utilities/DefaultRunLoop;
.super Ljava/lang/Object;
.source "DefaultRunLoop.java"

# interfaces
.implements Lcom/firebase/client/RunLoop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;
    }
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private logger:Lcom/firebase/client/utilities/LogWrapper;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Context;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;

    invoke-direct {v0, p0}, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop;)V

    .line 44
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "DefaultRunLoop"

    .line 45
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/utilities/DefaultRunLoop;)Lcom/firebase/client/utilities/LogWrapper;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-object p0
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/firebase/client/utilities/DefaultRunLoop$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/utilities/DefaultRunLoop$2;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop;Ljava/lang/Runnable;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleNow(Ljava/lang/Runnable;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/firebase/client/utilities/DefaultRunLoop;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/firebase/client/utilities/DefaultRunLoop$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/utilities/DefaultRunLoop$1;-><init>(Lcom/firebase/client/utilities/DefaultRunLoop;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
