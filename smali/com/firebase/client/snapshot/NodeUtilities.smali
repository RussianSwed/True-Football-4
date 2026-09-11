.class public Lcom/firebase/client/snapshot/NodeUtilities;
.super Ljava/lang/Object;
.source "NodeUtilities.java"


# static fields
.field public static NameAndPriorityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/firebase/client/utilities/tuple/NameAndPriority;",
            ">;"
        }
    .end annotation
.end field

.field public static NameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/firebase/client/snapshot/NodeUtilities$3;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/NodeUtilities$3;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/NodeUtilities;->NameComparator:Ljava/util/Comparator;

    .line 167
    new-instance v0, Lcom/firebase/client/snapshot/NodeUtilities$4;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/NodeUtilities$4;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/NodeUtilities;->NameAndPriorityComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/firebase/client/snapshot/PriorityUtilities;->NullPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    return-object p0
.end method

.method public static NodeFromJSON(Ljava/lang/Object;Lcom/firebase/client/snapshot/NodePriority;)Lcom/firebase/client/snapshot/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/firebase/client/FirebaseException;
        }
    .end annotation

    const-string v0, ".value"

    const-string v1, ".priority"

    .line 25
    :try_start_0
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 26
    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    .line 27
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/firebase/client/snapshot/PriorityUtilities;->parsePriority(Ljava/lang/Object;)Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    .line 31
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    .line 37
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object p0

    return-object p0

    .line 38
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 39
    new-instance v0, Lcom/firebase/client/snapshot/StringNode;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/snapshot/StringNode;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    return-object v0

    .line 40
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 41
    new-instance v0, Lcom/firebase/client/snapshot/LongNode;

    check-cast p0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/firebase/client/snapshot/NodePriority;)V

    return-object v0

    .line 42
    :cond_4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 43
    new-instance v0, Lcom/firebase/client/snapshot/LongNode;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/snapshot/LongNode;-><init>(Ljava/lang/Long;Lcom/firebase/client/snapshot/NodePriority;)V

    return-object v0

    .line 44
    :cond_5
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 45
    new-instance v0, Lcom/firebase/client/snapshot/DoubleNode;

    check-cast p0, Ljava/lang/Double;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/snapshot/DoubleNode;-><init>(Ljava/lang/Double;Lcom/firebase/client/snapshot/NodePriority;)V

    return-object v0

    .line 46
    :cond_6
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 47
    new-instance v0, Lcom/firebase/client/snapshot/BooleanNode;

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/firebase/client/snapshot/NodePriority;)V

    return-object v0

    .line 48
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 49
    check-cast p0, Ljava/util/Map;

    const-string v0, ".sv"

    .line 50
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51
    new-instance v0, Lcom/firebase/client/snapshot/DeferredValueNode;

    invoke-direct {v0, p0, p1}, Lcom/firebase/client/snapshot/DeferredValueNode;-><init>(Ljava/util/Map;Lcom/firebase/client/snapshot/NodePriority;)V

    return-object v0

    .line 55
    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 56
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 59
    :cond_9
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 61
    invoke-static {v6}, Lcom/firebase/client/utilities/Validation;->validateWritableKey(Ljava/lang/String;)V

    const-string v7, "."

    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 63
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 64
    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    if-nez v5, :cond_b

    .line 65
    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v5

    invoke-interface {v5}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    :goto_1
    const/4 v5, 0x1

    .line 66
    :goto_2
    new-instance v8, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    .line 67
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_c
    new-instance p0, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;

    invoke-direct {p0}, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;-><init>()V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    sget-object v2, Lcom/firebase/client/snapshot/NodeUtilities;->NameComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v1, v0, v2}, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;->buildFrom(Ljava/util/List;Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object p0

    if-eqz v5, :cond_d

    .line 79
    new-instance v1, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;

    invoke-direct {v1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;-><init>()V

    .line 81
    new-instance v2, Lcom/firebase/client/snapshot/NodeUtilities$1;

    invoke-direct {v2}, Lcom/firebase/client/snapshot/NodeUtilities$1;-><init>()V

    sget-object v3, Lcom/firebase/client/snapshot/NodeUtilities;->NameAndPriorityComparator:Ljava/util/Comparator;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/firebase/client/snapshot/SortedChildrenNode;

    invoke-direct {v1, p1, p0, v0}, Lcom/firebase/client/snapshot/SortedChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object v1

    .line 91
    :cond_d
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {v0, p1, p0}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object v0

    .line 94
    :cond_e
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_14

    .line 95
    check-cast p0, Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 99
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_12

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/firebase/client/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/firebase/client/snapshot/Node;

    move-result-object v7

    .line 102
    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    if-nez v5, :cond_10

    .line 103
    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v5

    invoke-interface {v5}, Lcom/firebase/client/snapshot/NodePriority;->isNull()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    const/4 v5, 0x1

    .line 104
    :goto_5
    new-instance v8, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-interface {v7}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    .line 105
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 110
    :cond_12
    new-instance p0, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;

    invoke-direct {p0}, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;-><init>()V

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    sget-object v2, Lcom/firebase/client/snapshot/NodeUtilities;->NameComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v1, v0, v2}, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;->buildFrom(Ljava/util/List;Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object p0

    if-eqz v5, :cond_13

    .line 116
    new-instance v1, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;

    invoke-direct {v1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;-><init>()V

    .line 118
    new-instance v2, Lcom/firebase/client/snapshot/NodeUtilities$2;

    invoke-direct {v2}, Lcom/firebase/client/snapshot/NodeUtilities$2;-><init>()V

    sget-object v4, Lcom/firebase/client/snapshot/NodeUtilities;->NameAndPriorityComparator:Ljava/util/Comparator;

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/firebase/client/snapshot/SortedChildrenNode;

    invoke-direct {v1, p1, p0, v0}, Lcom/firebase/client/snapshot/SortedChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object v1

    .line 128
    :cond_13
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {v0, p1, p0}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>(Lcom/firebase/client/snapshot/NodePriority;Lcom/firebase/client/collection/ImmutableSortedMap;)V

    return-object v0

    .line 131
    :cond_14
    new-instance p1, Lcom/firebase/client/FirebaseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse node with class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 134
    new-instance p1, Lcom/firebase/client/FirebaseException;

    const-string v0, "Failed to parse node"

    invoke-direct {p1, v0, p0}, Lcom/firebase/client/FirebaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public static nameAndPriorityCompare(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)I
    .locals 0

    .line 159
    invoke-interface {p1, p3}, Lcom/firebase/client/snapshot/NodePriority;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    .line 163
    :cond_0
    sget-object p1, Lcom/firebase/client/snapshot/NodeUtilities;->NameComparator:Ljava/util/Comparator;

    invoke-interface {p1, p0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
