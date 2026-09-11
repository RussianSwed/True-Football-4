.class public Lcom/firebase/client/collection/ImmutableSortedMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/collection/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;,
        Lcom/firebase/client/collection/ImmutableSortedMap$Builder$Base1_2;,
        Lcom/firebase/client/collection/ImmutableSortedMap$Builder$BooleanChunk;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private keyTranslator:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation
.end field

.field private leaf:Lcom/firebase/client/collection/LLRBValueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBValueNode<",
            "TA;TC;>;"
        }
    .end annotation
.end field

.field private root:Lcom/firebase/client/collection/LLRBValueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBValueNode<",
            "TA;TC;>;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TA;TC;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 80
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 82
    iget-object p2, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 83
    new-instance p1, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {p0, v1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    return-object p1

    .line 85
    :cond_1
    div-int/lit8 p2, p2, 0x2

    add-int v0, p1, p2

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v5

    add-int/lit8 p1, v0, 0x1

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v6

    .line 89
    iget-object p1, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 90
    new-instance p1, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {p0, v2}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/firebase/client/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    return-object p1
.end method

.method private buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V
    .locals 7

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 p2, p2, -0x1

    .line 95
    invoke-direct {p0, v0, p2}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->buildBalancedTree(II)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v6

    .line 96
    iget-object p2, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->keys:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 97
    new-instance p2, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {p0, v2}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/firebase/client/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    .line 98
    iget-object p1, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    if-nez p1, :cond_0

    .line 99
    iput-object p2, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    .line 100
    iput-object p2, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->leaf:Lcom/firebase/client/collection/LLRBValueNode;

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->leaf:Lcom/firebase/client/collection/LLRBValueNode;

    invoke-virtual {p1, p2}, Lcom/firebase/client/collection/LLRBValueNode;->setLeft(Lcom/firebase/client/collection/LLRBNode;)V

    .line 103
    iput-object p2, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->leaf:Lcom/firebase/client/collection/LLRBValueNode;

    :goto_0
    return-void
.end method

.method private getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->values:Ljava/util/Map;

    iget-object v1, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->keyTranslator:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    invoke-interface {v1, p1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap<",
            "TA;TC;>;"
        }
    .end annotation

    .line 115
    iput-object p3, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->keyTranslator:Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;

    .line 116
    iput-object p1, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->keys:Ljava/util/List;

    .line 117
    iput-object p2, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->values:Ljava/util/Map;

    .line 118
    invoke-static {p1, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    new-instance p2, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$Base1_2;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$Base1_2;-><init>(I)V

    invoke-virtual {p2}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$Base1_2;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 121
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 122
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$BooleanChunk;

    .line 123
    iget v0, p3, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$BooleanChunk;->chunkSize:I

    sub-int/2addr p1, v0

    .line 124
    iget-boolean v0, p3, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$BooleanChunk;->isOne:Z

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    iget p3, p3, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {p0, v0, p3, p1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    iget v1, p3, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {p0, v0, v1, p1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V

    .line 128
    iget v0, p3, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$BooleanChunk;->chunkSize:I

    sub-int/2addr p1, v0

    .line 129
    sget-object v0, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    iget p3, p3, Lcom/firebase/client/collection/ImmutableSortedMap$Builder$BooleanChunk;->chunkSize:I

    invoke-direct {p0, v0, p3, p1}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->buildPennant(Lcom/firebase/client/collection/LLRBNode$Color;II)V

    goto :goto_0

    .line 132
    :cond_1
    new-instance p1, Lcom/firebase/client/collection/ImmutableSortedMap;

    iget-object p2, p0, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;->root:Lcom/firebase/client/collection/LLRBValueNode;

    if-nez p2, :cond_2

    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object p2

    :cond_2
    invoke-direct {p1, p2, p4}, Lcom/firebase/client/collection/ImmutableSortedMap;-><init>(Lcom/firebase/client/collection/LLRBNode;Ljava/util/Comparator;)V

    return-object p1
.end method
