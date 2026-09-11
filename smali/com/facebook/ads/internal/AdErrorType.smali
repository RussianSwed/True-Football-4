.class public final enum Lcom/facebook/ads/internal/AdErrorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/AdErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_REQUEST_FAILED:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum AD_REQUEST_TIMEOUT:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum DISABLED_APP:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum ERROR_MESSAGE:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum INTERNAL_ERROR:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum NETWORK_ERROR:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum NO_AD_PLACEMENT:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum NO_FILL:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum PARSER_FAILURE:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum SERVER_ERROR:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum START_BEFORE_INIT:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum UNKNOWN_ERROR:Lcom/facebook/ads/internal/AdErrorType;

.field public static final enum UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/AdErrorType;

.field private static final synthetic d:[Lcom/facebook/ads/internal/AdErrorType;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v6, Lcom/facebook/ads/internal/AdErrorType;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "unknown error"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v6, Lcom/facebook/ads/internal/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v0, Lcom/facebook/ads/internal/AdErrorType;

    const-string v8, "NETWORK_ERROR"

    const/4 v9, 0x1

    const/16 v10, 0x3e8

    const-string v11, "Network Error"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/facebook/ads/internal/AdErrorType;->NETWORK_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v1, Lcom/facebook/ads/internal/AdErrorType;

    const-string v14, "NO_FILL"

    const/4 v15, 0x2

    const/16 v16, 0x3e9

    const-string v17, "No Fill"

    const/16 v18, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v1, Lcom/facebook/ads/internal/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v2, Lcom/facebook/ads/internal/AdErrorType;

    const-string v8, "LOAD_TOO_FREQUENTLY"

    const/4 v9, 0x3

    const/16 v10, 0x3ea

    const-string v11, "Ad was re-loaded too frequently"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v2, Lcom/facebook/ads/internal/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v3, Lcom/facebook/ads/internal/AdErrorType;

    const-string v14, "DISABLED_APP"

    const/4 v15, 0x4

    const/16 v16, 0x3ed

    const-string v17, "App is disabled from making ad requests"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/facebook/ads/internal/AdErrorType;->DISABLED_APP:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v4, Lcom/facebook/ads/internal/AdErrorType;

    const-string v8, "SERVER_ERROR"

    const/4 v9, 0x5

    const/16 v10, 0x7d0

    const-string v11, "Server Error"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v4, Lcom/facebook/ads/internal/AdErrorType;->SERVER_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v5, Lcom/facebook/ads/internal/AdErrorType;

    const-string v14, "INTERNAL_ERROR"

    const/4 v15, 0x6

    const/16 v16, 0x7d1

    const-string v17, "Internal Error"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v5, Lcom/facebook/ads/internal/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v13, Lcom/facebook/ads/internal/AdErrorType;

    const-string v8, "START_BEFORE_INIT"

    const/4 v9, 0x7

    const/16 v10, 0x7d4

    const-string v11, "initAd must be called before startAd"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v13, Lcom/facebook/ads/internal/AdErrorType;->START_BEFORE_INIT:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v7, Lcom/facebook/ads/internal/AdErrorType;

    const-string v15, "AD_REQUEST_FAILED"

    const/16 v16, 0x8

    const/16 v17, 0x457

    const-string v18, "Facebook Ads SDK request for ads failed"

    const/16 v19, 0x0

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v7, Lcom/facebook/ads/internal/AdErrorType;->AD_REQUEST_FAILED:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v8, Lcom/facebook/ads/internal/AdErrorType;

    const-string v21, "AD_REQUEST_TIMEOUT"

    const/16 v22, 0x9

    const/16 v23, 0x458

    const-string v24, "Facebook Ads SDK request for ads timed out"

    const/16 v25, 0x0

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v8, Lcom/facebook/ads/internal/AdErrorType;->AD_REQUEST_TIMEOUT:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v9, Lcom/facebook/ads/internal/AdErrorType;

    const-string v15, "PARSER_FAILURE"

    const/16 v16, 0xa

    const/16 v17, 0x4b1

    const-string v18, "Failed to parse Facebook Ads SDK delivery response"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v9, Lcom/facebook/ads/internal/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v10, Lcom/facebook/ads/internal/AdErrorType;

    const-string v21, "UNKNOWN_RESPONSE"

    const/16 v22, 0xb

    const/16 v23, 0x4b2

    const-string v24, "Unknown Facebook Ads SDK delivery response type"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v10, Lcom/facebook/ads/internal/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v11, Lcom/facebook/ads/internal/AdErrorType;

    const-string v15, "ERROR_MESSAGE"

    const/16 v16, 0xc

    const/16 v17, 0x4b3

    const-string v18, "Facebook Ads SDK delivery response Error message"

    const/16 v19, 0x1

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v11, Lcom/facebook/ads/internal/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v12, Lcom/facebook/ads/internal/AdErrorType;

    const-string v21, "NO_AD_PLACEMENT"

    const/16 v22, 0xd

    const/16 v23, 0x516

    const-string v24, "Facebook Ads SDK returned no ad placements"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v12, Lcom/facebook/ads/internal/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v20, Lcom/facebook/ads/internal/AdErrorType;

    const-string v15, "BID_IMPRESSION_MISMATCH"

    const/16 v16, 0xe

    const/16 v17, 0xfa1

    const-string v18, "Bid payload does not match placement"

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v20, Lcom/facebook/ads/internal/AdErrorType;->BID_IMPRESSION_MISMATCH:Lcom/facebook/ads/internal/AdErrorType;

    new-instance v14, Lcom/facebook/ads/internal/AdErrorType;

    const-string v22, "BID_PAYLOAD_ERROR"

    const/16 v23, 0xf

    const/16 v24, 0xfa2

    const-string v25, "Invalid bid payload"

    const/16 v26, 0x0

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lcom/facebook/ads/internal/AdErrorType;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v14, Lcom/facebook/ads/internal/AdErrorType;->BID_PAYLOAD_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    const/16 v15, 0x10

    new-array v15, v15, [Lcom/facebook/ads/internal/AdErrorType;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    sput-object v15, Lcom/facebook/ads/internal/AdErrorType;->d:[Lcom/facebook/ads/internal/AdErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/AdErrorType;->a:I

    iput-object p4, p0, Lcom/facebook/ads/internal/AdErrorType;->b:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/facebook/ads/internal/AdErrorType;->c:Z

    return-void
.end method

.method public static adErrorTypeFromCode(I)Lcom/facebook/ads/internal/AdErrorType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/AdErrorType;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/AdErrorType;)Lcom/facebook/ads/internal/AdErrorType;

    move-result-object p0

    return-object p0
.end method

.method public static adErrorTypeFromCode(ILcom/facebook/ads/internal/AdErrorType;)Lcom/facebook/ads/internal/AdErrorType;
    .locals 5

    invoke-static {}, Lcom/facebook/ads/internal/AdErrorType;->values()[Lcom/facebook/ads/internal/AdErrorType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/facebook/ads/internal/AdErrorType;->getErrorCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdErrorType;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/AdErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/AdErrorType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/internal/AdErrorType;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/AdErrorType;->d:[Lcom/facebook/ads/internal/AdErrorType;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/AdErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/AdErrorType;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdErrorType;->c:Z

    return v0
.end method

.method public getAdError(Ljava/lang/String;)Lcom/facebook/ads/AdError;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/b;-><init>(Lcom/facebook/ads/internal/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b;->b()Lcom/facebook/ads/AdError;

    move-result-object p1

    return-object p1
.end method

.method public getAdErrorWrapper(Ljava/lang/String;)Lcom/facebook/ads/internal/b;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/b;-><init>(Lcom/facebook/ads/internal/AdErrorType;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDefaultErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/AdErrorType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/AdErrorType;->a:I

    return v0
.end method
