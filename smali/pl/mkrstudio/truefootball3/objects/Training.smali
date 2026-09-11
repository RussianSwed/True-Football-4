.class public Lpl/mkrstudio/truefootball3/objects/Training;
.super Ljava/lang/Object;
.source "Training.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static AI_TRAINING:Lpl/mkrstudio/truefootball3/objects/Training; = null

.field private static final serialVersionUID:J = 0x665fd0bf49ca08eaL


# instance fields
.field campBeginDate:Ljava/lang/String;

.field campEndDate:Ljava/lang/String;

.field campPlanned:Lpl/mkrstudio/truefootball3/objects/CampPlace;

.field currentCamp:Lpl/mkrstudio/truefootball3/objects/CampPlace;

.field trainingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TrainingResult;",
            ">;"
        }
    .end annotation
.end field

.field trainingSettings:Lpl/mkrstudio/truefootball3/objects/TrainingSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Training;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Training;-><init>()V

    sput-object v0, Lpl/mkrstudio/truefootball3/objects/Training;->AI_TRAINING:Lpl/mkrstudio/truefootball3/objects/Training;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingResults:Ljava/util/List;

    .line 26
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingSettings:Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    return-void
.end method


# virtual methods
.method public addTrainingResult(Lpl/mkrstudio/truefootball3/objects/TrainingResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trainingResult"
        }
    .end annotation

    .line 252
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingResults:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canGoOnCamp(Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "friendlies",
            "competitions",
            "chosenTeam",
            "time"
        }
    .end annotation

    .line 258
    invoke-virtual {p0, p1, p2, p3, p4}, Lpl/mkrstudio/truefootball3/objects/Training;->getPossibleCampStartDates(Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getCampBeginDate()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campBeginDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCampEndDate()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campEndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCampPlanned()Lpl/mkrstudio/truefootball3/objects/CampPlace;
    .locals 1

    .line 313
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campPlanned:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    return-object v0
.end method

.method public getCurrentCamp()Lpl/mkrstudio/truefootball3/objects/CampPlace;
    .locals 1

    .line 321
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->currentCamp:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    return-object v0
.end method

.method public getPossibleCampEndDates(Lpl/mkrstudio/truefootball3/objects/Time;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "date",
            "dates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    :goto_0
    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getDayAfterDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 276
    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPossibleCampStartDates(Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "friendlies",
            "competitions",
            "chosenTeam",
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Friendlies;",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/16 v6, 0x1e

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 263
    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getAvailableDatesForFriendlyMatches(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;I)Ljava/util/List;

    move-result-object p1

    .line 264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 265
    invoke-virtual {p0, p4, p3, p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getPossibleCampEndDates(Lpl/mkrstudio/truefootball3/objects/Time;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 266
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTrainingResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TrainingResult;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingResults:Ljava/util/List;

    return-object v0
.end method

.method public getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;
    .locals 1

    .line 289
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingSettings:Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    return-object v0
.end method

.method public isCampPlanned()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campPlanned:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnCamp()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->currentCamp:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chosenTeam",
            "clubstaff",
            "time"
        }
    .end annotation

    .line 30
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campBeginDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campPlanned:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Training;->currentCamp:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    .line 32
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campPlanned:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    .line 34
    :cond_0
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campEndDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->currentCamp:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    .line 36
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campBeginDate:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campEndDate:Ljava/lang/String;

    .line 39
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lpl/mkrstudio/truefootball3/objects/Training;->updateTrainingResults(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Time;)V

    return-void
.end method

.method public setCampBeginDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "campBeginDate"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campBeginDate:Ljava/lang/String;

    return-void
.end method

.method public setCampEndDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "campEndDate"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campEndDate:Ljava/lang/String;

    return-void
.end method

.method public setCampPlanned(Lpl/mkrstudio/truefootball3/objects/CampPlace;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "campPlanned"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->campPlanned:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    return-void
.end method

.method public setCurrentCamp(Lpl/mkrstudio/truefootball3/objects/CampPlace;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentCamp"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->currentCamp:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    return-void
.end method

.method public setTrainingResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trainingResults"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TrainingResult;",
            ">;)V"
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingResults:Ljava/util/List;

    return-void
.end method

.method public setTrainingSettings(Lpl/mkrstudio/truefootball3/objects/TrainingSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trainingSettings"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingSettings:Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    return-void
.end method

.method train(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "player",
            "clubstaff",
            "time"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 60
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getGoalkeeping()B

    move-result v2

    const/16 v3, 0x63

    if-gez v2, :cond_0

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setGoalkeeping(B)V

    .line 61
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getGoalkeeping()B

    move-result v2

    if-le v2, v3, :cond_1

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setGoalkeeping(B)V

    .line 62
    :cond_1
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 64
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v4

    const/16 v5, 0x5f

    const/16 v6, 0x3c

    const/16 v7, 0x50

    const/16 v8, 0x5a

    const/16 v9, 0x32

    const/16 v10, 0x46

    const/16 v11, 0x1e

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-le v4, v5, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v4

    if-le v4, v8, :cond_3

    const/4 v4, 0x4

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v4

    if-le v4, v7, :cond_4

    const/4 v4, 0x7

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v4

    if-le v4, v10, :cond_5

    const/16 v4, 0xa

    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v4

    if-le v4, v6, :cond_6

    const/16 v4, 0xe

    goto :goto_0

    .line 74
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v4

    if-le v4, v9, :cond_7

    const/16 v4, 0x12

    goto :goto_0

    .line 76
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v4

    const/16 v14, 0x28

    if-le v4, v14, :cond_8

    const/16 v4, 0x15

    goto :goto_0

    .line 78
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v4

    if-le v4, v11, :cond_9

    const/16 v4, 0x18

    goto :goto_0

    :cond_9
    const/16 v4, 0x1e

    .line 81
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v14

    const/4 v15, 0x5

    const/4 v3, 0x3

    if-le v14, v8, :cond_a

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getAge()B

    move-result v14

    add-int/lit8 v14, v14, -0x10

    div-int/2addr v14, v15

    :goto_1
    add-int/2addr v4, v14

    goto :goto_2

    .line 82
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v14

    if-le v14, v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getAge()B

    move-result v14

    add-int/lit8 v14, v14, -0x10

    div-int/2addr v14, v12

    goto :goto_1

    .line 83
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v14

    if-le v14, v10, :cond_c

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getAge()B

    move-result v14

    add-int/lit8 v14, v14, -0x10

    div-int/2addr v14, v3

    goto :goto_1

    .line 84
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getAge()B

    move-result v14

    add-int/lit8 v14, v14, -0x10

    div-int/2addr v14, v13

    goto :goto_1

    :goto_2
    if-le v4, v9, :cond_d

    const/16 v4, 0x32

    :cond_d
    const/4 v14, 0x0

    .line 89
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Training;->isOnCamp()Z

    move-result v16

    if-eqz v16, :cond_e

    int-to-float v4, v4

    const/high16 v14, 0x40800000    # 4.0f

    .line 90
    iget-object v12, v0, Lpl/mkrstudio/truefootball3/objects/Training;->currentCamp:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->getWeather()F

    move-result v12

    mul-float v12, v12, v14

    sub-float/2addr v4, v12

    float-to-int v4, v4

    .line 91
    iget-object v12, v0, Lpl/mkrstudio/truefootball3/objects/Training;->currentCamp:Lpl/mkrstudio/truefootball3/objects/CampPlace;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->getWeather()F

    move-result v12

    float-to-int v14, v12

    if-ge v4, v15, :cond_f

    goto :goto_3

    :cond_e
    if-ge v4, v15, :cond_f

    :goto_3
    const/4 v4, 0x5

    .line 98
    :cond_f
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-nez v4, :cond_35

    .line 99
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v15

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-eq v15, v13, :cond_35

    .line 100
    iget-object v13, v0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingSettings:Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    invoke-virtual {v13, v14}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSum(I)I

    move-result v13

    .line 103
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v15

    if-le v15, v5, :cond_10

    const/16 v6, 0x19

    goto :goto_4

    .line 105
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v5

    if-le v5, v8, :cond_11

    const/16 v6, 0x1f

    goto :goto_4

    .line 107
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v5

    if-le v5, v7, :cond_12

    const/16 v6, 0x25

    goto :goto_4

    .line 109
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v5

    if-le v5, v10, :cond_13

    const/16 v6, 0x2b

    goto :goto_4

    .line 111
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v5

    if-le v5, v6, :cond_14

    const/16 v6, 0x31

    goto :goto_4

    .line 113
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v5

    if-le v5, v9, :cond_15

    const/16 v6, 0x37

    goto :goto_4

    .line 115
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v5

    const/16 v7, 0x28

    if-le v5, v7, :cond_16

    const/16 v6, 0x3b

    goto :goto_4

    .line 117
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v5

    if-le v5, v11, :cond_17

    const/16 v6, 0x41

    goto :goto_4

    .line 119
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v5

    const/16 v7, 0x14

    if-le v5, v7, :cond_18

    const/16 v6, 0x46

    goto :goto_4

    .line 121
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPotential()I

    move-result v5

    const/16 v7, 0xa

    if-le v5, v7, :cond_19

    const/16 v6, 0x4b

    .line 124
    :cond_19
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getAge()B

    move-result v5

    add-int/lit8 v5, v5, -0x10

    div-int/2addr v5, v3

    add-int/2addr v6, v5

    .line 126
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const-string v6, ""

    if-ge v5, v13, :cond_1a

    .line 132
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingSettings:Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    invoke-virtual {v2, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v5, v7, v14}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getParameter(II)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    goto :goto_5

    .line 135
    :cond_1a
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/Training;->trainingSettings:Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    invoke-virtual {v2, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v5, v7, v14}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getReversedParameter(II)Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    :goto_5
    const-string v8, "ballPossession"

    .line 138
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "charisma"

    const-string v10, "heading"

    const-string v13, "crossing"

    const-string v14, "shooting"

    const-string v15, "passing"

    const-string v11, "strength"

    const-string v12, "technique"

    if-eqz v8, :cond_1e

    .line 139
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_1b

    move-object v6, v15

    :cond_1b
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1c

    move-object v6, v12

    :cond_1c
    const/4 v8, 0x2

    if-ne v5, v8, :cond_1d

    move-object v6, v13

    :cond_1d
    :goto_6
    const/4 v8, 0x2

    goto/16 :goto_8

    :cond_1e
    const-string v8, "setPieces"

    .line 146
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 147
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_1f

    move-object v6, v14

    :cond_1f
    const/4 v8, 0x1

    if-ne v5, v8, :cond_20

    move-object v6, v12

    :cond_20
    const/4 v8, 0x2

    if-ne v5, v8, :cond_2a

    move-object v6, v13

    goto :goto_8

    :cond_21
    const/4 v8, 0x2

    const-string v3, "fitness"

    .line 154
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 155
    invoke-virtual {v2, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_22

    const-string v6, "agility"

    :cond_22
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1d

    :goto_7
    move-object v6, v11

    goto :goto_6

    :cond_23
    const-string v3, "defending"

    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x3

    .line 161
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_24

    const-string v6, "tackling"

    :cond_24
    const/4 v3, 0x1

    if-ne v5, v3, :cond_25

    move-object v6, v10

    :cond_25
    const/4 v3, 0x2

    if-ne v5, v3, :cond_1d

    goto :goto_7

    :cond_26
    const-string v3, "attacking"

    .line 168
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x3

    .line 169
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_27

    move-object v6, v12

    :cond_27
    const/4 v8, 0x1

    if-ne v5, v8, :cond_28

    move-object v6, v10

    :cond_28
    const/4 v8, 0x2

    if-ne v5, v8, :cond_2a

    move-object v6, v14

    goto :goto_8

    :cond_29
    const/4 v8, 0x2

    const-string v3, "mental"

    .line 176
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object v6, v9

    .line 180
    :cond_2a
    :goto_8
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_9
    const/4 v13, -0x1

    goto/16 :goto_a

    :sswitch_0
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_9

    :cond_2b
    const/16 v13, 0x8

    goto :goto_a

    :sswitch_1
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_9

    :cond_2c
    const/4 v13, 0x7

    goto :goto_a

    :sswitch_2
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_9

    :cond_2d
    const/4 v13, 0x6

    goto :goto_a

    :sswitch_3
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_9

    :cond_2e
    const/4 v13, 0x5

    goto :goto_a

    :sswitch_4
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_9

    :cond_2f
    const/4 v13, 0x4

    goto :goto_a

    :sswitch_5
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_9

    :cond_30
    const/4 v13, 0x3

    goto :goto_a

    :sswitch_6
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_9

    :cond_31
    const/4 v13, 0x2

    goto :goto_a

    :sswitch_7
    const-string v3, "tackling"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_9

    :cond_32
    const/4 v13, 0x1

    goto :goto_a

    :sswitch_8
    const-string v3, "agility"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_9

    :cond_33
    const/4 v13, 0x0

    :goto_a
    packed-switch v13, :pswitch_data_0

    goto :goto_b

    .line 206
    :pswitch_0
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeCrossing(I)V

    goto :goto_b

    .line 198
    :pswitch_1
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeStrength(I)V

    goto :goto_b

    .line 194
    :pswitch_2
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeTechnique(I)V

    goto :goto_b

    .line 182
    :pswitch_3
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeCharisma(I)V

    goto :goto_b

    .line 190
    :pswitch_4
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeHeading(I)V

    goto :goto_b

    .line 186
    :pswitch_5
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeShooting(I)V

    goto :goto_b

    .line 214
    :pswitch_6
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changePassing(I)V

    goto :goto_b

    .line 202
    :pswitch_7
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeTackling(I)V

    goto :goto_b

    .line 210
    :pswitch_8
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeAgility(I)V

    .line 218
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v3, v5, :cond_34

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 219
    :cond_34
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/TrainingResult;

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    int-to-byte v9, v7

    invoke-direct {v3, v5, v6, v8, v9}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Training;->addTrainingResult(Lpl/mkrstudio/truefootball3/objects/TrainingResult;)V

    const/4 v3, 0x4

    .line 221
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_35

    .line 222
    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeSkill(I)V

    .line 223
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/TrainingResult;

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "overall"

    invoke-direct {v3, v5, v7, v6, v9}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Training;->addTrainingResult(Lpl/mkrstudio/truefootball3/objects/TrainingResult;)V

    :cond_35
    if-nez v4, :cond_37

    .line 227
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v3, v4, :cond_37

    const/16 v3, 0x64

    .line 228
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_37

    const/16 v3, 0x64

    .line 230
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 232
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getGoalkeepingTrainingLevel()B

    move-result v4

    if-le v4, v3, :cond_36

    const/4 v12, 0x1

    goto :goto_c

    :cond_36
    const/4 v12, -0x1

    .line 237
    :goto_c
    invoke-virtual {v1, v12}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->changeGoalkeeping(I)V

    .line 238
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/TrainingResult;

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v5

    int-to-byte v6, v12

    const-string v7, "goalkeeping"

    invoke-direct {v3, v4, v7, v5, v6}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Training;->addTrainingResult(Lpl/mkrstudio/truefootball3/objects/TrainingResult;)V

    const/4 v3, 0x4

    .line 240
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-eqz v2, :cond_37

    .line 241
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getSkill()B

    move-result v2

    add-int/2addr v2, v12

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setSkill(B)V

    .line 242
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/TrainingResult;

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "overall"

    invoke-direct {v2, v3, v5, v4, v6}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Training;->addTrainingResult(Lpl/mkrstudio/truefootball3/objects/TrainingResult;)V

    .line 247
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getSkill()B

    move-result v2

    const/16 v3, 0x63

    if-le v2, v3, :cond_38

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setSkill(B)V

    .line 248
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getSkill()B

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_39

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->setSkill(B)V

    :cond_39
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f060fbb -> :sswitch_8
        -0x33b4eef5 -> :sswitch_7
        -0x2f3591cf -> :sswitch_6
        -0x1494549d -> :sswitch_5
        0x2f677e02 -> :sswitch_4
        0x559a7094 -> :sswitch_3
        0x57997650 -> :sswitch_2
        0x6ac55041 -> :sswitch_1
        0x7e8f17a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateTrainingResults(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chosenTeam",
            "clubstaff",
            "time"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 44
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 45
    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {p0, v0, p2, p3}, Lpl/mkrstudio/truefootball3/objects/Training;->train(Lpl/mkrstudio/truefootball3/objects/PlayerExtended;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_0

    :cond_0
    return-void
.end method
