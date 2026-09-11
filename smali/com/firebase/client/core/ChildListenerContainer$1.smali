.class Lcom/firebase/client/core/ChildListenerContainer$1;
.super Ljava/lang/Object;
.source "ChildListenerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ChildListenerContainer;->getEventRunner(Lcom/firebase/client/core/view/EventData;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/core/ChildListenerContainer;

.field final synthetic val$eventData:Lcom/firebase/client/core/view/EventData;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/ChildListenerContainer;Lcom/firebase/client/core/view/EventData;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->this$0:Lcom/firebase/client/core/ChildListenerContainer;

    iput-object p2, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 47
    sget-object v0, Lcom/firebase/client/core/ChildListenerContainer$3;->$SwitchMap$com$firebase$client$core$Constants$EventType:[I

    iget-object v1, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/EventData;->getEventType()Lcom/firebase/client/core/Constants$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/client/core/Constants$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->this$0:Lcom/firebase/client/core/ChildListenerContainer;

    invoke-static {v0}, Lcom/firebase/client/core/ChildListenerContainer;->access$000(Lcom/firebase/client/core/ChildListenerContainer;)Lcom/firebase/client/ChildEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/EventData;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/ChildEventListener;->onChildRemoved(Lcom/firebase/client/DataSnapshot;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->this$0:Lcom/firebase/client/core/ChildListenerContainer;

    invoke-static {v0}, Lcom/firebase/client/core/ChildListenerContainer;->access$000(Lcom/firebase/client/core/ChildListenerContainer;)Lcom/firebase/client/ChildEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/EventData;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/EventData;->getPrevName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/ChildEventListener;->onChildMoved(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->this$0:Lcom/firebase/client/core/ChildListenerContainer;

    invoke-static {v0}, Lcom/firebase/client/core/ChildListenerContainer;->access$000(Lcom/firebase/client/core/ChildListenerContainer;)Lcom/firebase/client/ChildEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/EventData;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/EventData;->getPrevName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/ChildEventListener;->onChildChanged(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->this$0:Lcom/firebase/client/core/ChildListenerContainer;

    invoke-static {v0}, Lcom/firebase/client/core/ChildListenerContainer;->access$000(Lcom/firebase/client/core/ChildListenerContainer;)Lcom/firebase/client/ChildEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/EventData;->getSnapshot()Lcom/firebase/client/DataSnapshot;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/client/core/ChildListenerContainer$1;->val$eventData:Lcom/firebase/client/core/view/EventData;

    invoke-virtual {v2}, Lcom/firebase/client/core/view/EventData;->getPrevName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/firebase/client/ChildEventListener;->onChildAdded(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
