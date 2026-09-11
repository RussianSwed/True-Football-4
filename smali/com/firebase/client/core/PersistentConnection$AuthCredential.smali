.class Lcom/firebase/client/core/PersistentConnection$AuthCredential;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthCredential"
.end annotation


# instance fields
.field private authData:Ljava/lang/Object;

.field private complete:Z

.field private credential:Ljava/lang/String;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/firebase/client/Firebase$AuthListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/firebase/client/Firebase$AuthListener;Ljava/lang/String;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->complete:Z

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    .line 127
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iput-object p2, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->credential:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCredential()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->credential:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->complete:Z

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->credential:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCancel(Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->complete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->complete:Z

    .line 160
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/Firebase$AuthListener;

    invoke-interface {v1, p1}, Lcom/firebase/client/Firebase$AuthListener;->onAuthError(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRevoked(Lcom/firebase/client/FirebaseError;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 169
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/Firebase$AuthListener;

    invoke-interface {v1, p1}, Lcom/firebase/client/Firebase$AuthListener;->onAuthRevoked(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 175
    iget-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->complete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->complete:Z

    .line 177
    iput-object p1, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->authData:Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/Firebase$AuthListener;

    invoke-interface {v1, p1}, Lcom/firebase/client/Firebase$AuthListener;->onAuthSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preempt()V
    .locals 3

    const-string v0, "preempted"

    .line 136
    invoke-static {v0}, Lcom/firebase/client/FirebaseError;->fromStatus(Ljava/lang/String;)Lcom/firebase/client/FirebaseError;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/Firebase$AuthListener;

    invoke-interface {v2, v0}, Lcom/firebase/client/Firebase$AuthListener;->onAuthError(Lcom/firebase/client/FirebaseError;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public replay(Lcom/firebase/client/Firebase$AuthListener;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/firebase/client/core/PersistentConnection$AuthCredential;->authData:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/firebase/client/Firebase$AuthListener;->onAuthSuccess(Ljava/lang/Object;)V

    return-void
.end method
