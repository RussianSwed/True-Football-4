.class public abstract Lcom/firebase/client/core/view/View;
.super Ljava/lang/Object;
.source "View.java"


# instance fields
.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/firebase/client/core/ListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field protected complete:Z

.field private eventRaiser:Lcom/firebase/client/core/view/EventRaiser;

.field private logger:Lcom/firebase/client/utilities/LogWrapper;

.field protected query:Lcom/firebase/client/Query;

.field protected snapshotNode:Lcom/firebase/client/snapshot/Node;


# direct methods
.method public constructor <init>(Lcom/firebase/client/Query;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/firebase/client/core/view/View;->complete:Z

    .line 26
    iput-object p1, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/Query;

    .line 27
    iput-object p2, p0, Lcom/firebase/client/core/view/View;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/firebase/client/core/view/View;->callbacks:Ljava/util/List;

    .line 29
    new-instance p1, Lcom/firebase/client/core/view/EventRaiser;

    invoke-direct {p1, p3}, Lcom/firebase/client/core/view/EventRaiser;-><init>(Lcom/firebase/client/core/Context;)V

    iput-object p1, p0, Lcom/firebase/client/core/view/View;->eventRaiser:Lcom/firebase/client/core/view/EventRaiser;

    const-string p1, "View"

    .line 30
    invoke-virtual {p3, p1}, Lcom/firebase/client/core/Context;->getLogger(Ljava/lang/String;)Lcom/firebase/client/utilities/LogWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/core/view/View;->logger:Lcom/firebase/client/utilities/LogWrapper;

    return-void
.end method

.method private raiseEventsForChanges(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 117
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/view/Change;

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventType ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/Constants$EventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 121
    new-instance v5, Lcom/firebase/client/Firebase;

    iget-object v6, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/Query;

    invoke-virtual {v6}, Lcom/firebase/client/Query;->getRepo()Lcom/firebase/client/core/Repo;

    move-result-object v6

    iget-object v7, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/Query;

    invoke-virtual {v7}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 122
    invoke-virtual {v3}, Lcom/firebase/client/core/view/Change;->getChildName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 124
    new-instance v5, Lcom/firebase/client/Firebase;

    iget-object v7, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/Query;

    invoke-virtual {v7}, Lcom/firebase/client/Query;->getRepo()Lcom/firebase/client/core/Repo;

    move-result-object v7

    iget-object v8, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/Query;

    invoke-virtual {v8}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/firebase/client/Firebase;-><init>(Lcom/firebase/client/core/Repo;Lcom/firebase/client/core/Path;)V

    .line 127
    :cond_0
    new-instance v6, Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/Change;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/Node;)V

    .line 129
    invoke-virtual {v3}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/Constants$EventType;

    move-result-object v5

    sget-object v7, Lcom/firebase/client/core/Constants$EventType;->VALUE:Lcom/firebase/client/core/Constants$EventType;

    if-ne v5, v7, :cond_1

    invoke-virtual {v6}, Lcom/firebase/client/DataSnapshot;->hasChildren()Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " val ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {v3}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/Constants$EventType;

    move-result-object v5

    sget-object v7, Lcom/firebase/client/core/Constants$EventType;->VALUE:Lcom/firebase/client/core/Constants$EventType;

    if-eq v5, v7, :cond_2

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/firebase/client/DataSnapshot;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/firebase/client/core/view/View;->logger:Lcom/firebase/client/utilities/LogWrapper;

    invoke-virtual {v5, v4}, Lcom/firebase/client/utilities/LogWrapper;->debug(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 136
    :goto_2
    iget-object v5, p0, Lcom/firebase/client/core/view/View;->callbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 137
    iget-object v5, p0, Lcom/firebase/client/core/view/View;->callbacks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/core/ListenerContainer;

    .line 139
    invoke-virtual {v3}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/Constants$EventType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/firebase/client/core/ListenerContainer;->respondsTo(Lcom/firebase/client/core/Constants$EventType;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 140
    iget-object v6, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/Query;

    invoke-virtual {v5, v3, v6}, Lcom/firebase/client/core/ListenerContainer;->createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/Query;)Lcom/firebase/client/core/view/EventData;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 144
    :cond_5
    iget-object p1, p0, Lcom/firebase/client/core/view/View;->eventRaiser:Lcom/firebase/client/core/view/EventRaiser;

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/view/EventRaiser;->raiseEvents(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/firebase/client/core/ListenerContainer;)V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/firebase/client/core/view/View;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {p0, v1}, Lcom/firebase/client/core/view/View;->generateChangesForSnapshot(Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object v1

    .line 60
    iget-boolean v2, p0, Lcom/firebase/client/core/view/View;->complete:Z

    if-eqz v2, :cond_0

    .line 61
    new-instance v2, Lcom/firebase/client/core/view/Change;

    sget-object v3, Lcom/firebase/client/core/Constants$EventType;->VALUE:Lcom/firebase/client/core/Constants$EventType;

    iget-object v4, p0, Lcom/firebase/client/core/view/View;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-direct {v2, v3, v4}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;)V

    .line 62
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/core/view/Change;

    .line 67
    invoke-virtual {v3}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/Constants$EventType;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/firebase/client/core/ListenerContainer;->respondsTo(Lcom/firebase/client/core/Constants$EventType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    iget-object v4, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/Query;

    invoke-virtual {p1, v3, v4}, Lcom/firebase/client/core/ListenerContainer;->createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/Query;)Lcom/firebase/client/core/view/EventData;

    move-result-object v3

    .line 69
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/firebase/client/core/view/View;->eventRaiser:Lcom/firebase/client/core/view/EventRaiser;

    invoke-virtual {p1, v0}, Lcom/firebase/client/core/view/EventRaiser;->raiseEvents(Ljava/util/List;)V

    return-void
.end method

.method protected abstract filterChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation
.end method

.method protected generateChangesForSnapshot(Lcom/firebase/client/snapshot/Node;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    check-cast p1, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 153
    new-instance v1, Lcom/firebase/client/core/view/View$1;

    invoke-direct {v1, p0, v0}, Lcom/firebase/client/core/view/View$1;-><init>(Lcom/firebase/client/core/view/View;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    :cond_0
    return-object v0
.end method

.method public getParams()Lcom/firebase/client/core/view/QueryParams;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/Query;

    invoke-virtual {v0}, Lcom/firebase/client/Query;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Lcom/firebase/client/Query;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->query:Lcom/firebase/client/Query;

    return-object v0
.end method

.method public getSnapshotNode()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public hasCallbacks()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/firebase/client/core/view/View;->complete:Z

    return v0
.end method

.method public markComplete()V
    .locals 4

    .line 46
    iget-boolean v0, p0, Lcom/firebase/client/core/view/View;->complete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/firebase/client/core/view/View;->complete:Z

    .line 49
    new-instance v1, Lcom/firebase/client/core/view/Change;

    sget-object v2, Lcom/firebase/client/core/Constants$EventType;->VALUE:Lcom/firebase/client/core/Constants$EventType;

    iget-object v3, p0, Lcom/firebase/client/core/view/View;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-direct {v1, v2, v3}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;)V

    new-array v0, v0, [Lcom/firebase/client/core/view/Change;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/client/core/view/View;->raiseEventsForChanges(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public processChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/core/view/View;->filterChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lcom/firebase/client/core/view/View;->raiseEventsForChanges(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public raiseCancelEvents(Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->eventRaiser:Lcom/firebase/client/core/view/EventRaiser;

    iget-object v1, p0, Lcom/firebase/client/core/view/View;->callbacks:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/firebase/client/core/view/EventRaiser;->raiseCancelEvents(Ljava/util/List;Lcom/firebase/client/FirebaseError;)V

    return-void
.end method

.method public removeCallback(Lcom/firebase/client/core/ListenerContainer;)V
    .locals 2

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/firebase/client/core/view/View;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/view/View;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/ListenerContainer;

    invoke-virtual {v1, p1}, Lcom/firebase/client/core/ListenerContainer;->equals(Lcom/firebase/client/core/ListenerContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    :goto_0
    return-void
.end method
