.class public Lcom/firebase/client/core/view/EventRaiser;
.super Ljava/lang/Object;
.source "EventRaiser.java"


# instance fields
.field private eventTarget:Lcom/firebase/client/EventTarget;

.field private logger:Lcom/firebase/client/utilities/LogWrapper;


# direct methods
.method constructor <init>(Lcom/firebase/client/core/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/firebase/client/core/Context;->getEventTarget()Lcom/firebase/client/EventTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/client/core/view/EventRaiser;->eventTarget:Lcom/firebase/client/EventTarget;

    const-string v0, "EventRaiser"

    .line 24
    invoke-virtual {p1, v0}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/core/view/EventRaiser;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-void
.end method


# virtual methods
.method raiseCancelEvents(Ljava/util/List;Lcom/firebase/client/FirebaseError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/ListenerContainer;",
            ">;",
            "Lcom/firebase/client/FirebaseError;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 37
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/firebase/client/core/view/EventRaiser;->eventTarget:Lcom/firebase/client/EventTarget;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/ListenerContainer;

    invoke-virtual {v1, p2}, Lcom/firebase/client/core/ListenerContainer;->getCancelEventRunner(Lcom/firebase/client/FirebaseError;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method raiseEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/EventData;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/firebase/client/core/view/EventRaiser;->logger:Lcom/firebase/client/utilities/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raising "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/EventData;

    .line 31
    iget-object v2, p0, Lcom/firebase/client/core/view/EventRaiser;->eventTarget:Lcom/firebase/client/EventTarget;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/EventData;->getEventRunner()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/firebase/client/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
