.class public final enum Lpl/mkrstudio/truefootball3/enums/CompetitionType;
.super Ljava/lang/Enum;
.source "CompetitionType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/CompetitionType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/CompetitionType;

.field public static final enum CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

.field public static final enum CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

.field public static final enum DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

.field public static final enum LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

.field public static final enum LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/CompetitionType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    .line 5
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-string v1, "LEAGUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-string v1, "LEAGUE_PLAYOFF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-string v1, "DOMESTIC_CUP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    .line 9
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-string v1, "CONTINENTAL_CUP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    .line 10
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-string v1, "CHAMPIONS_CUP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    .line 5
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->$values()[Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/CompetitionType;

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/CompetitionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5
    const-class v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/CompetitionType;
    .locals 1

    .line 5
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/CompetitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    return-object v0
.end method
