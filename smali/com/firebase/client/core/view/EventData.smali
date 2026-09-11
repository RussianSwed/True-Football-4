.class public Lcom/firebase/client/core/view/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# instance fields
.field private eventListener:Lcom/firebase/client/core/ListenerContainer;

.field private eventType:Lcom/firebase/client/core/Constants$EventType;

.field private prevName:Ljava/lang/String;

.field private snapshot:Lcom/firebase/client/DataSnapshot;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/core/ListenerContainer;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/firebase/client/core/view/EventData;->eventType:Lcom/firebase/client/core/Constants$EventType;

    .line 23
    iput-object p2, p0, Lcom/firebase/client/core/view/EventData;->eventListener:Lcom/firebase/client/core/ListenerContainer;

    return-void
.end method


# virtual methods
.method public getEventListener()Lcom/firebase/client/core/ListenerContainer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/firebase/client/core/view/EventData;->eventListener:Lcom/firebase/client/core/ListenerContainer;

    return-object v0
.end method

.method public getEventRunner()Ljava/lang/Runnable;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/firebase/client/core/view/EventData;->eventListener:Lcom/firebase/client/core/ListenerContainer;

    invoke-virtual {v0, p0}, Lcom/firebase/client/core/ListenerContainer;->getEventRunner(Lcom/firebase/client/core/view/EventData;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Lcom/firebase/client/core/Constants$EventType;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/firebase/client/core/view/EventData;->eventType:Lcom/firebase/client/core/Constants$EventType;

    return-object v0
.end method

.method public getPrevName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/firebase/client/core/view/EventData;->prevName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshot()Lcom/firebase/client/DataSnapshot;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/firebase/client/core/view/EventData;->snapshot:Lcom/firebase/client/DataSnapshot;

    return-object v0
.end method

.method public setPrevName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/firebase/client/core/view/EventData;->prevName:Ljava/lang/String;

    return-void
.end method

.method public setSnapshotNode(Lcom/firebase/client/DataSnapshot;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/firebase/client/core/view/EventData;->snapshot:Lcom/firebase/client/DataSnapshot;

    return-void
.end method
