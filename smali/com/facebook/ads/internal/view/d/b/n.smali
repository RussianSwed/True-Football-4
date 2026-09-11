.class public abstract Lcom/facebook/ads/internal/view/d/b/n;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/d/b/m;


# static fields
.field static final synthetic a:Z = true


# instance fields
.field private b:Lcom/facebook/ads/internal/view/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/b/n;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/view/o;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b/n;->b:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/b/n;->a_(Lcom/facebook/ads/internal/view/o;)V

    return-void
.end method

.method protected a_(Lcom/facebook/ads/internal/view/o;)V
    .locals 0

    return-void
.end method

.method protected getVideoView()Lcom/facebook/ads/internal/view/o;
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/view/d/b/n;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/n;->b:Lcom/facebook/ads/internal/view/o;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b/n;->b:Lcom/facebook/ads/internal/view/o;

    return-object v0
.end method
