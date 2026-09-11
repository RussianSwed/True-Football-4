.class public final enum Lcom/facebook/ads/AdNetwork;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/AdNetwork;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADMOB:Lcom/facebook/ads/AdNetwork;

.field public static final enum AN:Lcom/facebook/ads/AdNetwork;

.field public static final enum FLURRY:Lcom/facebook/ads/AdNetwork;

.field public static final enum INMOBI:Lcom/facebook/ads/AdNetwork;

.field private static final synthetic a:[Lcom/facebook/ads/AdNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/facebook/ads/AdNetwork;

    const-string v1, "AN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdNetwork;->AN:Lcom/facebook/ads/AdNetwork;

    new-instance v1, Lcom/facebook/ads/AdNetwork;

    const-string v3, "ADMOB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/ads/AdNetwork;->ADMOB:Lcom/facebook/ads/AdNetwork;

    new-instance v3, Lcom/facebook/ads/AdNetwork;

    const-string v5, "FLURRY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/ads/AdNetwork;->FLURRY:Lcom/facebook/ads/AdNetwork;

    new-instance v5, Lcom/facebook/ads/AdNetwork;

    const-string v7, "INMOBI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/facebook/ads/AdNetwork;->INMOBI:Lcom/facebook/ads/AdNetwork;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/facebook/ads/AdNetwork;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/facebook/ads/AdNetwork;->a:[Lcom/facebook/ads/AdNetwork;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdNetwork;
    .locals 1

    const-class v0, Lcom/facebook/ads/AdNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/AdNetwork;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/AdNetwork;
    .locals 1

    sget-object v0, Lcom/facebook/ads/AdNetwork;->a:[Lcom/facebook/ads/AdNetwork;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdNetwork;

    return-object v0
.end method
