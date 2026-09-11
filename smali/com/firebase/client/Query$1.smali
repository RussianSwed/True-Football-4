.class Lcom/firebase/client/Query$1;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/Query;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/Query;

.field final synthetic val$listener:Lcom/firebase/client/ValueEventListener;

.field final synthetic val$progress:Lcom/firebase/client/Query$SingleEventProgress;


# direct methods
.method constructor <init>(Lcom/firebase/client/Query;Lcom/firebase/client/Query$SingleEventProgress;Lcom/firebase/client/ValueEventListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/firebase/client/Query$1;->this$0:Lcom/firebase/client/Query;

    iput-object p2, p0, Lcom/firebase/client/Query$1;->val$progress:Lcom/firebase/client/Query$SingleEventProgress;

    iput-object p3, p0, Lcom/firebase/client/Query$1;->val$listener:Lcom/firebase/client/ValueEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/firebase/client/Query$1;->val$listener:Lcom/firebase/client/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/firebase/client/ValueEventListener;->onCancelled(Lcom/firebase/client/FirebaseError;)V

    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/firebase/client/Query$1;->val$progress:Lcom/firebase/client/Query$SingleEventProgress;

    invoke-virtual {v0}, Lcom/firebase/client/Query$SingleEventProgress;->hasBeenCalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/firebase/client/Query$1;->val$progress:Lcom/firebase/client/Query$SingleEventProgress;

    invoke-virtual {v0}, Lcom/firebase/client/Query$SingleEventProgress;->setCalled()V

    .line 86
    iget-object v0, p0, Lcom/firebase/client/Query$1;->this$0:Lcom/firebase/client/Query;

    invoke-virtual {v0, p0}, Lcom/firebase/client/Query;->removeEventListener(Lcom/firebase/client/ValueEventListener;)V

    .line 87
    iget-object v0, p0, Lcom/firebase/client/Query$1;->val$listener:Lcom/firebase/client/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/firebase/client/ValueEventListener;->onDataChange(Lcom/firebase/client/DataSnapshot;)V

    :cond_0
    return-void
.end method
