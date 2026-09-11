.class Lcom/firebase/client/collection/ImmutableSortedMapIterator$1;
.super Ljava/lang/Object;
.source "ImmutableSortedMapIterator.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/collection/ImmutableSortedMapIterator;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/collection/ImmutableSortedMapIterator;

.field final synthetic val$node:Lcom/firebase/client/collection/LLRBValueNode;


# direct methods
.method constructor <init>(Lcom/firebase/client/collection/ImmutableSortedMapIterator;Lcom/firebase/client/collection/LLRBValueNode;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator$1;->this$0:Lcom/firebase/client/collection/ImmutableSortedMapIterator;

    iput-object p2, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator$1;->val$node:Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator$1;->val$node:Lcom/firebase/client/collection/LLRBValueNode;

    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/firebase/client/collection/ImmutableSortedMapIterator$1;->val$node:Lcom/firebase/client/collection/LLRBValueNode;

    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Set called on immutable collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
