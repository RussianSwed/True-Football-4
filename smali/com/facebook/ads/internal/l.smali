.class public final enum Lcom/facebook/ads/internal/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/l;

.field public static final enum b:Lcom/facebook/ads/internal/l;

.field public static final enum c:Lcom/facebook/ads/internal/l;

.field public static final enum d:Lcom/facebook/ads/internal/l;

.field public static final enum e:Lcom/facebook/ads/internal/l;

.field public static final enum f:Lcom/facebook/ads/internal/l;

.field public static final enum g:Lcom/facebook/ads/internal/l;

.field public static final enum h:Lcom/facebook/ads/internal/l;

.field public static final enum i:Lcom/facebook/ads/internal/l;

.field private static final synthetic k:[Lcom/facebook/ads/internal/l;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/facebook/ads/internal/l;

    const-string v1, "REWARDED_VIDEO_COMPLETE"

    const/4 v2, 0x0

    const-string v3, "com.facebook.ads.rewarded_video.completed"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/l;->a:Lcom/facebook/ads/internal/l;

    new-instance v1, Lcom/facebook/ads/internal/l;

    const-string v3, "REWARDED_VIDEO_COMPLETE_WITHOUT_REWARD"

    const/4 v4, 0x1

    const-string v5, "com.facebook.ads.rewarded_video.completed.without.reward"

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/ads/internal/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/facebook/ads/internal/l;->b:Lcom/facebook/ads/internal/l;

    new-instance v3, Lcom/facebook/ads/internal/l;

    const-string v5, "REWARDED_VIDEO_END_ACTIVITY"

    const/4 v6, 0x2

    const-string v7, "com.facebook.ads.rewarded_video.error"

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/ads/internal/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/facebook/ads/internal/l;->c:Lcom/facebook/ads/internal/l;

    new-instance v5, Lcom/facebook/ads/internal/l;

    const-string v8, "REWARDED_VIDEO_ERROR"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lcom/facebook/ads/internal/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/facebook/ads/internal/l;->d:Lcom/facebook/ads/internal/l;

    new-instance v7, Lcom/facebook/ads/internal/l;

    const-string v8, "REWARDED_VIDEO_AD_CLICK"

    const/4 v10, 0x4

    const-string v11, "com.facebook.ads.rewarded_video.ad_click"

    invoke-direct {v7, v8, v10, v11}, Lcom/facebook/ads/internal/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/facebook/ads/internal/l;->e:Lcom/facebook/ads/internal/l;

    new-instance v8, Lcom/facebook/ads/internal/l;

    const-string v11, "REWARDED_VIDEO_IMPRESSION"

    const/4 v12, 0x5

    const-string v13, "com.facebook.ads.rewarded_video.ad_impression"

    invoke-direct {v8, v11, v12, v13}, Lcom/facebook/ads/internal/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/facebook/ads/internal/l;->f:Lcom/facebook/ads/internal/l;

    new-instance v11, Lcom/facebook/ads/internal/l;

    const-string v13, "REWARDED_VIDEO_CLOSED"

    const/4 v14, 0x6

    const-string v15, "com.facebook.ads.rewarded_video.closed"

    invoke-direct {v11, v13, v14, v15}, Lcom/facebook/ads/internal/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/facebook/ads/internal/l;->g:Lcom/facebook/ads/internal/l;

    new-instance v13, Lcom/facebook/ads/internal/l;

    const-string v15, "REWARD_SERVER_SUCCESS"

    const/4 v14, 0x7

    const-string v12, "com.facebook.ads.rewarded_video.server_reward_success"

    invoke-direct {v13, v15, v14, v12}, Lcom/facebook/ads/internal/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/facebook/ads/internal/l;->h:Lcom/facebook/ads/internal/l;

    new-instance v12, Lcom/facebook/ads/internal/l;

    const-string v15, "REWARD_SERVER_FAILED"

    const/16 v14, 0x8

    const-string v10, "com.facebook.ads.rewarded_video.server_reward_failed"

    invoke-direct {v12, v15, v14, v10}, Lcom/facebook/ads/internal/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/facebook/ads/internal/l;->i:Lcom/facebook/ads/internal/l;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/facebook/ads/internal/l;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v9

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v8, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/facebook/ads/internal/l;->k:[Lcom/facebook/ads/internal/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/internal/l;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/l;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/l;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/internal/l;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/l;->k:[Lcom/facebook/ads/internal/l;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/l;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/l;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/l;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
