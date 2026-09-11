.class Lcom/firebase/client/core/ValueListenerContainer$1;
.super Ljava/lang/Object;
.source "ValueListenerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ValueListenerContainer;->getEventRunner(Lcom/firebase/client/core/view/EventData;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/ValueListenerContainer;

.field final synthetic val$eventData:Lcom/firebase/client/core/view/EventData;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ValueListenerContainer;Lcom/firebase/client/core/view/EventData;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/firebase/client/core/ValueListenerContainer$1;->this$0:Lcom/firebase/client/core/ValueListenerContainer;

    iput-object p2, p0, Lcom/firebase/client/core/ValueListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/firebase/client/core/ValueListenerContainer$1;->this$0:Lcom/firebase/client/core/ValueListenerContainer;

    invoke-static {v0}, Lcom/firebase/client/core/ValueListenerContainer;->access$000(Lcom/firebase/client/core/ValueListenerContainer;)Lcom/firebase/client/ValueEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/ValueListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/EventData;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/ValueEventListener;->onDataChange(Lcom/firebase/client/DataSnapshot;)V

    return-void
.end method
