.class Lcom/firebase/client/core/Repo$2$2;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo$2;->onAuthSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/core/Repo$2;

.field final synthetic val$authData:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo$2;Ljava/lang/Object;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/firebase/client/core/Repo$2$2;->this$1:Lcom/firebase/client/core/Repo$2;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$2$2;->val$authData:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/firebase/client/core/Repo$2$2;->this$1:Lcom/firebase/client/core/Repo$2;

    iget-object v0, v0, Lcom/firebase/client/core/Repo$2;->val$listener:Lcom/firebase/client/Firebase$AuthListener;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$2$2;->val$authData:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/firebase/client/Firebase$AuthListener;->onAuthSuccess(Ljava/lang/Object;)V

    return-void
.end method
