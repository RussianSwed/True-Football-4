.class Lcom/firebase/client/core/view/QueryView$WindowProgress;
.super Ljava/lang/Object;
.source "QueryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/view/QueryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowProgress"
.end annotation


# instance fields
.field private adding:Z

.field private deleting:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/firebase/client/core/view/QueryView$WindowProgress;->adding:Z

    .line 366
    iput-boolean v0, p0, Lcom/firebase/client/core/view/QueryView$WindowProgress;->deleting:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/core/view/QueryView$1;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/firebase/client/core/view/QueryView$WindowProgress;-><init>()V

    return-void
.end method


# virtual methods
.method public isAdding()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryView$WindowProgress;->adding:Z

    return v0
.end method

.method public isDeleting()Z
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/firebase/client/core/view/QueryView$WindowProgress;->deleting:Z

    return v0
.end method

.method public setAdding(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/firebase/client/core/view/QueryView$WindowProgress;->adding:Z

    return-void
.end method

.method public setDeleting(Z)V
    .locals 0

    .line 381
    iput-boolean p1, p0, Lcom/firebase/client/core/view/QueryView$WindowProgress;->deleting:Z

    return-void
.end method
