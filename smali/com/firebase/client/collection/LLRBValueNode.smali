.class public Lcom/firebase/client/collection/LLRBValueNode;
.super Ljava/lang/Object;
.source "LLRBValueNode.java"

# interfaces
.implements Lcom/firebase/client/collection/LLRBNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/firebase/client/collection/LLRBNode<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private color:Lcom/firebase/client/collection/LLRBNode$Color;

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private left:Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private right:Lcom/firebase/client/collection/LLRBNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    .line 25
    sget-object p1, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    iput-object p1, p0, Lcom/firebase/client/collection/LLRBValueNode;->color:Lcom/firebase/client/collection/LLRBNode$Color;

    .line 26
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    .line 27
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/firebase/client/collection/LLRBNode$Color;",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    .line 33
    iput-object p3, p0, Lcom/firebase/client/collection/LLRBValueNode;->color:Lcom/firebase/client/collection/LLRBNode$Color;

    if-nez p4, :cond_0

    .line 34
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    if-nez p5, :cond_1

    .line 35
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object p5

    :cond_1
    iput-object p5, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    return-void
.end method

.method private colorFlip()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-static {v0}, Lcom/firebase/client/collection/LLRBValueNode;->oppositeColor(Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode$Color;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v10

    .line 243
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-static {v0}, Lcom/firebase/client/collection/LLRBValueNode;->oppositeColor(Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode$Color;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v11

    .line 245
    invoke-static {p0}, Lcom/firebase/client/collection/LLRBValueNode;->oppositeColor(Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode$Color;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    return-object v0
.end method

.method private fixUp()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateLeft()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 222
    :goto_0
    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    check-cast v1, Lcom/firebase/client/collection/LLRBValueNode;

    check-cast v1, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v1, v1, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 225
    :cond_1
    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private moveRedLeft()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 201
    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->PASSTHRU:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getRight()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v5

    check-cast v5, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {v5}, Lcom/firebase/client/collection/LLRBValueNode;->rotateRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 202
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateLeft()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 203
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private moveRedRight()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/firebase/client/collection/LLRBValueNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 212
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->colorFlip()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static oppositeColor(Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode$Color;
    .locals 0

    .line 13
    invoke-interface {p0}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/firebase/client/collection/LLRBNode$Color;->BLACK:Lcom/firebase/client/collection/LLRBNode$Color;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    :goto_0
    return-object p0
.end method

.method private removeMin()Lcom/firebase/client/collection/LLRBNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBValueNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/firebase/client/collection/LLRBValueNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getLeft()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBValueNode;->moveRedLeft()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 193
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->PASSTHRU:Lcom/firebase/client/collection/LLRBNode$Color;

    iget-object v0, v1, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->removeMin()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    .line 194
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->fixUp()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    return-object v0
.end method

.method private rotateLeft()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 232
    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v5, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v10

    .line 233
    iget-object v6, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    iget-object v9, p0, Lcom/firebase/client/collection/LLRBValueNode;->color:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    return-object v0
.end method

.method private rotateRight()Lcom/firebase/client/collection/LLRBValueNode;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBValueNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 237
    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v4, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v11

    .line 238
    iget-object v6, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    iget-object v9, p0, Lcom/firebase/client/collection/LLRBValueNode;->color:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/firebase/client/collection/LLRBNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBNode;
    .locals 0

    .line 10
    invoke-virtual/range {p0 .. p5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object p1

    return-object p1
.end method

.method public copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/firebase/client/collection/LLRBNode$Color;",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;)",
            "Lcom/firebase/client/collection/LLRBValueNode<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    :cond_0
    move-object v1, p1

    if-nez p2, :cond_1

    .line 61
    iget-object p2, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    :cond_1
    move-object v2, p2

    .line 62
    sget-object p1, Lcom/firebase/client/collection/LLRBNode$Color;->PASSTHRU:Lcom/firebase/client/collection/LLRBNode$Color;

    if-ne p3, p1, :cond_2

    iget-object p3, p0, Lcom/firebase/client/collection/LLRBValueNode;->color:Lcom/firebase/client/collection/LLRBNode$Color;

    :cond_2
    move-object v3, p3

    if-nez p4, :cond_3

    .line 63
    iget-object p4, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    :cond_3
    move-object v4, p4

    if-nez p5, :cond_4

    .line 64
    iget-object p5, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    :cond_4
    move-object v5, p5

    .line 65
    new-instance p1, Lcom/firebase/client/collection/LLRBValueNode;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBValueNode;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)V

    return-object p1
.end method

.method public count()I
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->count()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->count()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getLeft()Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    return-object v0
.end method

.method public getMax()Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getMax()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    return-object v0
.end method

.method public getMin()Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getMin()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Lcom/firebase/client/collection/LLRBNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$NodeVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    .line 155
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/firebase/client/collection/LLRBNode$NodeVisitor;->visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->inOrderTraversal(Lcom/firebase/client/collection/LLRBNode$NodeVisitor;)V

    return-void
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1, p2, p3}, Lcom/firebase/client/collection/LLRBNode;->insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 75
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->PASSTHRU:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    sget-object v3, Lcom/firebase/client/collection/LLRBNode$Color;->PASSTHRU:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1, p2, p3}, Lcom/firebase/client/collection/LLRBNode;->insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 82
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->PASSTHRU:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object p1

    .line 84
    :goto_0
    invoke-direct {p1}, Lcom/firebase/client/collection/LLRBValueNode;->fixUp()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRed()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->color:Lcom/firebase/client/collection/LLRBNode$Color;

    sget-object v1, Lcom/firebase/client/collection/LLRBNode$Color;->RED:Lcom/firebase/client/collection/LLRBNode$Color;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v0, v0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBValueNode;->moveRedLeft()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 95
    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->PASSTHRU:Lcom/firebase/client/collection/LLRBNode$Color;

    iget-object v0, v1, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/collection/LLRBNode;->remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object p1

    goto/16 :goto_2

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/firebase/client/collection/LLRBValueNode;->rotateRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 101
    :goto_1
    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    check-cast v1, Lcom/firebase/client/collection/LLRBValueNode;

    iget-object v1, v1, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v1}, Lcom/firebase/client/collection/LLRBNode;->isRed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->moveRedRight()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 105
    iget-object v0, v1, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_5

    .line 106
    iget-object v0, v1, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-static {}, Lcom/firebase/client/collection/LLRBEmptyNode;->getInstance()Lcom/firebase/client/collection/LLRBEmptyNode;

    move-result-object p1

    return-object p1

    .line 109
    :cond_4
    iget-object v0, v1, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getMin()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/firebase/client/collection/LLRBNode;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/firebase/client/collection/LLRBNode$Color;->PASSTHRU:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v5, 0x0

    iget-object v0, v1, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    check-cast v0, Lcom/firebase/client/collection/LLRBValueNode;

    invoke-direct {v0}, Lcom/firebase/client/collection/LLRBValueNode;->removeMin()Lcom/firebase/client/collection/LLRBNode;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object v1

    :cond_5
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 114
    sget-object v5, Lcom/firebase/client/collection/LLRBNode$Color;->PASSTHRU:Lcom/firebase/client/collection/LLRBNode$Color;

    const/4 v6, 0x0

    iget-object v0, v2, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1, p2}, Lcom/firebase/client/collection/LLRBNode;->remove(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/firebase/client/collection/LLRBNode;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/firebase/client/collection/LLRBValueNode;->copy(Ljava/lang/Object;Ljava/lang/Object;Lcom/firebase/client/collection/LLRBNode$Color;Lcom/firebase/client/collection/LLRBNode;Lcom/firebase/client/collection/LLRBNode;)Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object p1

    .line 116
    :goto_2
    invoke-direct {p1}, Lcom/firebase/client/collection/LLRBValueNode;->fixUp()Lcom/firebase/client/collection/LLRBValueNode;

    move-result-object p1

    return-object p1
.end method

.method setLeft(Lcom/firebase/client/collection/LLRBNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    return-void
.end method

.method public shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;->shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->shortCircuitingInOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->right:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/firebase/client/collection/LLRBValueNode;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;->shouldContinue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/firebase/client/collection/LLRBValueNode;->left:Lcom/firebase/client/collection/LLRBNode;

    invoke-interface {v0, p1}, Lcom/firebase/client/collection/LLRBNode;->shortCircuitingReverseOrderTraversal(Lcom/firebase/client/collection/LLRBNode$ShortCircuitingNodeVisitor;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
