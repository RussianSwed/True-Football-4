.class Lcom/firebase/client/Query$4;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Query;->addEventCallback(Lcom/firebase/client/core/ListenerContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Query;

.field final synthetic val$listener:Lcom/firebase/client/core/ListenerContainer;


# direct methods
.method constructor <init>(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/firebase/client/Query$4;->this$0:Lcom/firebase/client/Query;

    iput-object p2, p0, Lcom/firebase/client/Query$4;->val$listener:Lcom/firebase/client/core/ListenerContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/firebase/client/Query$4;->this$0:Lcom/firebase/client/Query;

    iget-object v0, v0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Query$4;->this$0:Lcom/firebase/client/Query;

    iget-object v2, p0, Lcom/firebase/client/Query$4;->val$listener:Lcom/firebase/client/core/ListenerContainer;

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/Repo;->addEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V

    return-void
.end method
