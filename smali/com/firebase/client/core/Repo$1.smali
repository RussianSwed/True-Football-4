.class Lcom/firebase/client/core/Repo$1;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;-><init>(Lcom/firebase/client/core/RepoInfo;Lcom/firebase/client/core/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/firebase/client/core/Repo$1;->this$0:Lcom/firebase/client/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/firebase/client/core/Repo$1;->this$0:Lcom/firebase/client/core/Repo;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "authenticated"

    invoke-static {v0, v2, v1}, Lcom/firebase/client/core/Repo;->access$000(Lcom/firebase/client/core/Repo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/firebase/client/core/Repo$1;->this$0:Lcom/firebase/client/core/Repo;

    const-string v2, "connected"

    invoke-static {v0, v2, v1}, Lcom/firebase/client/core/Repo;->access$000(Lcom/firebase/client/core/Repo;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/firebase/client/core/Repo$1;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$100(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/PersistentConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/PersistentConnection;->establishConnection()V

    return-void
.end method
