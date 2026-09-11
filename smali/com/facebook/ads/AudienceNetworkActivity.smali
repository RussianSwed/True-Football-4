.class public Lcom/facebook/ads/AudienceNetworkActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/AudienceNetworkActivity$Type;,
        Lcom/facebook/ads/AudienceNetworkActivity$a;,
        Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;
    }
.end annotation


# static fields
.field public static final AD_ICON_URL:Ljava/lang/String; = "adIconUrl"

.field public static final AD_SUBTITLE:Ljava/lang/String; = "adSubtitle"

.field public static final AD_TITLE:Ljava/lang/String; = "adTitle"

.field public static final AUDIENCE_NETWORK_UNIQUE_ID_EXTRA:Ljava/lang/String; = "uniqueId"

.field public static final AUTOPLAY:Ljava/lang/String; = "autoplay"

.field public static final BROWSER_URL:Ljava/lang/String; = "browserURL"

.field public static final CLIENT_TOKEN:Ljava/lang/String; = "clientToken"

.field public static final CONTEXT_SWITCH_BEHAVIOR:Ljava/lang/String; = "contextSwitchBehavior"

.field public static final END_CARD_ACTIVATION_COMMAND:Ljava/lang/String; = "facebookRewardedVideoEndCardActivationCommand"

.field public static final END_CARD_MARKUP:Ljava/lang/String; = "facebookRewardedVideoEndCardMarkup"

.field public static final HANDLER_TIME:Ljava/lang/String; = "handlerTime"

.field public static final PLACEMENT_ID:Ljava/lang/String; = "placementId"

.field public static final PREDEFINED_ORIENTATION_KEY:Ljava/lang/String; = "predefinedOrientationKey"

.field public static final REQUEST_TIME:Ljava/lang/String; = "requestTime"

.field public static final REWARD_SERVER_URL:Ljava/lang/String; = "rewardServerURL"

.field public static final SKIP_DELAY_SECONDS_KEY:Ljava/lang/String; = "skipAfterSeconds"

.field public static final VIDEO_LOGGER:Ljava/lang/String; = "videoLogger"

.field public static final VIDEO_MPD:Ljava/lang/String; = "videoMPD"

.field public static final VIDEO_REPORT_URL:Ljava/lang/String; = "videoReportURL"

.field public static final VIDEO_SEEK_TIME:Ljava/lang/String; = "videoSeekTime"

.field public static final VIDEO_URL:Ljava/lang/String; = "videoURL"

.field public static final VIEW_TYPE:Ljava/lang/String; = "viewType"

.field public static final WEBVIEW_ENCODING:Ljava/lang/String; = "utf-8"

.field public static final WEBVIEW_MIME_TYPE:Ljava/lang/String; = "text/html"

.field private static final a:Ljava/lang/String; = "AudienceNetworkActivity"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/ads/internal/view/c;

.field private e:Z

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/content/Intent;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

.field private k:J

.field private l:J

.field private m:I

.field private n:Lcom/facebook/ads/internal/view/d;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/widget/TextView;

.field private q:Lcom/facebook/ads/internal/i;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AudienceNetworkActivity;)Lcom/facebook/ads/internal/i;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->q:Lcom/facebook/ads/internal/i;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AudienceNetworkActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "viewType"

    const-string v1, "uniqueId"

    const/4 v2, -0x1

    const-string v3, "predefinedOrientationKey"

    if-eqz p2, :cond_0

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->h:I

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    return-void

    :cond_0
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->h:I

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/AudienceNetworkActivity$Type;

    iput-object p2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const/4 p2, 0x0

    const-string v0, "skipAfterSeconds"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->m:I

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AudienceNetworkActivity;Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/ads/internal/g/q;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "event"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AudienceNetworkActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/AudienceNetworkActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v1, "rewardServerURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/facebook/ads/internal/util/z;

    invoke-direct {v2, v1}, Lcom/facebook/ads/internal/util/z;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$7;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$7;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/util/z;->a(Lcom/facebook/ads/internal/util/z$a;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/facebook/ads/internal/util/z;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v1, "facebookRewardedVideoEndCardMarkup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/g;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/view/c;

    new-instance v1, Lcom/facebook/ads/AudienceNetworkActivity$8;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AudienceNetworkActivity$8;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/internal/view/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/c$b;I)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v1, "facebookRewardedVideoEndCardActivationCommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    invoke-static {}, Lcom/facebook/ads/internal/util/h;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/internal/view/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->b()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d;->onDestroy()V

    iput-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->d()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/ads/AudienceNetworkActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->e:Z

    return p0
.end method

.method static synthetic g(Lcom/facebook/ads/AudienceNetworkActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/ads/AudienceNetworkActivity;)Lcom/facebook/ads/internal/view/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/ads/AudienceNetworkActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->l:J

    iget-wide v4, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->l:J

    iput-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:J

    iget v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->m:I

    int-to-long v0, v0

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-interface {v2}, Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;->interceptBackButton()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    instance-of v1, v0, Lcom/facebook/ads/internal/adapters/k;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/k;->a(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/ads/AudienceNetworkActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v2, "clientToken"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v2, "placementId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v2, "requestTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->t:J

    iget-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->r:Z

    iget-object v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v6, Lcom/facebook/ads/AudienceNetworkActivity$Type;->VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const/4 v7, 0x0

    if-ne v2, v6, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/view/s;

    new-instance v2, Lcom/facebook/ads/AudienceNetworkActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/AudienceNetworkActivity$1;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/internal/view/s;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V

    iget-object v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/s;->a(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v6, Lcom/facebook/ads/AudienceNetworkActivity$Type;->REWARDED_VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v2, v6, :cond_1

    new-instance v0, Lcom/facebook/ads/internal/view/m;

    new-instance v2, Lcom/facebook/ads/internal/view/o;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/o;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/facebook/ads/AudienceNetworkActivity$2;

    invoke-direct {v6, p0}, Lcom/facebook/ads/AudienceNetworkActivity$2;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-direct {v0, p0, v2, v6}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/o;Lcom/facebook/ads/internal/view/d$a;)V

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    new-instance v0, Lcom/facebook/ads/AudienceNetworkActivity$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/AudienceNetworkActivity$3;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v6, Lcom/facebook/ads/AudienceNetworkActivity$Type;->DISPLAY:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v2, v6, :cond_2

    iput-boolean v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->r:Z

    new-instance v0, Lcom/facebook/ads/internal/view/i;

    new-instance v2, Lcom/facebook/ads/AudienceNetworkActivity$4;

    invoke-direct {v2, p0}, Lcom/facebook/ads/AudienceNetworkActivity$4;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/internal/view/i;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v2, Lcom/facebook/ads/AudienceNetworkActivity$Type;->BROWSER:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/facebook/ads/internal/view/f;

    new-instance v2, Lcom/facebook/ads/AudienceNetworkActivity$5;

    invoke-direct {v2, p0}, Lcom/facebook/ads/AudienceNetworkActivity$5;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/internal/view/f;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/view/d$a;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v2, Lcom/facebook/ads/AudienceNetworkActivity$Type;->NATIVE:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const-string v6, "com.facebook.ads.interstitial.error"

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    const-string v2, "uniqueId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/view/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    if-nez v0, :cond_4

    const-string p1, "Unable to find view"

    :goto_1
    invoke-static {v7, p1}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    invoke-direct {p0, v6}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    return-void

    :cond_4
    new-instance v2, Lcom/facebook/ads/AudienceNetworkActivity$6;

    invoke-direct {v2, p0}, Lcom/facebook/ads/AudienceNetworkActivity$6;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-interface {v0, v2}, Lcom/facebook/ads/internal/view/d;->a(Lcom/facebook/ads/internal/view/d$a;)V

    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    iget-object v2, p0, Lcom/facebook/ads/AudienceNetworkActivity;->g:Landroid/content/Intent;

    invoke-interface {v0, v2, p1, p0}, Lcom/facebook/ads/internal/view/d;->a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V

    const-string p1, "com.facebook.ads.interstitial.displayed"

    invoke-direct {p0, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:J

    invoke-static {p0}, Lcom/facebook/ads/internal/j;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v0, Lcom/facebook/ads/AudienceNetworkActivity$Type;->BROWSER:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-eq p1, v0, :cond_7

    new-instance p1, Lcom/facebook/ads/internal/i;

    invoke-direct {p1}, Lcom/facebook/ads/internal/i;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->q:Lcom/facebook/ads/internal/i;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/i;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->q:Lcom/facebook/ads/internal/i;

    invoke-virtual {p0}, Lcom/facebook/ads/AudienceNetworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/i;->b(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/facebook/ads/AudienceNetworkActivity;->t:J

    cmp-long p1, v8, v4

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->q:Lcom/facebook/ads/internal/i;

    invoke-virtual {p1, v8, v9}, Lcom/facebook/ads/internal/i;->a(J)V

    :cond_5
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Landroid/widget/TextView;

    const-string v0, "Debug"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Landroid/widget/TextView;

    const/16 v0, 0xa0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/facebook/ads/AudienceNetworkActivity$a;

    invoke-direct {p1, p0, v7}, Lcom/facebook/ads/AudienceNetworkActivity$a;-><init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/AudienceNetworkActivity$1;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-boolean v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->r:Z

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_3
    iget-object p1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->q:Lcom/facebook/ads/internal/i;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void

    :cond_8
    const-string p1, "Unable to infer viewType from intent or savedInstanceState"

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j;->a(Lcom/facebook/ads/internal/view/d;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d;->onDestroy()V

    iput-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/facebook/ads/internal/util/h;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c;->destroy()V

    iput-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->d:Lcom/facebook/ads/internal/view/c;

    iput-object v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->REWARDED_VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/facebook/ads/internal/l;->g:Lcom/facebook/ads/internal/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/l;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "com.facebook.ads.interstitial.dismissed"

    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->q:Lcom/facebook/ads/internal/i;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/facebook/ads/internal/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->q:Lcom/facebook/ads/internal/i;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i;->b()V

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 6

    iget-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->l:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->l:J

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/ads/AudienceNetworkActivity;->e:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d;->h()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->k:J

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/d;->i()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->n:Lcom/facebook/ads/internal/view/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d;->a(Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->h:I

    const-string v1, "predefinedOrientationKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->i:Ljava/lang/String;

    const-string v1, "uniqueId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->j:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    const-string v1, "viewType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public removeBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/AudienceNetworkActivity;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
