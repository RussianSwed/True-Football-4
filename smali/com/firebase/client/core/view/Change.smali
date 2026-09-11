.class public Lcom/firebase/client/core/view/Change;
.super Ljava/lang/Object;
.source "Change.java"


# instance fields
.field private childName:Ljava/lang/String;

.field private eventType:Lcom/firebase/client/core/Constants$EventType;

.field private prevName:Ljava/lang/String;

.field private snapshotNode:Lcom/firebase/client/snapshot/Node;


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/firebase/client/core/view/Change;->eventType:Lcom/firebase/client/core/Constants$EventType;

    .line 21
    iput-object p2, p0, Lcom/firebase/client/core/view/Change;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/firebase/client/core/view/Change;->eventType:Lcom/firebase/client/core/Constants$EventType;

    .line 26
    iput-object p2, p0, Lcom/firebase/client/core/view/Change;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 27
    iput-object p3, p0, Lcom/firebase/client/core/view/Change;->childName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/firebase/client/core/view/Change;->prevName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/firebase/client/core/view/Change;->eventType:Lcom/firebase/client/core/Constants$EventType;

    .line 33
    iput-object p2, p0, Lcom/firebase/client/core/view/Change;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 34
    iput-object p3, p0, Lcom/firebase/client/core/view/Change;->childName:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/firebase/client/core/view/Change;->prevName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChildName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/firebase/client/core/view/Change;->childName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Lcom/firebase/client/core/Constants$EventType;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/firebase/client/core/view/Change;->eventType:Lcom/firebase/client/core/Constants$EventType;

    return-object v0
.end method

.method public getPrevName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/firebase/client/core/view/Change;->prevName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotNode()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/firebase/client/core/view/Change;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public setChildName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/firebase/client/core/view/Change;->childName:Ljava/lang/String;

    return-void
.end method

.method public setPrevName(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/firebase/client/core/view/Change;->prevName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/core/view/Change;->eventType:Lcom/firebase/client/core/Constants$EventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/core/view/Change;->childName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
