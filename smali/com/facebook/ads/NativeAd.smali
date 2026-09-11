.class public Lcom/facebook/ads/NativeAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAd$b;,
        Lcom/facebook/ads/NativeAd$a;,
        Lcom/facebook/ads/NativeAd$c;,
        Lcom/facebook/ads/NativeAd$MediaCacheFlag;,
        Lcom/facebook/ads/NativeAd$Rating;,
        Lcom/facebook/ads/NativeAd$Image;
    }
.end annotation


# static fields
.field private static final b:Lcom/facebook/ads/internal/d;

.field private static final c:Ljava/lang/String;

.field private static d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/facebook/ads/internal/i;

.field private B:Landroid/view/View;

.field private C:Ljava/lang/String;

.field private D:Z

.field protected a:Lcom/facebook/ads/internal/adapters/v;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/facebook/ads/internal/c/b;

.field private i:Lcom/facebook/ads/AdListener;

.field private j:Lcom/facebook/ads/internal/DisplayAdController;

.field private volatile k:Z

.field private l:Lcom/facebook/ads/internal/f/e;

.field private m:Landroid/view/View;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/view/View$OnTouchListener;

.field private p:Lcom/facebook/ads/internal/j/a;

.field private final q:Lcom/facebook/ads/internal/util/ah;

.field private r:Lcom/facebook/ads/internal/adapters/u;

.field private s:Lcom/facebook/ads/NativeAd$a;

.field private t:Lcom/facebook/ads/NativeAd$b;

.field private u:Lcom/facebook/ads/internal/view/u;

.field private v:Lcom/facebook/ads/NativeAdView$Type;

.field private w:Z

.field private x:Lcom/facebook/ads/MediaView;

.field private y:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/d;->a:Lcom/facebook/ads/internal/d;

    sput-object v0, Lcom/facebook/ads/NativeAd;->b:Lcom/facebook/ads/internal/d;

    const-class v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/NativeAd;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/v;Lcom/facebook/ads/internal/f/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/facebook/ads/NativeAd;->l:Lcom/facebook/ads/internal/f/e;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/facebook/ads/NativeAd;->k:Z

    iput-object p2, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/NativeAd;->B:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/internal/util/ah;

    invoke-direct {v0}, Lcom/facebook/ads/internal/util/ah;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->q:Lcom/facebook/ads/internal/util/ah;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd;->D:Z

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/NativeAd;->f:Ljava/lang/String;

    new-instance p2, Lcom/facebook/ads/internal/c/b;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/c/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/NativeAd;->h:Lcom/facebook/ads/internal/c/b;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/NativeAd;->B:Landroid/view/View;

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .locals 2

    iget-object v0, p1, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/facebook/ads/NativeAd;->l:Lcom/facebook/ads/internal/f/e;

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->l:Lcom/facebook/ads/internal/f/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd;->k:Z

    iget-object p1, p1, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->B:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/AdListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->i:Lcom/facebook/ads/AdListener;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/internal/j/a;)Lcom/facebook/ads/internal/j/a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/NativeAd$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/NativeAd$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/NativeAd$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/NativeAd;->z:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd;->k:Z

    sget-object v4, Lcom/facebook/ads/internal/f;->j:Lcom/facebook/ads/internal/f;

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/ads/NativeAd;->f:Ljava/lang/String;

    sget-object v5, Lcom/facebook/ads/internal/server/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/server/AdPlacementType;

    const/4 v6, 0x0

    sget-object v7, Lcom/facebook/ads/NativeAd;->b:Lcom/facebook/ads/internal/d;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/internal/DisplayAdController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/f;Lcom/facebook/ads/internal/server/AdPlacementType;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/d;IZ)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    new-instance v1, Lcom/facebook/ads/NativeAd$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/NativeAd$1;-><init>(Lcom/facebook/ads/NativeAd;Ljava/util/EnumSet;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/a;)V

    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/DisplayAdController;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "loadAd cannot be called more than once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Lcom/facebook/ads/MediaViewVideoRenderer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/facebook/ads/AdChoicesView;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/facebook/ads/internal/view/hscroll/b;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/NativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/DisplayAdController;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/NativeAd;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/NativeAd;->z:J

    return-wide v0
.end method

.method static synthetic d(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/c/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->h:Lcom/facebook/ads/internal/c/b;

    return-object p0
.end method

.method public static downloadAndDisplayImage(Lcom/facebook/ads/NativeAd$Image;Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/util/q;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/util/q;-><init>(Landroid/widget/ImageView;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/util/q;->a([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/NativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->n()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/ads/NativeAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->o()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/util/ah;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->q:Lcom/facebook/ads/internal/util/ah;

    return-object p0
.end method

.method private getMinViewabilityPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->l:Lcom/facebook/ads/internal/f/e;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/e;->f()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic h(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/j/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    return-object p0
.end method

.method private i()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->l:Lcom/facebook/ads/internal/f/e;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/e;->g()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static synthetic i(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/adapters/u;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/adapters/u;

    return-object p0
.end method

.method private j()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->l:Lcom/facebook/ads/internal/f/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/e;->h()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->i()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/e;->h()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j(Lcom/facebook/ads/NativeAd;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    return-object p0
.end method

.method private k()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->l:Lcom/facebook/ads/internal/f/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/e;->i()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->j()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/e;->i()I

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0x3e8

    return v0
.end method

.method static synthetic k(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/NativeAdView$Type;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->v:Lcom/facebook/ads/NativeAdView$Type;

    return-object p0
.end method

.method private l()Z
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->y:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->f()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic l(Lcom/facebook/ads/NativeAd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/NativeAd;->w:Z

    return p0
.end method

.method private logExternalClick(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eil"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eil_source"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/v;->b(Ljava/util/Map;)V

    return-void
.end method

.method private logExternalImpression()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/adapters/u;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/u;->a()V

    return-void
.end method

.method static synthetic m(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/MediaView;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->x:Lcom/facebook/ads/MediaView;

    return-object p0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/NativeAd$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/NativeAd$b;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->t:Lcom/facebook/ads/NativeAd$b;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$b;->a()V

    new-instance v0, Lcom/facebook/ads/NativeAd$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/NativeAd$4;-><init>(Lcom/facebook/ads/NativeAd;)V

    new-instance v1, Lcom/facebook/ads/internal/adapters/u;

    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    iget-object v4, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/facebook/ads/internal/adapters/u;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b;Lcom/facebook/ads/internal/j/a;Lcom/facebook/ads/internal/adapters/v;)V

    iput-object v1, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/adapters/u;

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/facebook/ads/NativeAd;)Z
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->l()Z

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/facebook/ads/NativeAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->C:Ljava/lang/String;

    return-object p0
.end method

.method private o()V
    .locals 5

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAd;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/NativeAd$5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/NativeAd$5;-><init>(Lcom/facebook/ads/NativeAd;)V

    new-instance v1, Lcom/facebook/ads/internal/adapters/u;

    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    iget-object v4, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/facebook/ads/internal/adapters/u;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b;Lcom/facebook/ads/internal/j/a;Lcom/facebook/ads/internal/adapters/v;)V

    iput-object v1, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/adapters/u;

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/facebook/ads/NativeAd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Lcom/facebook/ads/NativeAd;)Lcom/facebook/ads/internal/i;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    return-object p0
.end method

.method static synthetic r(Lcom/facebook/ads/NativeAd;)Landroid/view/View$OnTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method private registerExternalLogReceiver(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAd;->D:Z

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->C:Ljava/lang/String;

    return-void
.end method

.method static synthetic s(Lcom/facebook/ads/NativeAd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/NativeAd;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method a()Lcom/facebook/ads/internal/adapters/v;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    return-object v0
.end method

.method a(Lcom/facebook/ads/MediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->x:Lcom/facebook/ads/MediaView;

    return-void
.end method

.method a(Lcom/facebook/ads/NativeAdView$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->v:Lcom/facebook/ads/NativeAdView$Type;

    return-void
.end method

.method protected a(Lcom/facebook/ads/internal/adapters/w;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/v;->a(Lcom/facebook/ads/internal/adapters/w;)V

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/NativeAd;->w:Z

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->h:Lcom/facebook/ads/internal/c/b;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/v;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->t:Lcom/facebook/ads/NativeAd$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$b;->b()V

    iput-object v1, p0, Lcom/facebook/ads/NativeAd;->t:Lcom/facebook/ads/NativeAd$b;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/DisplayAdController;->b(Z)V

    iput-object v1, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->x:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    iput-object v1, p0, Lcom/facebook/ads/NativeAd;->x:Lcom/facebook/ads/MediaView;

    :cond_2
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/facebook/ads/VideoAutoplayBehavior;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->y()Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->A()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdBody()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdChoicesIcon()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->t()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    return-object v0
.end method

.method public getAdChoicesLinkUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->l()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    return-object v0
.end method

.method public getAdIcon()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->k()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    return-object v0
.end method

.method public getAdNetwork()Lcom/facebook/ads/AdNetwork;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->E()Lcom/facebook/ads/AdNetwork;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdRawBody()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdSocialContext()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->s()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v0

    return-object v0
.end method

.method public getAdSubtitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewAttributes()Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->m()Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->f:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNativeConfigEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAd()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Ljava/util/EnumSet;)V

    return-void
.end method

.method public loadAd(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/NativeAd;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/NativeAd;->loadAdFromBid(Ljava/lang/String;Ljava/util/EnumSet;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/facebook/ads/NativeAd;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method

.method public onCtaBroadcast()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/NativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/facebook/ads/NativeAd;->c:Ljava/lang/String;

    const-string p2, "Ad not loaded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/NativeAd;->c:Ljava/lang/String;

    const-string v1, "Native Ad was already registered with a View. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    :cond_1
    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/ads/NativeAd;->c:Ljava/lang/String;

    const-string v1, "View already registered with a NativeAd. Auto unregistering and proceeding."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    :cond_2
    new-instance v0, Lcom/facebook/ads/NativeAd$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/NativeAd$a;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->s:Lcom/facebook/ads/NativeAd$a;

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/facebook/ads/internal/view/u;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/facebook/ads/NativeAd$2;

    invoke-direct {v3, p0}, Lcom/facebook/ads/NativeAd$2;-><init>(Lcom/facebook/ads/NativeAd;)V

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/internal/view/u;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/t;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->u:Lcom/facebook/ads/internal/view/u;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->B:Landroid/view/View;

    if-eqz p2, :cond_4

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/facebook/ads/NativeAd;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {p2, p1, v0}, Lcom/facebook/ads/internal/adapters/v;->a(Landroid/view/View;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->getMinViewabilityPercentage()I

    move-result v4

    new-instance p2, Lcom/facebook/ads/internal/j/a;

    iget-object v3, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->i()I

    move-result v5

    const/4 v6, 0x1

    new-instance v7, Lcom/facebook/ads/NativeAd$3;

    invoke-direct {v7, p0}, Lcom/facebook/ads/NativeAd$3;-><init>(Lcom/facebook/ads/NativeAd;)V

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/j/a$a;)V

    iput-object p2, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->j()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/facebook/ads/internal/j/a;->a(I)V

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->k()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/facebook/ads/internal/j/a;->b(I)V

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/j/a;->a()V

    new-instance p2, Lcom/facebook/ads/internal/adapters/u;

    iget-object v2, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    new-instance v3, Lcom/facebook/ads/NativeAd$c;

    invoke-direct {v3, p0, v1}, Lcom/facebook/ads/NativeAd$c;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAd$1;)V

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    iget-object v4, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-direct {p2, v2, v3, v1, v4}, Lcom/facebook/ads/internal/adapters/u;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b;Lcom/facebook/ads/internal/j/a;Lcom/facebook/ads/internal/adapters/v;)V

    iput-object p2, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/adapters/u;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/adapters/u;->a(Ljava/util/List;)V

    sget-object p2, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/internal/j;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/facebook/ads/internal/i;

    invoke-direct {p1}, Lcom/facebook/ads/internal/i;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/i;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/i;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/i;->a(Lcom/facebook/ads/internal/j/a;)V

    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->C()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/v;->C()I

    move-result p2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->B()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/facebook/ads/internal/i;->a(II)V

    :cond_6
    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->l:Lcom/facebook/ads/internal/f/e;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/f/e;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/facebook/ads/internal/i;->a(J)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->j:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/f/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/f/e;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/i;->a(J)V

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    invoke-virtual {p1, p2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid set of clickable views"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide a View"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->i:Lcom/facebook/ads/AdListener;

    return-void
.end method

.method public setMediaViewAutoplay(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/NativeAd;->y:Z

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->o:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public unregisterView()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->u:Lcom/facebook/ads/internal/view/u;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->u:Lcom/facebook/ads/internal/view/u;

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/adapters/v;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->a()V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i;->b()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->A:Lcom/facebook/ads/internal/i;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    sget-object v0, Lcom/facebook/ads/NativeAd;->d:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/facebook/ads/NativeAd;->m()V

    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->p:Lcom/facebook/ads/internal/j/a;

    :cond_4
    iput-object v2, p0, Lcom/facebook/ads/NativeAd;->r:Lcom/facebook/ads/internal/adapters/u;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View not registered with this NativeAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
