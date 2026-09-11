.class public final enum Lpl/mkrstudio/truefootball3/enums/TransferOfferType;
.super Ljava/lang/Enum;
.source "TransferOfferType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/TransferOfferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

.field public static final enum BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

.field public static final enum CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

.field public static final enum LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/TransferOfferType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const-string v1, "BUY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->BUY:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const-string v1, "CONTRACT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->CONTRACT:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    const-string v1, "LOAN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->LOAN:Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->$values()[Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/TransferOfferType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/TransferOfferType;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    return-object v0
.end method
