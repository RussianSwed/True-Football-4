.class Lcom/firebase/client/Firebase$2;
.super Ljava/lang/Object;
.source "Firebase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Firebase;->setPriorityInternal(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Firebase;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$CompletionListener;

.field final synthetic val$priority:Lcom/firebase/client/snapshot/NodePriority;


# direct methods
.method constructor <init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/firebase/client/Firebase$2;->this$0:Lcom/firebase/client/Firebase;

    iput-object p2, p0, Lcom/firebase/client/Firebase$2;->val$priority:Lcom/firebase/client/snapshot/NodePriority;

    iput-object p3, p0, Lcom/firebase/client/Firebase$2;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/firebase/client/Firebase$2;->this$0:Lcom/firebase/client/Firebase;

    iget-object v0, v0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Firebase$2;->this$0:Lcom/firebase/client/Firebase;

    iget-object v1, v1, Lcom/firebase/client/Firebase;->path:Lcom/firebase/client/core/Path;

    iget-object v2, p0, Lcom/firebase/client/Firebase$2;->val$priority:Lcom/firebase/client/snapshot/NodePriority;

    iget-object v3, p0, Lcom/firebase/client/Firebase$2;->val$listener:Lcom/firebase/client/Firebase$CompletionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/firebase/client/core/Repo;->setPriority(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method
