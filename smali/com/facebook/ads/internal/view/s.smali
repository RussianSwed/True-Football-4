.class public Lcom/facebook/ads/internal/view/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/d;


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/d/a/k;

.field private final b:Lcom/facebook/ads/internal/view/d/a/i;

.field private final c:Lcom/facebook/ads/internal/view/d/a/c;

.field private final d:Lcom/facebook/ads/internal/view/d/a/e;

.field private final e:Lcom/facebook/ads/AudienceNetworkActivity;

.field private final f:Lcom/facebook/ads/internal/view/o;

.field private final g:Lcom/facebook/ads/internal/view/d$a;

.field private h:Lcom/facebook/ads/internal/util/ad;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/view/s$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/s$1;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/s;->a:Lcom/facebook/ads/internal/view/d/a/k;

    new-instance v1, Lcom/facebook/ads/internal/view/s$2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/s$2;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/s;->b:Lcom/facebook/ads/internal/view/d/a/i;

    new-instance v2, Lcom/facebook/ads/internal/view/s$3;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/s$3;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/s;->c:Lcom/facebook/ads/internal/view/d/a/c;

    new-instance v3, Lcom/facebook/ads/internal/view/s$4;

    invoke-direct {v3, p0}, Lcom/facebook/ads/internal/view/s$4;-><init>(Lcom/facebook/ads/internal/view/s;)V

    iput-object v3, p0, Lcom/facebook/ads/internal/view/s;->d:Lcom/facebook/ads/internal/view/d/a/e;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s;->e:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v4, Lcom/facebook/ads/internal/view/o;

    invoke-direct {v4, p1}, Lcom/facebook/ads/internal/view/o;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    new-instance v5, Lcom/facebook/ads/internal/view/d/b/b;

    invoke-direct {v5, p1}, Lcom/facebook/ads/internal/view/d/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/internal/view/d/b/m;)V

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/o;->getEventBus()Lcom/facebook/ads/internal/g/r;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/g/r;->a(Lcom/facebook/ads/internal/g/s;)Z

    iput-object p2, p0, Lcom/facebook/ads/internal/view/s;->g:Lcom/facebook/ads/internal/view/d$a;

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/o;->setIsFullScreen(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/o;->setVolume(F)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/view/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p2, v4}, Lcom/facebook/ads/internal/view/d$a;->a(Landroid/view/View;)V

    new-instance v0, Lcom/facebook/ads/internal/h;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/h;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/facebook/ads/internal/view/s$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/view/s$5;-><init>(Lcom/facebook/ads/internal/view/s;Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/d$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/d$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->g:Lcom/facebook/ads/internal/view/d$a;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/AudienceNetworkActivity;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/s;->e:Lcom/facebook/ads/AudienceNetworkActivity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 7

    const-string p2, "useNativeCtaButton"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/c/b;

    invoke-direct {v0, p3, p2}, Lcom/facebook/ads/internal/view/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/view/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/facebook/ads/internal/view/s$6;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/view/s$6;-><init>(Lcom/facebook/ads/internal/view/s;)V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/view/c/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->g:Lcom/facebook/ads/internal/view/d$a;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/view/d$a;->a(Landroid/view/View;)V

    :cond_0
    const-string p2, "videoSeekTime"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/facebook/ads/internal/view/s;->i:I

    new-instance p2, Lcom/facebook/ads/internal/util/ad;

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/g/g;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/g/g;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    const-string v1, "clientToken"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "videoLogger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/util/ad;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/view/o;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/s;->h:Lcom/facebook/ads/internal/util/ad;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    const-string p3, "videoMPD"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/view/o;->setVideoMPD(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    const-string p3, "videoURL"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/facebook/ads/internal/view/o;->setVideoURI(Ljava/lang/String;)V

    iget p2, p0, Lcom/facebook/ads/internal/view/s;->i:I

    if-lez p2, :cond_1

    iget-object p3, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {p3, p2}, Lcom/facebook/ads/internal/view/o;->a(I)V

    :cond_1
    const-string p2, "autoplay"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    sget-object p2, Lcom/facebook/ads/VideoStartReason;->USER_STARTED:Lcom/facebook/ads/VideoStartReason;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/VideoStartReason;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/o;->setControlsAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d$a;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->g:Lcom/facebook/ads/internal/view/d$a;

    new-instance v1, Lcom/facebook/ads/internal/view/d/a/f;

    invoke-direct {v1}, Lcom/facebook/ads/internal/view/d/a/f;-><init>()V

    const-string v2, "videoInterstitalEvent"

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->a(Z)V

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->g:Lcom/facebook/ads/internal/view/d$a;

    new-instance v1, Lcom/facebook/ads/internal/view/d/a/g;

    invoke-direct {v1}, Lcom/facebook/ads/internal/view/d/a/g;-><init>()V

    const-string v2, "videoInterstitalEvent"

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    sget-object v1, Lcom/facebook/ads/VideoStartReason;->USER_STARTED:Lcom/facebook/ads/VideoStartReason;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/o;->a(Lcom/facebook/ads/VideoStartReason;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->g:Lcom/facebook/ads/internal/view/d$a;

    new-instance v1, Lcom/facebook/ads/internal/view/d/a/p;

    iget v2, p0, Lcom/facebook/ads/internal/view/s;->i:I

    iget-object v3, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/o;->getCurrentPosition()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/view/d/a/p;-><init>(II)V

    const-string v2, "videoInterstitalEvent"

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->h:Lcom/facebook/ads/internal/util/ad;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/o;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/ad;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->f()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s;->f:Lcom/facebook/ads/internal/view/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/o;->h()V

    return-void
.end method
