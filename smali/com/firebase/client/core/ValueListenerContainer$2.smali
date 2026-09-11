.class Lcom/firebase/client/core/ValueListenerContainer$2;
.super Ljava/lang/Object;
.source "ValueListenerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ValueListenerContainer;->getCancelEventRunner(Lcom/firebase/client/FirebaseError;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/ValueListenerContainer;

.field final synthetic val$error:Lcom/firebase/client/FirebaseError;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ValueListenerContainer;Lcom/firebase/client/FirebaseError;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/firebase/client/core/ValueListenerContainer$2;->this$0:Lcom/firebase/client/core/ValueListenerContainer;

    iput-object p2, p0, Lcom/firebase/client/core/ValueListenerContainer$2;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/firebase/client/core/ValueListenerContainer$2;->this$0:Lcom/firebase/client/core/ValueListenerContainer;

    invoke-static {v0}, Lcom/firebase/client/core/ValueListenerContainer;->access$000(Lcom/firebase/client/core/ValueListenerContainer;)Lcom/firebase/client/ValueEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/ValueListenerContainer$2;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-interface {v0, v1}, Lcom/firebase/client/ValueEventListener;->onCancelled(Lcom/firebase/client/FirebaseError;)V

    return-void
.end method
