.class public final enum Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;
.super Ljava/lang/Enum;
.source "SeverityOfBallLoss.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

.field public static final enum INCREDIBLY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

.field public static final enum NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

.field public static final enum NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

.field public static final enum QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

.field public static final enum SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

.field public static final enum VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->INCREDIBLY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const-string v1, "INCREDIBLY_SEVERE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->INCREDIBLY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const-string v1, "VERY_SEVERE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const-string v1, "SEVERE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const-string v1, "QUITE_SEVERE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const-string v1, "NOT_VERY_SEVERE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 9
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    const-string v1, "NOT_SEVERE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->$values()[Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    return-object v0
.end method
