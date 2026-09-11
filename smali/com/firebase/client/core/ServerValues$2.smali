.class final Lcom/firebase/client/core/ServerValues$2;
.super Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;
.source "ServerValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$holder:Lcom/firebase/client/core/SnapshotHolder;

.field final synthetic val$serverValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/firebase/client/core/SnapshotHolder;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/firebase/client/core/ServerValues$2;->val$serverValues:Ljava/util/Map;

    iput-object p2, p0, Lcom/firebase/client/core/ServerValues$2;->val$holder:Lcom/firebase/client/core/SnapshotHolder;

    invoke-direct {p0}, Lcom/firebase/client/snapshot/ChildrenNode$ChildVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitChild(Ljava/lang/String;Lcom/firebase/client/snapshot/Node;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/firebase/client/core/ServerValues$2;->val$serverValues:Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/firebase/client/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/firebase/client/snapshot/Node;Ljava/util/Map;)Lcom/firebase/client/snapshot/Node;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 82
    iget-object p2, p0, Lcom/firebase/client/core/ServerValues$2;->val$holder:Lcom/firebase/client/core/SnapshotHolder;

    new-instance v1, Lcom/firebase/client/core/Path;

    invoke-direct {v1, p1}, Lcom/firebase/client/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v0}, Lcom/firebase/client/core/SnapshotHolder;->update(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;)V

    :cond_0
    return-void
.end method
