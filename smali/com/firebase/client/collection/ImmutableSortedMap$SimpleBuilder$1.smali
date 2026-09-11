.class Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder$1;
.super Ljava/lang/Object;
.source "ImmutableSortedMap.java"

# interfaces
.implements Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;->buildFrom(Ljava/util/List;Ljava/util/Map;Ljava/util/Comparator;)Lcom/firebase/client/collection/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/firebase/client/collection/ImmutableSortedMap$Builder$KeyTranslator<",
        "TA;TA;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;


# direct methods
.method constructor <init>(Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder$1;->this$0:Lcom/firebase/client/collection/ImmutableSortedMap$SimpleBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TA;"
        }
    .end annotation

    return-object p1
.end method
