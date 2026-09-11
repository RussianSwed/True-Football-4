.class Lcom/facebook/ads/internal/view/d/b/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b/k;->a_(Lcom/facebook/ads/internal/view/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/o;

.field final synthetic b:Lcom/facebook/ads/internal/view/d/b/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b/k;Lcom/facebook/ads/internal/view/o;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->b:Lcom/facebook/ads/internal/view/d/b/k;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/facebook/ads/internal/view/d/b/k$5;->a:[I

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/d/c/d;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    return p2

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/o;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/b/k$4;->a:Lcom/facebook/ads/internal/view/o;

    sget-object p2, Lcom/facebook/ads/VideoStartReason;->USER_STARTED:Lcom/facebook/ads/VideoStartReason;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/VideoStartReason;)V

    :goto_0
    return v0

    :cond_3
    return p2
.end method
