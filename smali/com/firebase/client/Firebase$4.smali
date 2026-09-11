.class Lcom/firebase/client/Firebase$4;
.super Ljava/lang/Object;
.source "Firebase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Firebase;->auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Firebase;

.field final synthetic val$credential:Ljava/lang/String;

.field final synthetic val$listener:Lcom/firebase/client/Firebase$AuthListener;


# direct methods
.method constructor <init>(Lcom/firebase/client/Firebase;Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/firebase/client/Firebase$4;->this$0:Lcom/firebase/client/Firebase;

    iput-object p2, p0, Lcom/firebase/client/Firebase$4;->val$credential:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/client/Firebase$4;->val$listener:Lcom/firebase/client/Firebase$AuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/firebase/client/Firebase$4;->this$0:Lcom/firebase/client/Firebase;

    iget-object v0, v0, Lcom/firebase/client/Firebase;->repo:Lcom/firebase/client/core/Repo;

    iget-object v1, p0, Lcom/firebase/client/Firebase$4;->val$credential:Ljava/lang/String;

    iget-object v2, p0, Lcom/firebase/client/Firebase$4;->val$listener:Lcom/firebase/client/Firebase$AuthListener;

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/core/Repo;->auth(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthListener;)V

    return-void
.end method
