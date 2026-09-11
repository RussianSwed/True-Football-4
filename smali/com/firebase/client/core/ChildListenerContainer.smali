.class public Lcom/firebase/client/core/ChildListenerContainer;
.super Lcom/firebase/client/core/ListenerContainer;
.source "ChildListenerContainer.java"


# instance fields
.field private final eventListener:Lcom/firebase/client/ChildEventListener;


# direct methods
.method public constructor <init>(Lcom/firebase/client/ChildEventListener;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/firebase/client/core/ListenerContainer;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/firebase/client/core/ChildListenerContainer;->eventListener:Lcom/firebase/client/ChildEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/client/core/ChildListenerContainer;)Lcom/firebase/client/ChildEventListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/firebase/client/core/ChildListenerContainer;->eventListener:Lcom/firebase/client/ChildEventListener;

    return-object p0
.end method


# virtual methods
.method public createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/Query;)Lcom/firebase/client/core/view/EventData;
    .locals 3

    .line 33
    new-instance v0, Lcom/firebase/client/Firebase;

    invoke-virtual {p2}, Lcom/firebase/client/Query;->getRepo()Lcom/firebase/client/core/Repo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object p2

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getChildName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 35
    new-instance p2, Lcom/firebase/client/core/view/EventData;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/Constants$EventType;

    move-result-object v1

    invoke-direct {p2, v1, p0}, Lcom/firebase/client/core/view/EventData;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/core/ListenerContainer;)V

    .line 36
    new-instance v1, Lcom/firebase/client/DataSnapshot;

    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/Node;)V

    .line 37
    invoke-virtual {p2, v1}, Lcom/firebase/client/core/view/EventData;->setSnapshotNode(Lcom/firebase/client/DataSnapshot;)V

    .line 38
    invoke-virtual {p1}, Lcom/firebase/client/core/view/Change;->getPrevName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/firebase/client/core/view/EventData;->setPrevName(Ljava/lang/String;)V

    return-object p2
.end method

.method public equals(Lcom/firebase/client/core/ListenerContainer;)Z
    .locals 1

    .line 27
    instance-of v0, p1, Lcom/firebase/client/core/ChildListenerContainer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/firebase/client/core/ChildListenerContainer;

    iget-object p1, p1, Lcom/firebase/client/core/ChildListenerContainer;->eventListener:Lcom/firebase/client/ChildEventListener;

    iget-object v0, p0, Lcom/firebase/client/core/ChildListenerContainer;->eventListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCancelEventRunner(Lcom/firebase/client/FirebaseError;)Ljava/lang/Runnable;
    .locals 1

    .line 69
    new-instance v0, Lcom/firebase/client/core/ChildListenerContainer$2;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/core/ChildListenerContainer$2;-><init>(Lcom/firebase/client/core/ChildListenerContainer;Lcom/firebase/client/FirebaseError;)V

    return-object v0
.end method

.method public getEventRunner(Lcom/firebase/client/core/view/EventData;)Ljava/lang/Runnable;
    .locals 1

    .line 44
    new-instance v0, Lcom/firebase/client/core/ChildListenerContainer$1;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/core/ChildListenerContainer$1;-><init>(Lcom/firebase/client/core/ChildListenerContainer;Lcom/firebase/client/core/view/EventData;)V

    return-object v0
.end method

.method public respondsTo(Lcom/firebase/client/core/Constants$EventType;)Z
    .locals 1

    .line 22
    sget-object v0, Lcom/firebase/client/core/Constants$EventType;->VALUE:Lcom/firebase/client/core/Constants$EventType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Child Event Listener"

    return-object v0
.end method
