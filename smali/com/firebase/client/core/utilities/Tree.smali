.class public Lcom/firebase/client/core/utilities/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/client/core/utilities/Tree$TreeFilter;,
        Lcom/firebase/client/core/utilities/Tree$TreeVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private node:Lcom/firebase/client/core/utilities/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/TreeNode<",
            "TT;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/firebase/client/core/utilities/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/client/core/utilities/Tree<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/firebase/client/core/utilities/TreeNode;

    invoke-direct {v0}, Lcom/firebase/client/core/utilities/TreeNode;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/firebase/client/core/utilities/Tree;-><init>(Ljava/lang/String;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/TreeNode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/TreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/firebase/client/core/utilities/Tree<",
            "TT;>;",
            "Lcom/firebase/client/core/utilities/TreeNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/firebase/client/core/utilities/Tree;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    .line 30
    iput-object p3, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    return-void
.end method

.method private updateChild(Ljava/lang/String;Lcom/firebase/client/core/utilities/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/firebase/client/core/utilities/Tree<",
            "TT;>;)V"
        }
    .end annotation

    .line 141
    invoke-virtual {p2}, Lcom/firebase/client/core/utilities/Tree;->isEmpty()Z

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v1, v1, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 144
    iget-object p2, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object p2, p2, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-direct {p0}, Lcom/firebase/client/core/utilities/Tree;->updateParents()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    iget-object p2, p2, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-direct {p0}, Lcom/firebase/client/core/utilities/Tree;->updateParents()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateParents()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/firebase/client/core/utilities/Tree;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/firebase/client/core/utilities/Tree;->updateChild(Ljava/lang/String;Lcom/firebase/client/core/utilities/Tree;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeFilter<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;Z)Z

    move-result p1

    return p1
.end method

.method public forEachAncestor(Lcom/firebase/client/core/utilities/Tree$TreeFilter;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeFilter<",
            "TT;>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p2, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    :goto_0
    if-eqz p2, :cond_2

    .line 114
    invoke-interface {p1, p2}, Lcom/firebase/client/core/utilities/Tree$TreeFilter;->filterTreeNode(Lcom/firebase/client/core/utilities/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 117
    :cond_1
    iget-object p2, p2, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 126
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 127
    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 129
    new-instance v3, Lcom/firebase/client/core/utilities/Tree;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/utilities/TreeNode;

    invoke-direct {v3, v4, p0, v2}, Lcom/firebase/client/core/utilities/Tree;-><init>(Ljava/lang/String;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/TreeNode;)V

    .line 130
    invoke-interface {p1, v3}, Lcom/firebase/client/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/firebase/client/core/utilities/Tree;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;ZZ)V

    return-void
.end method

.method public forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;ZZ)V

    return-void
.end method

.method public forEachDescendant(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/utilities/Tree$TreeVisitor<",
            "TT;>;ZZ)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 92
    invoke-interface {p1, p0}, Lcom/firebase/client/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/firebase/client/core/utilities/Tree;)V

    .line 95
    :cond_0
    new-instance v0, Lcom/firebase/client/core/utilities/Tree$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/firebase/client/core/utilities/Tree$1;-><init>(Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/Tree$TreeVisitor;Z)V

    invoke-virtual {p0, v0}, Lcom/firebase/client/core/utilities/Tree;->forEachChild(Lcom/firebase/client/core/utilities/Tree$TreeVisitor;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 103
    invoke-interface {p1, p0}, Lcom/firebase/client/core/utilities/Tree$TreeVisitor;->visitTree(Lcom/firebase/client/core/utilities/Tree;)V

    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/firebase/client/core/utilities/Tree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/client/core/utilities/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    return-object v0
.end method

.method public getPath()Lcom/firebase/client/core/Path;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->parent:Lcom/firebase/client/core/utilities/Tree;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/firebase/client/core/utilities/Tree;->getPath()Lcom/firebase/client/core/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/client/core/utilities/Tree;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/firebase/client/core/Path;->child(Ljava/lang/String;)Lcom/firebase/client/core/Path;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Lcom/firebase/client/core/Path;

    iget-object v1, p0, Lcom/firebase/client/core/utilities/Tree;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v0, v0, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iput-object p1, v0, Lcom/firebase/client/core/utilities/TreeNode;->value:Ljava/lang/Object;

    .line 55
    invoke-direct {p0}, Lcom/firebase/client/core/utilities/Tree;->updateParents()V

    return-void
.end method

.method public subTree(Lcom/firebase/client/core/Path;)Lcom/firebase/client/core/utilities/Tree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            ")",
            "Lcom/firebase/client/core/utilities/Tree<",
            "TT;>;"
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 41
    iget-object v2, v1, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    iget-object v2, v2, Lcom/firebase/client/core/utilities/TreeNode;->children:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/firebase/client/core/utilities/TreeNode;

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/firebase/client/core/utilities/TreeNode;

    invoke-direct {v2}, Lcom/firebase/client/core/utilities/TreeNode;-><init>()V

    .line 42
    :goto_1
    new-instance v3, Lcom/firebase/client/core/utilities/Tree;

    invoke-direct {v3, v0, v1, v2}, Lcom/firebase/client/core/utilities/Tree;-><init>(Ljava/lang/String;Lcom/firebase/client/core/utilities/Tree;Lcom/firebase/client/core/utilities/TreeNode;)V

    .line 43
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->popFront()Lcom/firebase/client/core/Path;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/firebase/client/core/Path;->getFront()Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 154
    invoke-virtual {p0, v0}, Lcom/firebase/client/core/utilities/Tree;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<anon>"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->name:Ljava/lang/String;

    .line 159
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/firebase/client/core/utilities/Tree;->node:Lcom/firebase/client/core/utilities/TreeNode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/client/core/utilities/TreeNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
