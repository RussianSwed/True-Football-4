.class public Lpl/mkrstudio/truefootball3/objects/Youth;
.super Ljava/lang/Object;
.source "Youth.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x9399f762c01d49bL


# instance fields
.field firstNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation
.end field

.field lastNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;"
        }
    .end annotation
.end field

.field nationalities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;"
        }
    .end annotation
.end field

.field youthTeams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/YouthTeam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "chosenTeam",
            "clubStaff",
            "firstNames",
            "lastNames",
            "nationalities",
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/ClubStaff;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Name;",
            ">;>;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/NationChance;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->firstNames:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->lastNames:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    .line 25
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->firstNames:Ljava/util/HashMap;

    .line 26
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->lastNames:Ljava/util/HashMap;

    .line 27
    iput-object p5, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->nationalities:Ljava/util/List;

    .line 28
    new-instance p3, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    sget-object p4, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;->U21:Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getYouthTrainers()Ljava/util/List;

    move-result-object p5

    const/4 v1, 0x0

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    invoke-direct {p3, p4, p5}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;-><init>(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    new-instance p4, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    sget-object p5, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;->U19:Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getYouthTrainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    invoke-direct {p4, p5, v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;-><init>(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    new-instance p4, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    sget-object p5, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;->U17:Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getYouthTrainers()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    invoke-direct {p4, p5, p2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;-><init>(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 33
    invoke-direct {p0, p3, p1, p6}, Lpl/mkrstudio/truefootball3/objects/Youth;->generatePlayers(Lpl/mkrstudio/truefootball3/objects/YouthTeam;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateSkill(ILpl/mkrstudio/truefootball3/objects/Team;)B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "age",
            "chosenTeam"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 100
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p2

    const/high16 v1, 0x41200000    # 10.0f

    mul-float p2, p2, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float/2addr p2, v1

    float-to-int p2, p2

    const/16 v1, 0x14

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p2, p2, 0x14

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 p2, p2, 0xa

    :cond_1
    :goto_0
    const/16 v1, 0x12

    const/16 v2, 0xa

    if-le p1, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0x11

    if-le p1, v1, :cond_3

    const-wide v3, 0x4055400000000000L    # 85.0

    int-to-double p1, p2

    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 109
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    :goto_1
    double-to-int p2, p1

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x10

    if-le p1, v1, :cond_4

    const-wide v3, 0x4052c00000000000L    # 75.0

    int-to-double p1, p2

    const-wide v5, 0x3fe3333333333333L    # 0.6

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-le p1, v1, :cond_5

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    int-to-double p1, p2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_1

    :cond_5
    const/16 v1, 0xe

    if-le p1, v1, :cond_6

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    int-to-double p1, p2

    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_1

    :cond_6
    const/16 v1, 0xd

    if-le p1, v1, :cond_7

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    int-to-double p1, p2

    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_1

    :cond_7
    const/16 v1, 0xc

    if-le p1, v1, :cond_8

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    int-to-double p1, p2

    const-wide v5, 0x3fd6666666666666L    # 0.35

    .line 119
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_1

    :cond_8
    const/16 v1, 0xb

    if-le p1, v1, :cond_9

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    int-to-double p1, p2

    const-wide v5, 0x3fd3333333333333L    # 0.3

    .line 121
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto/16 :goto_1

    :cond_9
    if-le p1, v2, :cond_a

    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    int-to-double p1, p2

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    .line 123
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto/16 :goto_1

    :cond_a
    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    int-to-double p1, p2

    const-wide v5, 0x3fc999999999999aL    # 0.2

    .line 125
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v5

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto/16 :goto_1

    :goto_2
    sub-int/2addr p2, v2

    .line 127
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x1

    if-ge p1, p2, :cond_b

    const/4 p1, 0x1

    :cond_b
    return p1
.end method

.method private generatePlayers(Lpl/mkrstudio/truefootball3/objects/YouthTeam;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "youthTeam",
            "chosenTeam",
            "time"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getType()Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual {p0, v0, v2, p3, p2}, Lpl/mkrstudio/truefootball3/objects/Youth;->generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 61
    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getRandomNationality()Ljava/lang/String;
    .locals 5

    .line 134
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 136
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->nationalities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/NationChance;

    .line 137
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getChance()B

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 141
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->nationalities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/NationChance;

    .line 142
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getChance()B

    move-result v4

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_1

    .line 144
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/NationChance;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addYouthTeam(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;Lpl/mkrstudio/truefootball3/objects/YouthTrainer;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ytt",
            "youthTrainer",
            "chosenTeam",
            "time"
        }
    .end annotation

    .line 194
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Youth;->existsTeam(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-direct {v0, p1, p2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;-><init>(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V

    .line 196
    invoke-direct {p0, v0, p3, p4}, Lpl/mkrstudio/truefootball3/objects/Youth;->generatePlayers(Lpl/mkrstudio/truefootball3/objects/YouthTeam;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 197
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public canAddTeam()Z
    .locals 2

    .line 188
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public containsPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 159
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 160
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public existsTeam(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 203
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getType()Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public generateYouthPlayer(ILpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/YouthPlayer;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "age",
            "position",
            "time",
            "chosenTeam"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 80
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;-><init>()V

    int-to-byte v2, p1

    .line 82
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setAge(B)V

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    .line 84
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Youth;->getRandomNationality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setNationality(Ljava/lang/String;)V

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->firstNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getNationality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomFirstName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->lastNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getNationality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/mkrstudio/truefootball3/helpers/NameHelper;->getRandomLastName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, p2}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setPosition(Lpl/mkrstudio/truefootball3/enums/Position;)V

    const/16 p2, 0x64

    .line 88
    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {v1, p2}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setPotential(B)V

    .line 89
    invoke-direct {p0, p1, p4}, Lpl/mkrstudio/truefootball3/objects/Youth;->calculateSkill(ILpl/mkrstudio/truefootball3/objects/Team;)B

    move-result p1

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setSkill(B)V

    .line 91
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getAge()B

    move-result p1

    const/16 p2, 0x12

    if-le p1, p2, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getSkill()B

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_0

    .line 92
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getSkill()B

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p3, p1, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->generateContract(II)Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p1

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    :cond_0
    return-object v1
.end method

.method public getMonthlyCost()J
    .locals 5

    .line 151
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainer()Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getFinancing()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getNextYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)Lpl/mkrstudio/truefootball3/objects/YouthTeam;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youthTeam"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 68
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getAgeLimit()B

    move-result v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getAgeLimit()B

    move-result v4

    if-le v3, v4, :cond_0

    if-nez v1, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getAgeLimit()B

    move-result v3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getAgeLimit()B

    move-result v4

    if-ge v3, v4, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getPlayerExtended(Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)Lpl/mkrstudio/truefootball3/objects/PlayerExtended;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "youthPlayer",
            "team",
            "time"
        }
    .end annotation

    .line 181
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-direct {v0, p1, p2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;-><init>(Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 182
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p2

    if-nez p2, :cond_0

    .line 183
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getSkill()B

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p3, p1, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->generateContract(II)Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setCurrentContract(Lpl/mkrstudio/truefootball3/objects/Contract;)V

    :cond_0
    return-object v0
.end method

.method public getYouthTeams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/YouthTeam;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    return-object v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 39
    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainPlayers(Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removePlayer(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 171
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 172
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setYouthTeams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youthTeams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/YouthTeam;",
            ">;)V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Youth;->youthTeams:Ljava/util/List;

    return-void
.end method
