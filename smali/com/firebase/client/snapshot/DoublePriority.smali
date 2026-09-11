.class public Lcom/firebase/client/snapshot/DoublePriority;
.super Ljava/lang/Object;
.source "DoublePriority.java"

# interfaces
.implements Lcom/firebase/client/snapshot/NodePriority;


# instance fields
.field private value:D


# direct methods
.method public constructor <init>(Ljava/lang/Double;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/firebase/client/snapshot/DoublePriority;->value:D

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/snapshot/NodePriority;)I
    .locals 3

    .line 35
    invoke-interface {p1}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 38
    :cond_0
    instance-of v0, p1, Lcom/firebase/client/snapshot/StringPriority;

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 42
    :cond_1
    iget-wide v0, p0, Lcom/firebase/client/snapshot/DoublePriority;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast p1, Lcom/firebase/client/snapshot/DoublePriority;

    iget-wide v1, p1, Lcom/firebase/client/snapshot/DoublePriority;->value:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/firebase/client/snapshot/NodePriority;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/DoublePriority;->compareTo(Lcom/firebase/client/snapshot/NodePriority;)I

    move-result p1

    return p1
.end method

.method public getHash()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/firebase/client/snapshot/DoublePriority;->value:D

    invoke-static {v1, v2}, Lcom/firebase/client/utilities/Utilities;->doubleToHashString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/firebase/client/snapshot/DoublePriority;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
