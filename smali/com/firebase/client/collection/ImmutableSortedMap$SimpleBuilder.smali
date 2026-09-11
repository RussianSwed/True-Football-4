.class public Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;
.super Lcom/firebase/client/collection/ImmutableSortedMap$Builder;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/collection/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/client/collection/ImmutableSortedMap$Builder<",
        "TA;TA;TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/firebase/client/collection/ImmutableSortedMap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public buildFrom(Ljava/util/List;Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lcom/firebase/client/collection/ImmutableSortedMap<",
            "TA;TB;>;"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder$1;

    invoke-direct {v0, p0}, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder$1;-><init>(Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;->buildFrom(Ljava/util/List;Ljava/util/Map;Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method
