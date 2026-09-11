.class final Lcom/firebase/client/snapshot/NodeUtilities$4;
.super Ljava/lang/Object;
.source "NodeUtilities.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/snapshot/NodeUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/firebase/client/utilities/tuple/NameAndPriority;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/firebase/client/utilities/tuple/NameAndPriority;Lcom/firebase/client/utilities/tuple/NameAndPriority;)I
    .locals 2

    .line 170
    invoke-virtual {p1}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-virtual {p2}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    invoke-static {v0, p1, v1, p2}, Lcom/firebase/client/snapshot/NodeUtilities;->nameAndPriorityCompare(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 167
    check-cast p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    check-cast p2, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-virtual {p0, p1, p2}, Lcom/firebase/client/snapshot/NodeUtilities$4;->compare(Lcom/firebase/client/utilities/tuple/NameAndPriority;Lcom/firebase/client/utilities/tuple/NameAndPriority;)I

    move-result p1

    return p1
.end method
