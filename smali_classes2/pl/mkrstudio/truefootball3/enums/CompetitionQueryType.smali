.class public final enum Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;
.super Ljava/lang/Enum;
.source "CompetitionQueryType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum ADD_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum BLOCK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum DATE:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum DONE:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum FIXTURES_INFO:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum MAKE_GROUPS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum PLAY_WEEK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum PROMOTE_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum QUALIFY_TEAMS_FOR_CUPS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum RELEGATE_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum UNBLOCK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum UPDATE_TEAM_GROUP:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

.field public static final enum WEEK_INFO:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 10
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->ADD_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->WEEK_INFO:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->FIXTURES_INFO:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->PLAY_WEEK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->PROMOTE_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->RELEGATE_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->QUALIFY_TEAMS_FOR_CUPS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->DONE:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->DATE:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->BLOCK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->UNBLOCK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->MAKE_GROUPS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->UPDATE_TEAM_GROUP:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "ADD_TEAMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->ADD_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 12
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "WEEK_INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->WEEK_INFO:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 13
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "FIXTURES_INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->FIXTURES_INFO:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 14
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "PLAY_WEEK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->PLAY_WEEK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 15
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "PROMOTE_TEAMS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->PROMOTE_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 16
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "RELEGATE_TEAMS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->RELEGATE_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 17
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "QUALIFY_TEAMS_FOR_CUPS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->QUALIFY_TEAMS_FOR_CUPS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 18
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "DONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->DONE:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 19
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "DATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->DATE:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 20
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "BLOCK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->BLOCK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 21
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "UNBLOCK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->UNBLOCK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 22
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "MAKE_GROUPS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->MAKE_GROUPS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 23
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v1, "UPDATE_TEAM_GROUP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->UPDATE_TEAM_GROUP:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    .line 10
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->$values()[Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 10
    const-class v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;
    .locals 1

    .line 10
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    return-object v0
.end method
