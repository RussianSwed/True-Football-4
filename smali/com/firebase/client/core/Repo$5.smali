.class Lcom/firebase/client/core/Repo$5;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->setValue(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$path:Lcom/firebase/client/core/Path;

.field final synthetic val$setIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Ljava/util/List;Lcom/firebase/client/core/Path;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/firebase/client/core/Repo$5;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$5;->val$setIds:Ljava/util/List;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$5;->val$path:Lcom/firebase/client/core/Path;

    iput-object p4, p0, Lcom/firebase/client/core/Repo$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/firebase/client/core/Repo$5;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/FirebaseData;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/Repo$5;->val$setIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/FirebaseData;->setCompleted(Ljava/util/List;)V

    if-nez p2, :cond_1

    .line 228
    iget-object p2, p0, Lcom/firebase/client/core/Repo$5;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {p2}, Lcom/firebase/client/core/Repo;->access$400(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$5;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {v1}, Lcom/firebase/client/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/firebase/client/core/Repo$5;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {p2}, Lcom/firebase/client/core/Repo;->access$300(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/FirebaseData;

    move-result-object p2

    iget-object v0, p0, Lcom/firebase/client/core/Repo$5;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {p2, v0}, Lcom/firebase/client/core/FirebaseData;->mergeServerAndPendingData(Lcom/firebase/client/core/Path;)Z

    .line 232
    iget-object p2, p0, Lcom/firebase/client/core/Repo$5;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v0, p0, Lcom/firebase/client/core/Repo$5;->val$path:Lcom/firebase/client/core/Path;

    invoke-static {p2, v0}, Lcom/firebase/client/core/Repo;->access$500(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/Path;

    move-result-object p2

    .line 233
    iget-object v0, p0, Lcom/firebase/client/core/Repo$5;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$600(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/ViewManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Lcom/firebase/client/core/ViewManager;->raiseEventsForChange(Lcom/firebase/client/core/Path;Ljava/util/List;)V

    .line 235
    :cond_1
    iget-object p2, p0, Lcom/firebase/client/core/Repo$5;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v0, p0, Lcom/firebase/client/core/Repo$5;->val$onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$5;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {p2, v0, p1, v1}, Lcom/firebase/client/core/Repo;->callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V

    return-void
.end method
