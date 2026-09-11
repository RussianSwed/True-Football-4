.class public Lcom/firebase/client/core/view/QueryMap;
.super Ljava/lang/Object;
.source "QueryMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/view/QueryMap$StopListener;
    }
.end annotation


# instance fields
.field private path:Lcom/firebase/client/core/Path;

.field private stopListener:Lcom/firebase/client/core/view/QueryMap$StopListener;

.field private views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/firebase/client/core/view/QueryParams;",
            "Lcom/firebase/client/core/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/firebase/client/core/Path;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/firebase/client/core/view/QueryMap;->path:Lcom/firebase/client/core/Path;

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public activate(Lcom/firebase/client/core/view/QueryMap$StopListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/firebase/client/core/view/QueryMap;->stopListener:Lcom/firebase/client/core/view/QueryMap$StopListener;

    return-void
.end method

.method public contains(Lcom/firebase/client/core/view/QueryParams;)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public deactivate()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->stopListener:Lcom/firebase/client/core/view/QueryMap$StopListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lcom/firebase/client/core/view/QueryMap$StopListener;->stopListening()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->stopListener:Lcom/firebase/client/core/view/QueryMap$StopListener;

    :cond_0
    return-void
.end method

.method public getDefaultView()Lcom/firebase/client/core/view/View;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    sget-object v1, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/View;

    return-object v0
.end method

.method public getParamsSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/firebase/client/core/view/QueryParams;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->path:Lcom/firebase/client/core/Path;

    return-object v0
.end method

.method public getView(Lcom/firebase/client/core/view/QueryParams;)Lcom/firebase/client/core/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/client/core/view/View;

    return-object p1
.end method

.method public getViews()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/firebase/client/core/view/View;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasActiveDefaultQuery()Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryMap;->hasDefaultQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/client/core/view/QueryMap;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDefaultQuery()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    sget-object v1, Lcom/firebase/client/core/view/QueryParams;->DEFAULT_PARAMS:Lcom/firebase/client/core/view/QueryParams;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->stopListener:Lcom/firebase/client/core/view/QueryMap$StopListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public markComplete()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/View;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/View;->markComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeStopListener()Lcom/firebase/client/core/view/QueryMap$StopListener;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->stopListener:Lcom/firebase/client/core/view/QueryMap$StopListener;

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcom/firebase/client/core/view/QueryMap;->stopListener:Lcom/firebase/client/core/view/QueryMap$StopListener;

    return-object v0
.end method

.method public set(Lcom/firebase/client/core/view/QueryParams;Lcom/firebase/client/core/view/View;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryMap;->views:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
