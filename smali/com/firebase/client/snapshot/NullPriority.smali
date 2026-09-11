.class public Lcom/firebase/client/snapshot/NullPriority;
.super Ljava/lang/Object;
.source "NullPriority.java"

# interfaces
.implements Lcom/firebase/client/snapshot/NodePriority;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/snapshot/NodePriority;)I
    .locals 0

    .line 28
    invoke-interface {p1}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/firebase/client/snapshot/NodePriority;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/NullPriority;->compareTo(Lcom/firebase/client/snapshot/NodePriority;)I

    move-result p1

    return p1
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
