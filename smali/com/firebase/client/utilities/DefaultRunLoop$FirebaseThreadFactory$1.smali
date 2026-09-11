.class Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;
.super Ljava/lang/Object;
.source "DefaultRunLoop.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;


# direct methods
.method constructor <init>(Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;->this$1:Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 30
    iget-object p1, p0, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory$1;->this$1:Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;

    iget-object p1, p1, Lcom/firebase/client/utilities/DefaultRunLoop$FirebaseThreadFactory;->this$0:Lcom/firebase/client/utilities/DefaultRunLoop;

    invoke-static {p1}, Lcom/firebase/client/utilities/DefaultRunLoop;->access$000(Lcom/firebase/client/utilities/DefaultRunLoop;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uncaught exception in Firebase runloop ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/firebase/client/Firebase;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Please report to support@firebase.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
