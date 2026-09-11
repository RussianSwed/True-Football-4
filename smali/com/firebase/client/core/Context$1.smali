.class Lcom/firebase/client/core/Context$1;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Lcom/firebase/client/EventTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Context;->tryAndroidHandler()Lcom/firebase/client/EventTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private logger:Lcom/firebase/client/utilities/LogWrapper;

.field final synthetic this$0:Lcom/firebase/client/core/Context;

.field final synthetic val$handler:Ljava/lang/Object;

.field final synthetic val$post:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Context;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/firebase/client/core/Context$1;->this$0:Lcom/firebase/client/core/Context;

    iput-object p2, p0, Lcom/firebase/client/core/Context$1;->val$post:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/firebase/client/core/Context$1;->val$handler:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "AndroidEventTarget"

    .line 147
    invoke-virtual {p1, p2}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/core/Context$1;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/Runnable;)V
    .locals 5

    const-string v0, "Failed to post event"

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/firebase/client/core/Context$1;->val$post:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/firebase/client/core/Context$1;->val$handler:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    iget-object v1, p0, Lcom/firebase/client/core/Context$1;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1, v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 154
    iget-object v1, p0, Lcom/firebase/client/core/Context$1;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v1, v0, p1}, Lcom/firebase/client/utilities/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
