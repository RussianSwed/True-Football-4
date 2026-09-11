.class public final enum Lpl/mkrstudio/truefootball3/enums/PlayerReaction;
.super Ljava/lang/Enum;
.source "PlayerReaction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/PlayerReaction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

.field public static final enum ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

.field public static final enum ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

.field public static final enum CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

.field public static final enum DEMOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

.field public static final enum HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

.field public static final enum MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

.field public static final enum NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

.field public static final enum UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

.field public static final enum VERY_HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/PlayerReaction;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->DEMOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->VERY_HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const-string v1, "ANGRY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ANGRY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const-string v1, "UPSET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->UPSET:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const-string v1, "DEMOTIVATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->DEMOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->NONE:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const-string v1, "CONFUSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->CONFUSED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 9
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const-string v1, "ASHAMED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ASHAMED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 10
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const-string v1, "MOTIVATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->MOTIVATED:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 11
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const-string v1, "HAPPY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 12
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    const-string v1, "VERY_HAPPY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->VERY_HAPPY:Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->$values()[Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/PlayerReaction;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/PlayerReaction;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/PlayerReaction;

    return-object v0
.end method
