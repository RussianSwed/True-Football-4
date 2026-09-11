.class public interface abstract Lcom/firebase/client/core/view/SnapshotDiffer$DiffListener;
.super Ljava/lang/Object;
.source "SnapshotDiffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/view/SnapshotDiffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DiffListener"
.end annotation


# virtual methods
.method public abstract onDiff(Lcom/firebase/client/core/Path;Lcom/firebase/client/snapshot/Node;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/client/core/Path;",
            "Lcom/firebase/client/snapshot/Node;",
            "Ljava/util/List<",
            "Lcom/firebase/client/core/view/Change;",
            ">;)V"
        }
    .end annotation
.end method
