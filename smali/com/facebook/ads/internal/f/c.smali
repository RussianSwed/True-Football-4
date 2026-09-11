.class public final enum Lcom/facebook/ads/internal/f/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/f/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/f/c;

.field public static final enum b:Lcom/facebook/ads/internal/f/c;

.field public static final enum c:Lcom/facebook/ads/internal/f/c;

.field public static final enum d:Lcom/facebook/ads/internal/f/c;

.field public static final enum e:Lcom/facebook/ads/internal/f/c;

.field private static final synthetic f:[Lcom/facebook/ads/internal/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/facebook/ads/internal/f/c;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/f/c;->a:Lcom/facebook/ads/internal/f/c;

    new-instance v1, Lcom/facebook/ads/internal/f/c;

    const-string v3, "BANNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/ads/internal/f/c;->b:Lcom/facebook/ads/internal/f/c;

    new-instance v3, Lcom/facebook/ads/internal/f/c;

    const-string v5, "INTERSTITIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/ads/internal/f/c;->c:Lcom/facebook/ads/internal/f/c;

    new-instance v5, Lcom/facebook/ads/internal/f/c;

    const-string v7, "NATIVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/ads/internal/f/c;->d:Lcom/facebook/ads/internal/f/c;

    new-instance v7, Lcom/facebook/ads/internal/f/c;

    const-string v9, "REWARDED_VIDEO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/facebook/ads/internal/f/c;->e:Lcom/facebook/ads/internal/f/c;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/facebook/ads/internal/f/c;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/facebook/ads/internal/f/c;->f:[Lcom/facebook/ads/internal/f/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/facebook/ads/internal/f;)Lcom/facebook/ads/internal/f/c;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/f/c$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/f;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/facebook/ads/internal/f/c;->a:Lcom/facebook/ads/internal/f/c;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/facebook/ads/internal/f/c;->e:Lcom/facebook/ads/internal/f/c;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/facebook/ads/internal/f/c;->c:Lcom/facebook/ads/internal/f/c;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/facebook/ads/internal/f/c;->b:Lcom/facebook/ads/internal/f/c;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/facebook/ads/internal/f/c;->d:Lcom/facebook/ads/internal/f/c;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/f/c;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/f/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/f/c;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/internal/f/c;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/f/c;->f:[Lcom/facebook/ads/internal/f/c;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/f/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/f/c;

    return-object v0
.end method
