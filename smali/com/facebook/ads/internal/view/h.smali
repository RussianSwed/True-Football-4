.class public final Lcom/facebook/ads/internal/view/h;
.super Lcom/facebook/ads/MediaViewVideoRenderer;


# static fields
.field private static final d:Ljava/lang/String; = "h"


# instance fields
.field private final e:Lcom/facebook/ads/internal/view/d/b/f;

.field private final f:Lcom/facebook/ads/internal/j/a;

.field private g:Lcom/facebook/ads/internal/view/j;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/d/b/f;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/d/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/view/d/b/f;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->b()Lcom/facebook/ads/internal/j/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/j/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/MediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/facebook/ads/internal/view/d/b/f;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/view/d/b/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/view/d/b/f;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->b()Lcom/facebook/ads/internal/j/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/j/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/MediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/facebook/ads/internal/view/d/b/f;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/view/d/b/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/view/d/b/f;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->b()Lcom/facebook/ads/internal/j/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/j/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/MediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/facebook/ads/internal/view/d/b/f;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/view/d/b/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/view/d/b/f;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->b()Lcom/facebook/ads/internal/j/a;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/j/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/view/j;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/view/j;

    return-object p0
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/h;->setVolume(F)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    new-instance v2, Lcom/facebook/ads/internal/view/d/b/g;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/view/d/b/g;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v1, v0, v0, v1}, Lcom/facebook/ads/internal/view/d/b/g;->setPadding(IIII)V

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/d/b/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/h;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/h;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/facebook/ads/internal/view/j;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/facebook/ads/internal/view/j;

    iput-object v3, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/view/j;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/view/j;

    if-nez v1, :cond_2

    sget-object v1, Lcom/facebook/ads/internal/view/h;->d:Ljava/lang/String;

    const-string v2, "Unable to find MediaViewVideo child."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/view/d/b/f;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/view/j;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/j;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/j/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/j/a;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/h;->i:Z

    return p1
.end method

.method private b()Lcom/facebook/ads/internal/j/a;
    .locals 4

    new-instance v0, Lcom/facebook/ads/internal/j/a;

    new-instance v1, Lcom/facebook/ads/internal/view/h$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/h$1;-><init>(Lcom/facebook/ads/internal/view/h;)V

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;IZLcom/facebook/ads/internal/j/a$a;)V

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/h;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/h;->j:Z

    return p1
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/h;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/h;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/h;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/view/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/j;->getState()Lcom/facebook/ads/internal/view/d/c/d;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/h;->j:Z

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/h;->i:Z

    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/h;->h:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/h;->h:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->c()V

    invoke-super {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onDetachedFromWindow()V

    return-void
.end method

.method public onPrepared()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPrepared()V

    new-instance v0, Lcom/facebook/ads/internal/view/h$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/h$2;-><init>(Lcom/facebook/ads/internal/view/h;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/h;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/MediaViewVideoRenderer;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->c()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/h;->c()V

    return-void
.end method

.method public setNativeAd(Lcom/facebook/ads/NativeAd;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/h;->i:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/h;->j:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/view/d/b/f;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/d/b/f;->setImage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/j/a;->a()V

    return-void
.end method
