.class Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutstandingDisconnect"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private data:Ljava/lang/Object;

.field private onComplete:Lcom/firebase/client/Firebase$CompletionListener;

.field private pathString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->action:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->pathString:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->data:Ljava/lang/Object;

    .line 98
    iput-object p4, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;Lcom/firebase/client/core/PersistentConnection$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/firebase/client/Firebase$CompletionListener;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getOnComplete()Lcom/firebase/client/Firebase$CompletionListener;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->onComplete:Lcom/firebase/client/Firebase$CompletionListener;

    return-object v0
.end method

.method public getPathString()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$OutstandingDisconnect;->pathString:Ljava/lang/String;

    return-object v0
.end method
