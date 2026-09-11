.class public Lpl/mkrstudio/truefootball3/objects/Tactics;
.super Ljava/lang/Object;
.source "Tactics.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static AI_TACTICS_442:Lpl/mkrstudio/truefootball3/objects/Tactics; = null

.field public static AI_TACTICS_451:Lpl/mkrstudio/truefootball3/objects/Tactics; = null

.field public static USER_TACTICS_442:Lpl/mkrstudio/truefootball3/objects/Tactics; = null

.field public static USER_TACTICS_451:Lpl/mkrstudio/truefootball3/objects/Tactics; = null

.field private static final serialVersionUID:J = -0x3876c734fd356c9dL


# instance fields
.field aggression:I

.field concentration:I

.field formation:Lpl/mkrstudio/truefootball3/objects/Formation;

.field gameplay:Lpl/mkrstudio/truefootball3/enums/Gameplay;

.field individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

.field offsideTraps:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

.field pressing:Lpl/mkrstudio/truefootball3/enums/Pressing;

.field timeWasting:Lpl/mkrstudio/truefootball3/enums/TimeWasting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Tactics;

    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_451:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;-><init>(Lpl/mkrstudio/truefootball3/objects/Formation;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->AI_TACTICS_451:Lpl/mkrstudio/truefootball3/objects/Tactics;

    .line 40
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Tactics;

    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->OFFENSIVE_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;-><init>(Lpl/mkrstudio/truefootball3/objects/Formation;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->AI_TACTICS_442:Lpl/mkrstudio/truefootball3/objects/Tactics;

    .line 41
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Tactics;

    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_451:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;-><init>(Lpl/mkrstudio/truefootball3/objects/Formation;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->USER_TACTICS_451:Lpl/mkrstudio/truefootball3/objects/Tactics;

    .line 42
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Tactics;

    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->OFFENSIVE_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;-><init>(Lpl/mkrstudio/truefootball3/objects/Formation;)V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->USER_TACTICS_442:Lpl/mkrstudio/truefootball3/objects/Tactics;

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Formation;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xb

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    .line 35
    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4-5-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->REGULAR_451:Lpl/mkrstudio/truefootball3/objects/Formation;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->formation:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 47
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Gameplay;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->gameplay:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    .line 48
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Pressing;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Pressing;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->pressing:Lpl/mkrstudio/truefootball3/enums/Pressing;

    .line 49
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->NEVER:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->timeWasting:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    .line 50
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->NEVER:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->offsideTraps:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    .line 52
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v24, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/Passes;->LONG_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v20, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v21, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v22, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v23, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v13, v24

    invoke-direct/range {v13 .. v23}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v24, v1, v12

    .line 54
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v23, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v20, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v21, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v22, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v12, v23

    invoke-direct/range {v12 .. v22}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v23, v1, v11

    .line 56
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v22, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v20, Lpl/mkrstudio/truefootball3/enums/Captain;->YES:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v21, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v11, v22

    invoke-direct/range {v11 .. v21}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v22, v1, v10

    .line 58
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v21, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v20, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v10, v21

    invoke-direct/range {v10 .. v20}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v21, v1, v9

    .line 60
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v20, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v9, v20

    invoke-direct/range {v9 .. v19}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v20, v1, v8

    .line 62
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v19, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v8, v19

    invoke-direct/range {v8 .. v18}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v19, v1, v7

    .line 64
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v18, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v7, v18

    invoke-direct/range {v7 .. v17}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v18, v1, v6

    .line 66
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v17, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v6, v17

    invoke-direct/range {v6 .. v16}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v17, v1, v5

    .line 68
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v16, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v5, v16

    invoke-direct/range {v5 .. v15}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v16, v1, v4

    .line 70
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v15, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object v4, v15

    invoke-direct/range {v4 .. v14}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v15, v1, v3

    .line 72
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v14, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v14, v1, v2

    goto/16 :goto_0

    .line 73
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v13, "4-4-2 (2)"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/Formation;->OFFENSIVE_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->formation:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 75
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Gameplay;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->gameplay:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    .line 76
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Pressing;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Pressing;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->pressing:Lpl/mkrstudio/truefootball3/enums/Pressing;

    .line 77
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->NEVER:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->timeWasting:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    .line 78
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->NEVER:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->offsideTraps:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    .line 80
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v24, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/Passes;->LONG_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v20, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v21, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v22, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v23, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v13, v24

    invoke-direct/range {v13 .. v23}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v24, v1, v12

    .line 82
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v23, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v20, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v21, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v22, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v12, v23

    invoke-direct/range {v12 .. v22}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v23, v1, v11

    .line 84
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v22, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v20, Lpl/mkrstudio/truefootball3/enums/Captain;->YES:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v21, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v11, v22

    invoke-direct/range {v11 .. v21}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v22, v1, v10

    .line 86
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v21, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v20, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v10, v21

    invoke-direct/range {v10 .. v20}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v21, v1, v9

    .line 88
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v20, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v19, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v9, v20

    invoke-direct/range {v9 .. v19}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v20, v1, v8

    .line 90
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v19, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v18, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v8, v19

    invoke-direct/range {v8 .. v18}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v19, v1, v7

    .line 92
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v18, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v7, v18

    invoke-direct/range {v7 .. v17}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v18, v1, v6

    .line 94
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v17, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v16, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v6, v17

    invoke-direct/range {v6 .. v16}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v17, v1, v5

    .line 96
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v16, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object/from16 v5, v16

    invoke-direct/range {v5 .. v15}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v16, v1, v4

    .line 98
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v15, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v14, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object v4, v15

    invoke-direct/range {v4 .. v14}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v15, v1, v3

    .line 100
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    new-instance v14, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    move-object v3, v14

    invoke-direct/range {v3 .. v13}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;-><init>(Lpl/mkrstudio/truefootball3/enums/Shots;Lpl/mkrstudio/truefootball3/enums/Dribbling;Lpl/mkrstudio/truefootball3/enums/Tackling;Lpl/mkrstudio/truefootball3/enums/Passes;Lpl/mkrstudio/truefootball3/enums/CornerKicks;Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;Lpl/mkrstudio/truefootball3/enums/Captain;Lpl/mkrstudio/truefootball3/enums/Diving;)V

    aput-object v14, v1, v2

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAggression()I
    .locals 1

    .line 420
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->aggression:I

    return v0
.end method

.method public getCloseFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Player;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 142
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    if-ne v2, v3, :cond_0

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 149
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 152
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    return-object p1
.end method

.method public getCloseFreeKickTaker(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Player;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    if-ne v2, v3, :cond_0

    .line 127
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 132
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 135
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    return-object p1
.end method

.method public getConcentration()I
    .locals 1

    .line 428
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->concentration:I

    return v0
.end method

.method public getCornerKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Player;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 210
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    if-ne v2, v3, :cond_0

    .line 212
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 217
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 220
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    return-object p1
.end method

.method public getCornerKickTaker(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Player;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    if-ne v2, v3, :cond_0

    .line 195
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 200
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    return-object p1
.end method

.method public getFarFreeKickPenaltyAreaPlayer(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Player;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 176
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    if-ne v2, v3, :cond_0

    .line 178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 186
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    return-object p1
.end method

.method public getFarFreeKickTaker(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Player;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 159
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    if-ne v2, v3, :cond_0

    .line 161
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    return-object p1
.end method

.method public getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;
    .locals 1

    .line 372
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->formation:Lpl/mkrstudio/truefootball3/objects/Formation;

    return-object v0
.end method

.method public getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;
    .locals 1

    .line 380
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->gameplay:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    return-object v0
.end method

.method public getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;
    .locals 1

    .line 412
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    return-object v0
.end method

.method public getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;
    .locals 1

    .line 404
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->offsideTraps:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    return-object v0
.end method

.method public getParametersAfterCloseFreeKick(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Player;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lineup",
            "taker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 229
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0xb

    if-ge v1, v4, :cond_2

    .line 232
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_1

    .line 233
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 p1, 0xa

    const/4 v1, 0x5

    if-eqz p2, :cond_3

    if-lt v2, p1, :cond_3

    .line 241
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->INCREDIBLY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    if-ge v2, v1, :cond_5

    :cond_4
    const/16 p2, 0x9

    if-lt v2, p2, :cond_6

    .line 243
    :cond_5
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_6
    const/4 p2, 0x7

    if-lt v2, p2, :cond_7

    .line 245
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_7
    if-lt v2, v1, :cond_8

    .line 247
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_8
    const/4 p2, 0x3

    if-lt v2, p2, :cond_9

    .line 249
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    .line 251
    :cond_9
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    :goto_2
    if-lt v2, p1, :cond_a

    .line 255
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_a
    const/16 p1, 0x8

    if-lt v2, p1, :cond_b

    .line 257
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_b
    const/4 p1, 0x6

    if-lt v2, p1, :cond_c

    .line 259
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_c
    if-lt v2, v1, :cond_d

    .line 261
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_d
    const/4 p1, 0x4

    if-lt v2, p1, :cond_e

    .line 263
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    .line 265
    :cond_e
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    .line 268
    :goto_3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getParametersAfterCornerKick(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Player;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lineup",
            "taker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 327
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0xb

    if-ge v1, v4, :cond_2

    .line 330
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 p1, 0xa

    const/4 v1, 0x5

    if-eqz p2, :cond_3

    if-lt v2, p1, :cond_3

    .line 339
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->INCREDIBLY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    if-ge v2, v1, :cond_5

    :cond_4
    const/16 p2, 0x9

    if-lt v2, p2, :cond_6

    .line 341
    :cond_5
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_6
    const/4 p2, 0x7

    if-lt v2, p2, :cond_7

    .line 343
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_7
    if-lt v2, v1, :cond_8

    .line 345
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_8
    const/4 p2, 0x3

    if-lt v2, p2, :cond_9

    .line 347
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    .line 349
    :cond_9
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    :goto_2
    if-lt v2, p1, :cond_a

    .line 353
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_a
    const/16 p1, 0x8

    if-lt v2, p1, :cond_b

    .line 355
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_b
    const/4 p1, 0x6

    if-lt v2, p1, :cond_c

    .line 357
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_c
    if-lt v2, v1, :cond_d

    .line 359
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_d
    const/4 p1, 0x4

    if-lt v2, p1, :cond_e

    .line 361
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    .line 363
    :cond_e
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    .line 366
    :goto_3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getParametersAfterFarFreeKick(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Player;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lineup",
            "taker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 278
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0xb

    if-ge v1, v4, :cond_2

    .line 281
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_1

    .line 282
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-nez v1, :cond_1

    const/4 p2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 p1, 0xa

    const/4 v1, 0x5

    if-eqz p2, :cond_3

    if-lt v2, p1, :cond_3

    .line 290
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->INCREDIBLY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    if-ge v2, v1, :cond_5

    :cond_4
    const/16 p2, 0x9

    if-lt v2, p2, :cond_6

    .line 292
    :cond_5
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_6
    const/4 p2, 0x7

    if-lt v2, p2, :cond_7

    .line 294
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_7
    if-lt v2, v1, :cond_8

    .line 296
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    :cond_8
    const/4 p2, 0x3

    if-lt v2, p2, :cond_9

    .line 298
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    goto :goto_2

    .line 300
    :cond_9
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    :goto_2
    if-lt v2, p1, :cond_a

    .line 304
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->INCREDIBLY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_a
    const/16 p1, 0x8

    if-lt v2, p1, :cond_b

    .line 306
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_b
    const/4 p1, 0x6

    if-lt v2, p1, :cond_c

    .line 308
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_c
    if-lt v2, v1, :cond_d

    .line 310
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    :cond_d
    const/4 p1, 0x4

    if-lt v2, p1, :cond_e

    .line 312
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_3

    .line 314
    :cond_e
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    .line 317
    :goto_3
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPenaltyKickTaker(Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Player;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Player;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 108
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPenaltyKicks()Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    if-ne v2, v3, :cond_0

    .line 110
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    return-object p1
.end method

.method public getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;
    .locals 1

    .line 388
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->pressing:Lpl/mkrstudio/truefootball3/enums/Pressing;

    return-object v0
.end method

.method public getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;
    .locals 1

    .line 396
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->timeWasting:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    return-object v0
.end method

.method public setAggression(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aggression"
        }
    .end annotation

    .line 424
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->aggression:I

    return-void
.end method

.method public setConcentration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "concentration"
        }
    .end annotation

    .line 432
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->concentration:I

    return-void
.end method

.method public setFormation(Lpl/mkrstudio/truefootball3/objects/Formation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formation"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->formation:Lpl/mkrstudio/truefootball3/objects/Formation;

    return-void
.end method

.method public setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameplay"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->gameplay:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    return-void
.end method

.method public setIndividualOrders([Lpl/mkrstudio/truefootball3/objects/IndividualOrders;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "individualOrders"
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->individualOrders:[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    return-void
.end method

.method public setOffsideTraps(Lpl/mkrstudio/truefootball3/enums/OffsideTraps;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsideTraps"
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->offsideTraps:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    return-void
.end method

.method public setPressing(Lpl/mkrstudio/truefootball3/enums/Pressing;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressing"
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->pressing:Lpl/mkrstudio/truefootball3/enums/Pressing;

    return-void
.end method

.method public setTimeWasting(Lpl/mkrstudio/truefootball3/enums/TimeWasting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeWasting"
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Tactics;->timeWasting:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    return-void
.end method
