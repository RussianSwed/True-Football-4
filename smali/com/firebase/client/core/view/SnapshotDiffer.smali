.class public Lcom/firebase/client/core/view/SnapshotDiffer;
.super Ljava/lang/Object;
.source "SnapshotDiffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private callback:Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;

.field private diffMask:Lcom/firebase/client/core/utilities/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/firebase/client/core/view/SnapshotDiffer;->diffMask:Lcom/firebase/client/core/utilities/Tree;

    .line 46
    iput-object p2, p0, Lcom/firebase/client/core/view/SnapshotDiffer;->callback:Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;

    return-void
.end method

.method private compareChildren(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/snapshot/Node;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 210
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 213
    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/client/snapshot/Node;

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/firebase/client/snapshot/Node;

    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    invoke-static {v0, p1, v1, p2}, Lcom/firebase/client/snapshot/NodeUtilities;->nameAndPriorityCompare(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)I

    move-result p1

    return p1
.end method

.method public static diff(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;)V
    .locals 8

    .line 26
    invoke-interface {p0, p2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 27
    invoke-interface {p1, p2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 29
    new-instance v2, Lcom/firebase/client/core/view/SnapshotDiffer;

    invoke-direct {v2, p3, p4}, Lcom/firebase/client/core/view/SnapshotDiffer;-><init>(Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;)V

    .line 31
    invoke-direct {v2, p2, v0, v1}, Lcom/firebase/client/core/view/SnapshotDiffer;->diffRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Z

    move-result v6

    .line 33
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p3

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/firebase/client/snapshot/NodePriority;->compareTo(Ljava/lang/Object;)I

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    const/4 v7, 0x0

    :goto_0
    if-nez v6, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    .line 37
    invoke-direct/range {v2 .. v7}, Lcom/firebase/client/core/view/SnapshotDiffer;->propagateDiffUpward(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;ZZ)V

    :cond_2
    return-void
.end method

.method private diffChildrenRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/ChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode;Ljava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/ChildrenNode;",
            "Lcom/firebase/client/snapshot/ChildrenNode;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 79
    iget-object v4, v0, Lcom/firebase/client/core/view/SnapshotDiffer;->diffMask:Lcom/firebase/client/core/utilities/Tree;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/client/core/utilities/Tree;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 86
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 92
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/firebase/client/snapshot/ChildrenNode;->getIterator()Ljava/util/Iterator;

    move-result-object v13

    .line 95
    invoke-virtual/range {p3 .. p3}, Lcom/firebase/client/snapshot/ChildrenNode;->getIterator()Ljava/util/Iterator;

    move-result-object v14

    .line 97
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .line 98
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v6, v16

    const/16 v17, 0x0

    :goto_4
    if-nez v15, :cond_c

    if-eqz v6, :cond_4

    goto/16 :goto_9

    :cond_4
    const/4 v4, 0x0

    .line 161
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 162
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v5, :cond_5

    .line 164
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v6

    .line 165
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/firebase/client/snapshot/Node;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v12

    invoke-direct {v0, v6, v11, v12}, Lcom/firebase/client/core/view/SnapshotDiffer;->diffRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Z

    .line 166
    new-instance v6, Lcom/firebase/client/core/view/Change;

    sget-object v11, Lcom/firebase/client/core/Constants$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/Constants$EventType;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v11, v12, v5}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 170
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 171
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v5, :cond_7

    .line 173
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v6

    .line 174
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2, v8, v11}, Lcom/firebase/client/snapshot/ChildrenNode;->getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;

    move-result-object v8

    .line 175
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v11

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/firebase/client/snapshot/Node;

    invoke-direct {v0, v6, v11, v12}, Lcom/firebase/client/core/view/SnapshotDiffer;->diffRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Z

    .line 176
    new-instance v6, Lcom/firebase/client/core/view/Change;

    sget-object v11, Lcom/firebase/client/core/Constants$EventType;->CHILD_ADDED:Lcom/firebase/client/core/Constants$EventType;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v11, v12, v5, v8}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 180
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 181
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/utilities/Pair;

    .line 183
    invoke-virtual {v5}, Lcom/firebase/client/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 184
    invoke-virtual {v5}, Lcom/firebase/client/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v7

    .line 186
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2, v8, v11}, Lcom/firebase/client/snapshot/ChildrenNode;->getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;

    move-result-object v8

    .line 187
    new-instance v11, Lcom/firebase/client/core/view/Change;

    sget-object v12, Lcom/firebase/client/core/Constants$EventType;->CHILD_MOVED:Lcom/firebase/client/core/Constants$EventType;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14, v8}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/firebase/client/snapshot/Node;

    invoke-direct {v0, v7, v6, v8}, Lcom/firebase/client/core/view/SnapshotDiffer;->diffRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 192
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    .line 196
    :goto_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_b

    .line 197
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v2, v4, v6}, Lcom/firebase/client/snapshot/ChildrenNode;->getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;

    move-result-object v4

    .line 199
    new-instance v6, Lcom/firebase/client/core/view/Change;

    sget-object v7, Lcom/firebase/client/core/Constants$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/Constants$EventType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v7, v8, v1, v4}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    return v17

    .line 101
    :cond_c
    :goto_9
    invoke-direct {v0, v15, v6}, Lcom/firebase/client/core/view/SnapshotDiffer;->compareChildren(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v18

    if-gez v18, :cond_f

    .line 106
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 108
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 109
    new-instance v2, Lcom/firebase/client/utilities/Pair;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v15, v3}, Lcom/firebase/client/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 110
    invoke-interface {v7, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 112
    :cond_d
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    :goto_b
    move-object v15, v2

    :goto_c
    const/16 v17, 0x1

    goto/16 :goto_11

    :cond_f
    if-lez v18, :cond_12

    .line 120
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 122
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 123
    new-instance v3, Lcom/firebase/client/utilities/Pair;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Lcom/firebase/client/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 124
    invoke-interface {v8, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_10
    const/4 v3, 0x0

    .line 126
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_e

    :cond_11
    move-object v2, v3

    :goto_e
    move-object v6, v2

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    .line 135
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 137
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Lcom/firebase/client/snapshot/Node;

    invoke-direct {v0, v2, v5, v3}, Lcom/firebase/client/core/view/SnapshotDiffer;->diffRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 139
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x1

    .line 144
    :cond_13
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v2

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/Node;

    invoke-interface {v3}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/firebase/client/snapshot/NodePriority;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_14

    .line 145
    new-instance v2, Lcom/firebase/client/utilities/Pair;

    invoke-direct {v2, v15, v6}, Lcom/firebase/client/utilities/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x1

    .line 149
    :cond_14
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_f

    :cond_15
    const/4 v2, 0x0

    .line 150
    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_10

    :cond_16
    const/4 v3, 0x0

    :goto_10
    move-object v15, v2

    move-object v6, v3

    :goto_11
    if-nez v4, :cond_17

    if-eqz v17, :cond_17

    const/4 v2, 0x1

    return v2

    :cond_17
    const/4 v2, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_4
.end method

.method private diffRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;)Z
    .locals 4

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v2, v1

    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/snapshot/ChildrenNode;

    move-object v3, p3

    check-cast v3, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/firebase/client/core/view/SnapshotDiffer;->diffChildrenRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/ChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode;Ljava/util/List;)Z

    goto :goto_0

    .line 60
    :cond_2
    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    move-object v1, p2

    check-cast v1, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    check-cast v3, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {p0, p1, v1, v3, v0}, Lcom/firebase/client/core/view/SnapshotDiffer;->diffChildrenRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/ChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode;Ljava/util/List;)Z

    goto :goto_0

    .line 64
    :cond_3
    move-object v1, p2

    check-cast v1, Lcom/firebase/client/snapshot/ChildrenNode;

    move-object v2, p3

    check-cast v2, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/firebase/client/core/view/SnapshotDiffer;->diffChildrenRecursive(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/ChildrenNode;Lcom/firebase/client/snapshot/ChildrenNode;Ljava/util/List;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_4

    .line 68
    iget-object p2, p0, Lcom/firebase/client/core/view/SnapshotDiffer;->callback:Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;

    invoke-interface {p2, p1, p3, v0}, Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;->onDiff(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V

    goto :goto_1

    .line 69
    :cond_4
    invoke-interface {p2}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p2

    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/firebase/client/snapshot/NodePriority;->compareTo(Ljava/lang/Object;)I

    move-result p2

    if-eqz p2, :cond_5

    .line 72
    iget-object p2, p0, Lcom/firebase/client/core/view/SnapshotDiffer;->callback:Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;->onDiff(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V

    :cond_5
    :goto_1
    return v2
.end method

.method private propagateDiffUpward(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;ZZ)V
    .locals 7

    .line 220
    :goto_0
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 221
    invoke-interface {p2, p1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 222
    invoke-interface {p3, p1}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    .line 224
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getParent()Lcom/firebase/client/core/Path;

    move-result-object v2

    .line 226
    iget-object v3, p0, Lcom/firebase/client/core/view/SnapshotDiffer;->diffMask:Lcom/firebase/client/core/utilities/Tree;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v3

    invoke-virtual {v3}, Lcom/firebase/client/core/utilities/Tree;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 227
    :cond_0
    invoke-interface {p3, v2}, Lcom/firebase/client/snapshot/Node;->getChild(Lcom/firebase/client/core/Path;)Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    .line 228
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getBack()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-interface {v0}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    invoke-interface {v3, p1, v1}, Lcom/firebase/client/snapshot/Node;->getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v5, Lcom/firebase/client/core/view/Change;

    sget-object v6, Lcom/firebase/client/core/Constants$EventType;->CHILD_ADDED:Lcom/firebase/client/core/Constants$EventType;

    invoke-direct {v5, v6, v1, p1, v0}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_1
    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    new-instance v1, Lcom/firebase/client/core/view/Change;

    sget-object v5, Lcom/firebase/client/core/Constants$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/Constants$EventType;

    invoke-direct {v1, v5, v0, p1}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :cond_2
    invoke-interface {v3, p1, v1}, Lcom/firebase/client/snapshot/Node;->getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_3

    .line 240
    new-instance v5, Lcom/firebase/client/core/view/Change;

    sget-object v6, Lcom/firebase/client/core/Constants$EventType;->CHILD_MOVED:Lcom/firebase/client/core/Constants$EventType;

    invoke-direct {v5, v6, v1, p1, v0}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p4, :cond_4

    .line 243
    new-instance v5, Lcom/firebase/client/core/view/Change;

    sget-object v6, Lcom/firebase/client/core/Constants$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/Constants$EventType;

    invoke-direct {v5, v6, v1, p1, v0}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/firebase/client/core/view/SnapshotDiffer;->callback:Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;

    invoke-interface {p1, v2, v3, v4}, Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;->onDiff(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V

    :cond_5
    if-eqz p5, :cond_6

    const/4 p1, 0x0

    const/4 p4, 0x1

    const/4 p5, 0x0

    :cond_6
    move-object p1, v2

    goto :goto_0

    :cond_7
    return-void
.end method
