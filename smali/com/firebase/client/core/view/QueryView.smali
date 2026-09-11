.class public Lcom/firebase/client/core/view/QueryView;
.super Lcom/firebase/client/core/view/View;
.source "QueryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/view/QueryView$LimitProgress;,
        Lcom/firebase/client/core/view/QueryView$WindowProgress;,
        Lcom/firebase/client/core/view/QueryView$Constraint;,
        Lcom/firebase/client/core/view/QueryView$ViewState;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/firebase/client/Query;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Context;)V
    .locals 1

    .line 31
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/firebase/client/core/view/View;-><init>(Lcom/firebase/client/Query;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Context;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/firebase/client/core/view/QueryView;->generateChangesForSnapshot(Lcom/firebase/client/snapshot/Node;)Ljava/util/List;

    move-result-object p1

    .line 33
    invoke-virtual {p0, p2, p1}, Lcom/firebase/client/core/view/QueryView;->processChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/firebase/client/core/view/QueryView;->meetsConstraints(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private getLimitName(Lcom/firebase/client/snapshot/Node;Ljava/util/List;IZ)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/QueryView$Constraint;",
            ">;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 341
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 345
    :cond_0
    new-instance v0, Lcom/firebase/client/core/view/QueryView$LimitProgress;

    invoke-direct {v0, p3, v1, v1}, Lcom/firebase/client/core/view/QueryView$LimitProgress;-><init>(ILjava/lang/String;Lcom/firebase/client/core/view/QueryView$1;)V

    .line 346
    new-instance p3, Lcom/firebase/client/core/view/QueryView$11;

    invoke-direct {p3, p0, p2, v0}, Lcom/firebase/client/core/view/QueryView$11;-><init>(Lcom/firebase/client/core/view/QueryView;Ljava/util/List;Lcom/firebase/client/core/view/QueryView$LimitProgress;)V

    .line 360
    check-cast p1, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-virtual {p1, p3, p4}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;Z)V

    .line 361
    invoke-virtual {v0}, Lcom/firebase/client/core/view/QueryView$LimitProgress;->getLastChild()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private meetsConstraints(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/QueryView$Constraint;",
            ">;)Z"
        }
    .end annotation

    .line 330
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 331
    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object p1

    .line 332
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/core/view/QueryView$Constraint;

    invoke-interface {v0, p2, p1}, Lcom/firebase/client/core/view/QueryView$Constraint;->meetsConstraint(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected filterChanges(Lcom/firebase/client/snapshot/Node;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    .line 109
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v3, v7, Lcom/firebase/client/core/view/QueryView;->query:Lcom/firebase/client/Query;

    invoke-virtual {v3}, Lcom/firebase/client/Query;->getParams()Lcom/firebase/client/core/view/QueryParams;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->hasStartSet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getStartName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 115
    new-instance v4, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getStartName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getStartPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    .line 116
    new-instance v5, Lcom/firebase/client/core/view/QueryView$4;

    invoke-direct {v5, v7, v4}, Lcom/firebase/client/core/view/QueryView$4;-><init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/utilities/tuple/NameAndPriority;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    new-instance v4, Lcom/firebase/client/core/view/QueryView$5;

    invoke-direct {v4, v7, v3}, Lcom/firebase/client/core/view/QueryView$5;-><init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/core/view/QueryParams;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->hasEndSet()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 135
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getEndName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 136
    new-instance v4, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getEndName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getEndPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    .line 137
    new-instance v5, Lcom/firebase/client/core/view/QueryView$6;

    invoke-direct {v5, v7, v4}, Lcom/firebase/client/core/view/QueryView$6;-><init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/utilities/tuple/NameAndPriority;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getEndPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 147
    new-instance v4, Lcom/firebase/client/core/view/QueryView$7;

    invoke-direct {v4, v7, v3}, Lcom/firebase/client/core/view/QueryView$7;-><init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/core/view/QueryParams;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_4
    :goto_0
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->hasLimitSet()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    .line 160
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->hasStartSet()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 161
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getLimit()I

    move-result v3

    invoke-direct {v7, v0, v2, v3, v5}, Lcom/firebase/client/core/view/QueryView;->getLimitName(Lcom/firebase/client/snapshot/Node;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 163
    invoke-interface {v0, v3}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-interface {v4}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v4

    .line 164
    new-instance v8, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-direct {v8, v3, v4}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    .line 165
    new-instance v4, Lcom/firebase/client/core/view/QueryView$8;

    invoke-direct {v4, v7, v8}, Lcom/firebase/client/core/view/QueryView$8;-><init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/utilities/tuple/NameAndPriority;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v4, v1

    goto :goto_1

    .line 174
    :cond_6
    invoke-virtual {v3}, Lcom/firebase/client/core/view/QueryParams;->getLimit()I

    move-result v3

    invoke-direct {v7, v0, v2, v3, v6}, Lcom/firebase/client/core/view/QueryView;->getLimitName(Lcom/firebase/client/snapshot/Node;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 176
    invoke-interface {v0, v3}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-interface {v4}, Lcom/firebase/client/snapshot/Node;->getPriority()Lcom/firebase/client/snapshot/NodePriority;

    move-result-object v4

    .line 177
    new-instance v8, Lcom/firebase/client/utilities/tuple/NameAndPriority;

    invoke-direct {v8, v3, v4}, Lcom/firebase/client/utilities/tuple/NameAndPriority;-><init>(Ljava/lang/String;Lcom/firebase/client/snapshot/NodePriority;)V

    .line 178
    new-instance v4, Lcom/firebase/client/core/view/QueryView$9;

    invoke-direct {v4, v7, v8}, Lcom/firebase/client/core/view/QueryView$9;-><init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/utilities/tuple/NameAndPriority;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v4, v3

    move-object v3, v1

    goto :goto_1

    :cond_8
    move-object v3, v1

    move-object v4, v3

    .line 189
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 190
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 195
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/firebase/client/core/view/Change;

    .line 196
    invoke-virtual {v13}, Lcom/firebase/client/core/view/Change;->getChildName()Ljava/lang/String;

    move-result-object v14

    .line 197
    invoke-virtual {v13}, Lcom/firebase/client/core/view/Change;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v15

    .line 199
    sget-object v16, Lcom/firebase/client/core/view/QueryView$12;->$SwitchMap$com$firebase$client$core$Constants$EventType:[I

    invoke-virtual {v13}, Lcom/firebase/client/core/view/Change;->getEventType()Lcom/firebase/client/core/Constants$EventType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/firebase/client/core/Constants$EventType;->ordinal()I

    move-result v17

    aget v5, v16, v17

    if-eq v5, v6, :cond_e

    const/4 v1, 0x2

    if-eq v5, v1, :cond_d

    const/4 v1, 0x3

    if-eq v5, v1, :cond_c

    const/4 v1, 0x4

    if-eq v5, v1, :cond_9

    goto/16 :goto_3

    .line 220
    :cond_9
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, v14}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    .line 221
    invoke-direct {v7, v15, v14, v2}, Lcom/firebase/client/core/view/QueryView;->meetsConstraints(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v1, :cond_b

    if-eqz v5, :cond_a

    .line 225
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, v14, v15}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    iput-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 226
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 229
    :cond_a
    new-instance v1, Lcom/firebase/client/core/view/Change;

    sget-object v5, Lcom/firebase/client/core/Constants$EventType;->CHILD_REMOVED:Lcom/firebase/client/core/Constants$EventType;

    iget-object v13, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v13, v14}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v13

    invoke-direct {v1, v5, v13, v14}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;)V

    .line 231
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-interface {v1, v14, v5}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    iput-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    goto :goto_3

    :cond_b
    if-eqz v5, :cond_f

    .line 236
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, v14, v15}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    iput-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 237
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 213
    :cond_c
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, v14}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct {v7, v15, v14, v2}, Lcom/firebase/client/core/view/QueryView;->meetsConstraints(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 215
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, v14, v15}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    iput-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 216
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 207
    :cond_d
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, v14}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 208
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-interface {v1, v14, v5}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    iput-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 209
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 201
    :cond_e
    invoke-direct {v7, v15, v14, v2}, Lcom/firebase/client/core/view/QueryView;->meetsConstraints(Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 202
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1, v14, v15}, Lcom/firebase/client/snapshot/Node;->updateImmediateChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object v1

    iput-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 203
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_3
    const/4 v1, 0x0

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_10
    if-eqz v3, :cond_11

    move-object v8, v3

    goto :goto_4

    :cond_11
    move-object v8, v4

    :goto_4
    if-eqz v8, :cond_14

    .line 250
    iget-object v1, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    check-cast v1, Lcom/firebase/client/snapshot/ChildrenNode;

    .line 251
    move-object v13, v0

    check-cast v13, Lcom/firebase/client/snapshot/ChildrenNode;

    if-eqz v4, :cond_12

    const/4 v14, 0x1

    goto :goto_5

    :cond_12
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_13

    .line 255
    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildrenNode;->getFirstChildName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 257
    :cond_13
    invoke-virtual {v1}, Lcom/firebase/client/snapshot/ChildrenNode;->getLastChildName()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v3, v0

    .line 260
    new-instance v2, Lcom/firebase/client/core/view/QueryView$WindowProgress;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/firebase/client/core/view/QueryView$WindowProgress;-><init>(Lcom/firebase/client/core/view/QueryView$1;)V

    .line 261
    new-instance v15, Lcom/firebase/client/core/view/QueryView$10;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v4, v10

    move-object v5, v9

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/firebase/client/core/view/QueryView$10;-><init>(Lcom/firebase/client/core/view/QueryView;Lcom/firebase/client/core/view/QueryView$WindowProgress;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v13, v15, v14}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ShortCircuitingChildVisitor;Z)V

    .line 297
    :cond_14
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 298
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 299
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/Change;

    .line 300
    iget-object v2, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getChildName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/firebase/client/snapshot/Node;->getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;

    move-result-object v2

    .line 301
    new-instance v3, Lcom/firebase/client/core/view/Change;

    sget-object v4, Lcom/firebase/client/core/Constants$EventType;->CHILD_ADDED:Lcom/firebase/client/core/Constants$EventType;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getChildName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 305
    :cond_15
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 306
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/Change;

    .line 308
    iget-object v2, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getChildName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/firebase/client/snapshot/Node;->getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;

    move-result-object v2

    .line 309
    new-instance v3, Lcom/firebase/client/core/view/Change;

    sget-object v4, Lcom/firebase/client/core/Constants$EventType;->CHILD_MOVED:Lcom/firebase/client/core/Constants$EventType;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getChildName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 313
    :cond_16
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 314
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 315
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/client/core/view/Change;

    .line 316
    iget-object v2, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getChildName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/firebase/client/snapshot/Node;->getPredecessorChildName(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)Ljava/lang/String;

    move-result-object v2

    .line 317
    new-instance v3, Lcom/firebase/client/core/view/Change;

    sget-object v4, Lcom/firebase/client/core/Constants$EventType;->CHILD_CHANGED:Lcom/firebase/client/core/Constants$EventType;

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getSnapshotNode()Lcom/firebase/client/snapshot/Node;

    move-result-object v5

    invoke-virtual {v1}, Lcom/firebase/client/core/view/Change;->getChildName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 322
    :cond_17
    iget-boolean v0, v7, Lcom/firebase/client/core/view/QueryView;->complete:Z

    if-eqz v0, :cond_18

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 323
    new-instance v0, Lcom/firebase/client/core/view/Change;

    sget-object v1, Lcom/firebase/client/core/Constants$EventType;->VALUE:Lcom/firebase/client/core/Constants$EventType;

    iget-object v2, v7, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/view/Change;-><init>(Lcom/firebase/client/core/Constants$EventType;Lcom/firebase/client/snapshot/Node;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-object v10
.end method

.method public getChildRelevance(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/SnapshotHolder;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Lcom/firebase/client/core/SnapshotHolder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/firebase/client/core/view/QueryView$ViewState;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    check-cast v1, Lcom/firebase/client/snapshot/ChildrenNode;

    new-instance v2, Lcom/firebase/client/core/view/QueryView$1;

    invoke-direct {v2, p0, v0}, Lcom/firebase/client/core/view/QueryView$1;-><init>(Lcom/firebase/client/core/view/QueryView;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    .line 51
    invoke-virtual {p3}, Lcom/firebase/client/core/SnapshotHolder;->getRootNode()Lcom/firebase/client/snapshot/Node;

    move-result-object p3

    .line 52
    new-instance v2, Lcom/firebase/client/core/utilities/Tree;

    invoke-direct {v2}, Lcom/firebase/client/core/utilities/Tree;-><init>()V

    .line 53
    iget-object v3, p0, Lcom/firebase/client/core/view/QueryView;->query:Lcom/firebase/client/Query;

    invoke-virtual {v3}, Lcom/firebase/client/Query;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Lcom/firebase/client/core/utilities/Tree;->subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;

    move-result-object v3

    const/4 v4, 0x1

    .line 55
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/firebase/client/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/firebase/client/snapshot/EmptyNode;->Empty()Lcom/firebase/client/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/firebase/client/snapshot/Node;->updateChild(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)Lcom/firebase/client/snapshot/Node;

    move-result-object p2

    .line 59
    new-instance v3, Lcom/firebase/client/core/view/QueryView$2;

    invoke-direct {v3, p0}, Lcom/firebase/client/core/view/QueryView$2;-><init>(Lcom/firebase/client/core/view/QueryView;)V

    invoke-static {p3, p2, p1, v2, v3}, Lcom/firebase/client/core/view/SnapshotDiffer;->diff(Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/snapshot/Node;Lcom/firebase/client/core/Path;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;)V

    .line 68
    iget-object p1, p0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isLeafNode()Z

    move-result p1

    if-nez p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    check-cast p1, Lcom/firebase/client/snapshot/ChildrenNode;

    new-instance p2, Lcom/firebase/client/core/view/QueryView$3;

    invoke-direct {p2, p0, v0}, Lcom/firebase/client/core/view/QueryView$3;-><init>(Lcom/firebase/client/core/view/QueryView;Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/firebase/client/snapshot/ChildrenNode;->forEachChild(Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;)V

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 78
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 80
    iget-object p3, p0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v2}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object p3

    invoke-interface {p3}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 82
    sget-object p3, Lcom/firebase/client/core/view/QueryView$ViewState;->LEAVING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    invoke-interface {p2, p3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 87
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    sget-object p3, Lcom/firebase/client/core/view/QueryView$ViewState;->LEAVING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    invoke-interface {p2, p3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    :cond_3
    iput-object v1, p0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView;->snapshotNode:Lcom/firebase/client/snapshot/Node;

    invoke-interface {v0, p1}, Lcom/firebase/client/snapshot/Node;->getImmediateChild(Ljava/lang/String;)Lcom/firebase/client/snapshot/Node;

    move-result-object p1

    invoke-interface {p1}, Lcom/firebase/client/snapshot/Node;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
