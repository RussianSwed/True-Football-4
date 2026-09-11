.class public Lcom/firebase/client/snapshot/DeferredValuePriority;
.super Ljava/lang/Object;
.source "DeferredValuePriority.java"

# interfaces
.implements Lcom/firebase/client/snapshot/NodePriority;


# instance fields
.field private value:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/firebase/client/snapshot/DeferredValuePriority;->value:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/snapshot/NodePriority;)I
    .locals 0

    .line 30
    instance-of p1, p1, Lcom/firebase/client/snapshot/DeferredValuePriority;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/firebase/client/snapshot/NodePriority;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/DeferredValuePriority;->compareTo(Lcom/firebase/client/snapshot/NodePriority;)I

    move-result p1

    return p1
.end method

.method public getHash()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deferredValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/snapshot/DeferredValuePriority;->value:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/firebase/client/snapshot/DeferredValuePriority;->value:Ljava/util/Map;

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
