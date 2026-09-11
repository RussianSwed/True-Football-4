.class public Lcom/firebase/client/snapshot/StringPriority;
.super Ljava/lang/Object;
.source "StringPriority.java"

# interfaces
.implements Lcom/firebase/client/snapshot/NodePriority;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/firebase/client/snapshot/StringPriority;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/snapshot/NodePriority;)I
    .locals 1

    .line 33
    instance-of v0, p1, Lcom/firebase/client/snapshot/StringPriority;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/firebase/client/snapshot/StringPriority;->value:Ljava/lang/String;

    check-cast p1, Lcom/firebase/client/snapshot/StringPriority;

    iget-object p1, p1, Lcom/firebase/client/snapshot/StringPriority;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/firebase/client/snapshot/NodePriority;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/StringPriority;->compareTo(Lcom/firebase/client/snapshot/NodePriority;)I

    move-result p1

    return p1
.end method

.method public getHash()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "string:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/client/snapshot/StringPriority;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/firebase/client/snapshot/StringPriority;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
