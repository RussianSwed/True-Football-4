.class public final enum Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;
.super Ljava/lang/Enum;
.source "PlayerPsychicEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

.field public static final enum BAD_INTERVIEW:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

.field public static final enum BAD_TWEETS:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

.field public static final enum CLUBBING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

.field public static final enum HARD_TRAINING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

.field public static final enum TRAINING_MISSED:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

.field public static final enum TRAINING_WITH_YOUTH:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

.field public static final enum VISITING_CHILDREN:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->HARD_TRAINING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_WITH_YOUTH:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_TWEETS:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_INTERVIEW:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->CLUBBING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_MISSED:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->VISITING_CHILDREN:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const-string v1, "HARD_TRAINING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->HARD_TRAINING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const-string v1, "TRAINING_WITH_YOUTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_WITH_YOUTH:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const-string v1, "BAD_TWEETS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_TWEETS:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const-string v1, "BAD_INTERVIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->BAD_INTERVIEW:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const-string v1, "CLUBBING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->CLUBBING:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    .line 9
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const-string v1, "TRAINING_MISSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->TRAINING_MISSED:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    .line 10
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    const-string v1, "VISITING_CHILDREN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->VISITING_CHILDREN:Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->$values()[Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;

    return-object v0
.end method
