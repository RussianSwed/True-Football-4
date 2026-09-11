.class Lcom/firebase/client/core/Repo$3;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/firebase/client/Firebase$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/Repo;->unauth(Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/Repo;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$path:Lcom/firebase/client/core/Path;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/Path;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/firebase/client/core/Repo$3;->this$0:Lcom/firebase/client/core/Repo;

    iput-object p2, p0, Lcom/firebase/client/core/Repo$3;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    iput-object p3, p0, Lcom/firebase/client/core/Repo$3;->val$path:Lcom/firebase/client/core/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/firebase/client/FirebaseError;Lcom/firebase/client/Firebase;)V
    .locals 2

    .line 194
    iget-object p2, p0, Lcom/firebase/client/core/Repo$3;->this$0:Lcom/firebase/client/core/Repo;

    iget-object v0, p0, Lcom/firebase/client/core/Repo$3;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    iget-object v1, p0, Lcom/firebase/client/core/Repo$3;->val$path:Lcom/firebase/client/core/Path;

    invoke-virtual {p2, v0, p1, v1}, Lcom/firebase/client/core/Repo;->callOnComplete(Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/FirebaseError;Lcom/firebase/client/core/Path;)V

    return-void
.end method
