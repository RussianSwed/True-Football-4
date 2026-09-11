.class public final enum Lpl/mkrstudio/truefootball3/enums/MatchEventType;
.super Ljava/lang/Enum;
.source "MatchEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/MatchEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum EXTRA_TIME_WON:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum INJURY:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum OWN_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum PENALTIES_WON:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

.field public static final enum YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/MatchEventType;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->OWN_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->INJURY:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->EXTRA_TIME_WON:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTIES_WON:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "YELLOW_CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "RED_CARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "GOAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "OWN_GOAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->OWN_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "PENALTY_GOAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 9
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "INJURY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->INJURY:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 10
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "EXTRA_TIME_WON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->EXTRA_TIME_WON:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 11
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "PENALTIES_WON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTIES_WON:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 12
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "ASSIST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 13
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v1, "CLEAN_SHEET"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->$values()[Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/MatchEventType;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/MatchEventType;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/MatchEventType;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/MatchEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    return-object v0
.end method
