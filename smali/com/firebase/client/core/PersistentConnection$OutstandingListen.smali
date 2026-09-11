.class Lcom/firebase/client/core/PersistentConnection$OutstandingListen;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutstandingListen"
.end annotation


# instance fields
.field private onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field private params:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/Firebase$CompletionListener;",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    .line 45
    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->params:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Set;Lcom/firebase/client/core/PersistentConnection$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;-><init>(Lcom/firebase/client/Firebase$CompletionListener;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    return-object v0
.end method

.method public getParams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->params:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingListen;->params:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
