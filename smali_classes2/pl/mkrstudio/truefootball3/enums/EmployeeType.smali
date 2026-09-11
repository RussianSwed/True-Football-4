.class public final enum Lpl/mkrstudio/truefootball3/enums/EmployeeType;
.super Ljava/lang/Enum;
.source "EmployeeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/mkrstudio/truefootball3/enums/EmployeeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/mkrstudio/truefootball3/enums/EmployeeType;

.field public static final enum ASSISTANT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

.field public static final enum DOCTOR:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

.field public static final enum GOALKEEPER_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

.field public static final enum MARKETER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

.field public static final enum OTHER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

.field public static final enum PHYSIOTHERAPIST:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

.field public static final enum SCOUT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

.field public static final enum YOUTH_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;


# direct methods
.method private static synthetic $values()[Lpl/mkrstudio/truefootball3/enums/EmployeeType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    .line 3
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->ASSISTANT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->SCOUT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->DOCTOR:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->PHYSIOTHERAPIST:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->YOUTH_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->GOALKEEPER_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->MARKETER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->OTHER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-string v1, "ASSISTANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->ASSISTANT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    .line 5
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-string v1, "SCOUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->SCOUT:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    .line 6
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-string v1, "DOCTOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->DOCTOR:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    .line 7
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-string v1, "PHYSIOTHERAPIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->PHYSIOTHERAPIST:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    .line 8
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-string v1, "YOUTH_TRAINER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->YOUTH_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    .line 9
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-string v1, "GOALKEEPER_TRAINER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->GOALKEEPER_TRAINER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    .line 10
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-string v1, "MARKETER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->MARKETER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    .line 11
    new-instance v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->OTHER:Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    .line 3
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->$values()[Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object v0

    sput-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/EmployeeType;

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

.method public static valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/EmployeeType;
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
    const-class v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    return-object p0
.end method

.method public static values()[Lpl/mkrstudio/truefootball3/enums/EmployeeType;
    .locals 1

    .line 3
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->$VALUES:[Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    invoke-virtual {v0}, [Lpl/mkrstudio/truefootball3/enums/EmployeeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    return-object v0
.end method
