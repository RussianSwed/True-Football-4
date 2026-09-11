.class Lcom/firebase/client/core/Context$3;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Lcom/firebase/client/EventTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Context;->tryJVMThreadPool()Lcom/firebase/client/EventTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Context;

.field final synthetic val$executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Context;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/firebase/client/core/Context$3;->this$0:Lcom/firebase/client/core/Context;

    iput-object p2, p0, Lcom/firebase/client/core/Context$3;->val$executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/firebase/client/core/Context$3;->val$executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
