.class public abstract Lcom/firebase/client/core/ListenerContainer;
.super Ljava/lang/Object;
.source "ListenerContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createEvent(Lcom/firebase/client/core/view/Change;Lcom/firebase/client/Query;)Lcom/firebase/client/core/view/EventData;
.end method

.method public abstract equals(Lcom/firebase/client/core/ListenerContainer;)Z
.end method

.method public abstract getCancelEventRunner(Lcom/firebase/client/FirebaseError;)Ljava/lang/Runnable;
.end method

.method public abstract getEventRunner(Lcom/firebase/client/core/view/EventData;)Ljava/lang/Runnable;
.end method

.method public abstract respondsTo(Lcom/firebase/client/core/Constants$EventType;)Z
.end method
