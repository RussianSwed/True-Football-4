.class Lcom/firebase/client/Query$2;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Query;->removeEventListener(Lcom/firebase/client/ValueEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Query;

.field final synthetic val$listener:Lcom/firebase/client/ValueEventListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/Query;Lcom/firebase/client/ValueEventListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/firebase/client/Query$2;->this$0:Lcom/firebase/client/Query;

    iput-object p2, p0, Lcom/firebase/client/Query$2;->val$listener:Lcom/firebase/client/ValueEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/firebase/client/Query$2;->this$0:Lcom/firebase/client/Query;

    iget-object v0, v0, Lcom/firebase/client/Query;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Query$2;->this$0:Lcom/firebase/client/Query;

    new-instance v2, Lcom/firebase/client/core/ValueListenerContainer;

    iget-object v3, p0, Lcom/firebase/client/Query$2;->val$listener:Lcom/firebase/client/ValueEventListener;

    invoke-direct {v2, v3}, Lcom/firebase/client/core/ValueListenerContainer;-><init>(Lcom/firebase/client/ValueEventListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/Repo;->removeEventCallback(Lcom/firebase/client/Query;Lcom/firebase/client/core/ListenerContainer;)V

    return-void
.end method
