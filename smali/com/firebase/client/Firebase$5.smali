.class Lcom/firebase/client/Firebase$5;
.super Ljava/lang/Object;
.source "Firebase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Firebase;->unauth(Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Firebase;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$CompletionListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/firebase/client/Firebase$5;->this$0:Lcom/firebase/client/Firebase;

    iput-object p2, p0, Lcom/firebase/client/Firebase$5;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/firebase/client/Firebase$5;->this$0:Lcom/firebase/client/Firebase;

    iget-object v0, v0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Firebase$5;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Repo;->unauth(Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method
