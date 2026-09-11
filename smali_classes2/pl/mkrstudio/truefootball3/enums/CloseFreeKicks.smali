.class public final enum Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;
.super Ljava/lang/Enum;
.source "CloseFreeKicks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

.field public static final enum EXECUTE:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

.field public static final enum PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

.field public static final enum STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    const-string v1, "STAY_AWAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    const-string v1, "PENALTY_AREA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    const-string v1, "EXECUTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->$values()[Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    return-object v0
.end method
