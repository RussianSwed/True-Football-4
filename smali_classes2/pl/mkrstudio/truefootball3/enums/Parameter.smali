.class public final enum Lpl/mkrstudio/truefootball3/enums/Parameter;
.super Ljava/lang/Enum;
.source "Parameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/Parameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/Parameter;

.field public static final enum AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

.field public static final enum CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

.field public static final enum GOALKEEPING:Lpl/mkrstudio/truefootball3/enums/Parameter;

.field public static final enum HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

.field public static final enum PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

.field public static final enum SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

.field public static final enum STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

.field public static final enum TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

.field public static final enum TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/Parameter;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->GOALKEEPING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    const-string v1, "GOALKEEPING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->GOALKEEPING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    const-string v1, "TACKLING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->TACKLING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    const-string v1, "STRENGTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->STRENGTH:Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    const-string v1, "HEADING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->HEADING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    const-string v1, "PASSING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->PASSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 9
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    const-string v1, "CROSSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->CROSSING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 10
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    const-string v1, "TECHNIQUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->TECHNIQUE:Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 11
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    const-string v1, "AGILITY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->AGILITY:Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 12
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    const-string v1, "SHOOTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/Parameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->SHOOTING:Lpl/mkrstudio/truefootball3/enums/Parameter;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Parameter;->$values()[Lpl/mkrstudio/truefootball3/enums/Parameter;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/Parameter;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/Parameter;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/Parameter;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/Parameter;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Parameter;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/Parameter;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/Parameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/Parameter;

    return-object v0
.end method
