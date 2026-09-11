.class Lcom/firebase/client/core/Repo$2;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/Firebase$AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$AuthListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$2;->val$listener:Lcom/firebase/client/Firebase$AuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$200(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/core/Repo$2$1;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/Repo$2$1;-><init>(Lcom/firebase/client/core/Repo$2;Lcom/firebase/client/FirebaseError;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthRevoked(Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$200(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/core/Repo$2$3;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/Repo$2$3;-><init>(Lcom/firebase/client/core/Repo$2;Lcom/firebase/client/FirebaseError;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/firebase/client/core/Repo$2;->this$0:Lcom/firebase/client/core/Repo;

    invoke-static {v0}, Lcom/firebase/client/core/Repo;->access$200(Lcom/firebase/client/core/Repo;)Lcom/firebase/client/core/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object v0

    new-instance v1, Lcom/firebase/client/core/Repo$2$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/client/core/Repo$2$2;-><init>(Lcom/firebase/client/core/Repo$2;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    return-void
.end method
