.class public Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;
.super Ljava/lang/Object;
.source "TeamAnalysis.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3b7f7d69cb4b09e1L


# instance fields
.field private analysisResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/AnalysisResult;",
            ">;"
        }
    .end annotation
.end field

.field private analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field private dateStarted:Ljava/lang/String;

.field private daysLeftToExpire:I

.field private daysLeftToResults:I

.field private finished:Z


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "analyzedTeam",
            "dateStarted"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analysisResults:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 29
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->dateStarted:Ljava/lang/String;

    const/4 p1, 0x7

    .line 30
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->daysLeftToResults:I

    const/16 p1, 0x1e

    .line 31
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->daysLeftToExpire:I

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->finished:Z

    return-void
.end method


# virtual methods
.method public generateResults()V
    .locals 10

    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 38
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/Tactics;

    sget-object v3, Lpl/mkrstudio/truefootball3/objects/Formation;->OFFENSIVE_442:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-direct {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Tactics;-><init>(Lpl/mkrstudio/truefootball3/objects/Formation;)V

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Team;->setTactics(Lpl/mkrstudio/truefootball3/objects/Tactics;)V

    .line 40
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/Formation;->getAllFormations()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/Formation;->getAllFormations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->setFormation(Lpl/mkrstudio/truefootball3/objects/Formation;)V

    .line 42
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    float-to-double v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-wide/high16 v7, 0x4021000000000000L    # 8.5

    cmpl-double v9, v1, v7

    if-ltz v9, :cond_0

    .line 43
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v2

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/2addr v6, v5

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V

    goto/16 :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v7, 0x401e000000000000L    # 7.5

    cmpl-double v9, v1, v7

    if-ltz v9, :cond_1

    .line 45
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v2

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v6

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v7, 0x401a000000000000L    # 6.5

    cmpl-double v5, v1, v7

    if-ltz v5, :cond_2

    .line 47
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v4

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    cmpg-double v5, v1, v7

    if-gtz v5, :cond_3

    .line 49
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v2

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v3

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v2

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V

    .line 54
    :goto_0
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;-><init>()V

    .line 55
    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/Formation;->getAllFormations()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/Formation;->getAllFormations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setFormation(Lpl/mkrstudio/truefootball3/objects/Formation;)V

    .line 57
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v2

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_DEFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v2, v5, :cond_4

    .line 58
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V

    goto :goto_1

    .line 60
    :cond_4
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v2

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V

    .line 63
    :goto_1
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->values()[Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v2

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->values()[Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setOffsideTraps(Lpl/mkrstudio/truefootball3/enums/OffsideTraps;)V

    .line 64
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Pressing;->values()[Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v2

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Pressing;->values()[Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setPressing(Lpl/mkrstudio/truefootball3/enums/Pressing;)V

    .line 65
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->values()[Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v2

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->values()[Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setTimeWasting(Lpl/mkrstudio/truefootball3/enums/TimeWasting;)V

    .line 66
    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setRecommended(Z)V

    .line 68
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-direct {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;-><init>()V

    .line 69
    :goto_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_b

    .line 72
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_a

    .line 75
    :cond_6
    :goto_4
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_9

    .line 78
    :cond_7
    :goto_5
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/enums/Pressing;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_8

    .line 81
    :cond_8
    :goto_6
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_7

    .line 84
    :cond_9
    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setRecommended(Z)V

    .line 86
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analysisResults:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analysisResults:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 82
    :cond_a
    :goto_7
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->values()[Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v4

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->values()[Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setTimeWasting(Lpl/mkrstudio/truefootball3/enums/TimeWasting;)V

    goto :goto_6

    .line 79
    :cond_b
    :goto_8
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Pressing;->values()[Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v4

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Pressing;->values()[Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setPressing(Lpl/mkrstudio/truefootball3/enums/Pressing;)V

    goto :goto_5

    .line 76
    :cond_c
    :goto_9
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->values()[Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v4

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->values()[Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setOffsideTraps(Lpl/mkrstudio/truefootball3/enums/OffsideTraps;)V

    goto/16 :goto_4

    .line 73
    :cond_d
    :goto_a
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v4

    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->values()[Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V

    goto/16 :goto_3

    .line 70
    :cond_e
    :goto_b
    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/Formation;->getAllFormations()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/Formation;->getAllFormations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v2, v4}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->setFormation(Lpl/mkrstudio/truefootball3/objects/Formation;)V

    goto/16 :goto_2
.end method

.method public getAnalysisResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/AnalysisResult;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analysisResults:Ljava/util/List;

    return-object v0
.end method

.method public getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 93
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method public getDateStarted()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->dateStarted:Ljava/lang/String;

    return-object v0
.end method

.method public getDaysLeftToExpire()I
    .locals 1

    .line 117
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->daysLeftToExpire:I

    return v0
.end method

.method public getDaysLeftToResults()I
    .locals 1

    .line 109
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->daysLeftToResults:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->finished:Z

    return v0
.end method

.method public setAnalysisResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "analysisResults"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/AnalysisResult;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analysisResults:Ljava/util/List;

    return-void
.end method

.method public setAnalyzedTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "analyzedTeam"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->analyzedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method

.method public setDateStarted(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateStarted"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->dateStarted:Ljava/lang/String;

    return-void
.end method

.method public setDaysLeftToExpire(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysLeftToExpire"
        }
    .end annotation

    .line 121
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->daysLeftToExpire:I

    return-void
.end method

.method public setDaysLeftToResults(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysLeftToResults"
        }
    .end annotation

    .line 113
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->daysLeftToResults:I

    return-void
.end method

.method public setFinished(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finished"
        }
    .end annotation

    .line 137
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->finished:Z

    return-void
.end method
