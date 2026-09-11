.class Lcom/firebase/client/core/view/QueryView$LimitProgress;
.super Ljava/lang/Object;
.source "QueryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/view/QueryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitProgress"
.end annotation


# instance fields
.field private lastChild:Ljava/lang/String;

.field private limit:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput p1, p0, Lcom/firebase/client/core/view/QueryView$LimitProgress;->limit:I

    .line 391
    iput-object p2, p0, Lcom/firebase/client/core/view/QueryView$LimitProgress;->lastChild:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/firebase/client/core/view/QueryView$1;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/firebase/client/core/view/QueryView$LimitProgress;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decrementLimit()Z
    .locals 2

    .line 395
    iget v0, p0, Lcom/firebase/client/core/view/QueryView$LimitProgress;->limit:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/firebase/client/core/view/QueryView$LimitProgress;->limit:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getLastChild()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/firebase/client/core/view/QueryView$LimitProgress;->lastChild:Ljava/lang/String;

    return-object v0
.end method

.method public setLastChild(Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/firebase/client/core/view/QueryView$LimitProgress;->lastChild:Ljava/lang/String;

    return-void
.end method
