.class public Lcom/firebase/client/utilities/tuple/NameAndPriority;
.super Ljava/lang/Object;
.source "NameAndPriority.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/firebase/client/utilities/tuple/NameAndPriority;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private priority:Lcom/firebase/client/snapshot/NodePriority;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->name:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->priority:Lcom/firebase/client/snapshot/NodePriority;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/firebase/client/utilities/tuple/NameAndPriority;)I
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->priority:Lcom/firebase/client/snapshot/NodePriority;

    iget-object v2, p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;->priority:Lcom/firebase/client/snapshot/NodePriority;

    invoke-static {v0, v1, v2, p1}, Lcom/firebase/client/snapshot/NodeUtilities;->nameAndPriorityCompare(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-virtual {p0, p1}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->compareTo(Lcom/firebase/client/utilities/tuple/NameAndPriority;)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Lcom/firebase/client/snapshot/NodePriority;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/firebase/client/utilities/tuple/NameAndPriority;->priority:Lcom/firebase/client/snapshot/NodePriority;

    return-object v0
.end method
