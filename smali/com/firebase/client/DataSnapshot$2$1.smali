.class Lcom/firebase/client/DataSnapshot$2$1;
.super Ljava/lang/Object;
.source "DataSnapshot.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/DataSnapshot$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/firebase/client/DataSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/firebase/client/DataSnapshot$2;


# direct methods
.method constructor <init>(Lcom/firebase/client/DataSnapshot$2;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/firebase/client/DataSnapshot$2$1;->this$1:Lcom/firebase/client/DataSnapshot$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot$2$1;->this$1:Lcom/firebase/client/DataSnapshot$2;

    iget-object v0, v0, Lcom/firebase/client/DataSnapshot$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/firebase/client/DataSnapshot;
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/firebase/client/DataSnapshot$2$1;->this$1:Lcom/firebase/client/DataSnapshot$2;

    iget-object v0, v0, Lcom/firebase/client/DataSnapshot$2;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    new-instance v1, Lcom/firebase/client/DataSnapshot;

    iget-object v2, p0, Lcom/firebase/client/DataSnapshot$2$1;->this$1:Lcom/firebase/client/DataSnapshot$2;

    iget-object v2, v2, Lcom/firebase/client/DataSnapshot$2;->this$0:Lcom/firebase/client/DataSnapshot;

    invoke-static {v2}, Lcom/firebase/client/DataSnapshot;->access$000(Lcom/firebase/client/DataSnapshot;)Lcom/firebase/client/Firebase;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/snapshot/Node;

    invoke-direct {v1, v2, v0}, Lcom/firebase/client/DataSnapshot;-><init>(Lcom/firebase/client/Firebase;Lcom/firebase/client/snapshot/Node;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/firebase/client/DataSnapshot$2$1;->next()Lcom/firebase/client/DataSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
