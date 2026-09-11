.class public Lcom/facebook/ads/internal/view/d/c/a;
.super Landroid/view/TextureView;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/internal/view/d/c/c;
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:Landroid/net/Uri;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/ads/internal/view/d/c/e;

.field private f:Landroid/view/Surface;

.field private g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private h:Landroid/widget/MediaController;

.field private i:Lcom/facebook/ads/internal/view/d/c/d;

.field private j:Lcom/facebook/ads/internal/view/d/c/d;

.field private k:Lcom/facebook/ads/internal/view/d/c/d;

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Z

.field private o:J

.field private p:J

.field private q:J

.field private r:I

.field private s:I

.field private t:F

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Lcom/facebook/ads/VideoStartReason;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->b:Landroid/os/Handler;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:Lcom/facebook/ads/internal/view/d/c/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    sget-object p1, Lcom/facebook/ads/VideoStartReason;->NOT_STARTED:Lcom/facebook/ads/VideoStartReason;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:Lcom/facebook/ads/VideoStartReason;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->b:Landroid/os/Handler;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:Lcom/facebook/ads/internal/view/d/c/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    sget-object p1, Lcom/facebook/ads/VideoStartReason;->NOT_STARTED:Lcom/facebook/ads/VideoStartReason;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:Lcom/facebook/ads/VideoStartReason;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->b:Landroid/os/Handler;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:Lcom/facebook/ads/internal/view/d/c/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    sget-object p1, Lcom/facebook/ads/VideoStartReason;->NOT_STARTED:Lcom/facebook/ads/VideoStartReason;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:Lcom/facebook/ads/VideoStartReason;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->b:Landroid/os/Handler;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:Lcom/facebook/ads/internal/view/d/c/d;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    sget-object p1, Lcom/facebook/ads/VideoStartReason;->NOT_STARTED:Lcom/facebook/ads/VideoStartReason;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:Lcom/facebook/ads/VideoStartReason;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/c/a;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/d/c/a;)Landroid/widget/MediaController;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    return-object p0
.end method

.method private e()V
    .locals 9

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveVideoTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->b:Landroid/os/Handler;

    invoke-direct {v2, v3, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    new-instance v1, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/c/a;->l:Landroid/view/View;

    if-nez v3, :cond_0

    move-object v3, p0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    new-instance v3, Lcom/facebook/ads/internal/view/d/c/a$1;

    invoke-direct {v3, p0}, Lcom/facebook/ads/internal/view/d/c/a$1;-><init>(Lcom/facebook/ads/internal/view/d/c/a;)V

    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ads"

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v1, v3, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    new-instance v6, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/d/c/a;->c:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :goto_0
    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->b:Lcom/facebook/ads/internal/view/d/c/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/facebook/ads/internal/view/d/c/a;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_3
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_1
    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    return-void
.end method

.method private setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->e:Lcom/facebook/ads/internal/view/d/c/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/d/c/e;->a(Lcom/facebook/ads/internal/view/d/c/d;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->q:J

    :goto_0
    return-void
.end method

.method public a(Lcom/facebook/ads/VideoStartReason;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:Lcom/facebook/ads/VideoStartReason;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->c:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->setup(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->c:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->g:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->g:Lcom/facebook/ads/internal/view/d/c/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:Lcom/facebook/ads/internal/view/d/c/d;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/c/a;->f()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getInitialBufferTime()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->p:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/VideoStartReason;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:Lcom/facebook/ads/VideoStartReason;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/internal/view/d/c/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/internal/view/d/c/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:Lcom/facebook/ads/internal/view/d/c/d;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    return v0
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    invoke-static {v1, p2}, Lcom/facebook/ads/internal/view/d/c/a;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    if-lez v2, :cond_8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int v0, v0, p2

    div-int/2addr v0, v2

    goto :goto_2

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_4

    mul-int v2, v2, p1

    div-int v1, v2, v0

    goto :goto_0

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    mul-int v0, v0, p1

    iget v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_0
    move v0, p1

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_1
    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move v1, p2

    goto :goto_4

    :cond_6
    iget v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    iget v4, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int v1, p2, v2

    div-int/2addr v1, v4

    goto :goto_3

    :cond_7
    move v1, v2

    move p2, v4

    :goto_3
    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    mul-int v4, v4, p1

    div-int v1, v4, v2

    goto :goto_0

    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/d/c/a;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->h:Lcom/facebook/ads/internal/view/d/c/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->printStackTrace()V

    const-string v0, "[ExoPlayer] Error during playback of ExoPlayer"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_8

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_1

    sget-object p2, Lcom/facebook/ads/internal/view/d/c/d;->g:Lcom/facebook/ads/internal/view/d/c/d;

    invoke-direct {p0, p2}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    :cond_1
    iget-object p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition()V

    :cond_2
    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    goto/16 :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->o:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/facebook/ads/internal/view/d/c/a;->o:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->p:J

    :cond_4
    iget p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    invoke-virtual {p0, p2}, Lcom/facebook/ads/internal/view/d/c/a;->setRequestedVolume(F)V

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->q:J

    cmp-long p2, v0, v2

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v4

    cmp-long p2, v0, v4

    if-gez p2, :cond_5

    iget-object p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->q:J

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    iput-wide v2, p0, Lcom/facebook/ads/internal/view/d/c/a;->q:J

    :cond_5
    iget-object p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    iget-boolean p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->m:Z

    if-eqz p2, :cond_6

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    goto :goto_0

    :cond_6
    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p2, Lcom/facebook/ads/internal/view/d/c/d;->g:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq p1, p2, :cond_9

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->c:Lcom/facebook/ads/internal/view/d/c/d;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p2, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:Lcom/facebook/ads/VideoStartReason;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->a(Lcom/facebook/ads/VideoStartReason;)V

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->j:Lcom/facebook/ads/internal/view/d/c/d;

    goto :goto_1

    :cond_7
    iget p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    if-ltz p1, :cond_9

    const/4 p2, -0x1

    iput p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->u:I

    iget-object p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->e:Lcom/facebook/ads/internal/view/d/c/e;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->getCurrentPosition()I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/facebook/ads/internal/view/d/c/e;->a(II)V

    goto :goto_1

    :cond_8
    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->setVideoState(Lcom/facebook/ads/internal/view/d/c/d;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    :cond_0
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p2, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object p2, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:Lcom/facebook/ads/VideoStartReason;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->a(Lcom/facebook/ads/VideoStartReason;)V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->f:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    iget-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    :goto_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:Lcom/facebook/ads/internal/view/d/c/d;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->a(Z)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->r:I

    iput p2, p0, Lcom/facebook/ads/internal/view/d/c/a;->s:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onVideoTracksDisabled()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->h:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/facebook/ads/internal/view/d/c/d;->d:Lcom/facebook/ads/internal/view/d/c/d;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    :goto_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:Lcom/facebook/ads/internal/view/d/c/d;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/c/a;->a()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->k:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v0, Lcom/facebook/ads/internal/view/d/c/d;->e:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->x:Lcom/facebook/ads/VideoStartReason;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->a(Lcom/facebook/ads/VideoStartReason;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->w:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->l:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/internal/view/d/c/a$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/c/a$3;-><init>(Lcom/facebook/ads/internal/view/d/c/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->n:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->v:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/facebook/ads/internal/view/d/c/a$2;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/view/d/c/a$2;-><init>(Lcom/facebook/ads/internal/view/d/c/a;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/d/c/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setRequestedVolume(F)V
    .locals 2

    iput p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->t:F

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->b:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->i:Lcom/facebook/ads/internal/view/d/c/d;

    sget-object v1, Lcom/facebook/ads/internal/view/d/c/d;->a:Lcom/facebook/ads/internal/view/d/c/d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->d:Ljava/lang/String;

    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/internal/view/d/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->e:Lcom/facebook/ads/internal/view/d/c/e;

    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/c/a;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/c/a;->f()V

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/c/a;->c:Landroid/net/Uri;

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/d/c/a;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/c/a;->e()V

    return-void
.end method
