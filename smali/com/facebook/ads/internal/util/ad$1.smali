.class Lcom/facebook/ads/internal/util/ad$1;
.super Lcom/facebook/ads/internal/view/d/a/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/util/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/facebook/ads/internal/util/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/util/ad;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/internal/util/ad$1;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/internal/util/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/util/ad$1;->b:Lcom/facebook/ads/internal/util/ad;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/v;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/u;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/util/ad$1;->a(Lcom/facebook/ads/internal/view/d/a/u;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/u;)V
    .locals 0

    sget-boolean p1, Lcom/facebook/ads/internal/util/ad$1;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/util/ad$1;->b:Lcom/facebook/ads/internal/util/ad;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/facebook/ads/internal/util/ad$1;->b:Lcom/facebook/ads/internal/util/ad;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/internal/util/ad;->e()V

    return-void
.end method
