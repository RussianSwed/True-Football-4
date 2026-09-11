.class final Lcom/firebase/client/snapshot/NodeUtilities$1;
.super Ljava/lang/Object;
.source "NodeUtilities.java"

# interfaces
.implements Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator<",
        "Lcom/firebase/client/utilities/tuple/NameAndPriority;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-virtual {p0, p1}, Lcom/firebase/client/snapshot/NodeUtilities$1;->translate(Lcom/firebase/client/utilities/tuple/NameAndPriority;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public translate(Lcom/firebase/client/utilities/tuple/NameAndPriority;)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-virtual {p1}, Lcom/firebase/client/utilities/tuple/NameAndPriority;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
