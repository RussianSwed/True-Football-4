.class public Lpl/mkrstudio/truefootball3/objects/YouthTeam;
.super Ljava/lang/Object;
.source "YouthTeam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2667f5905e1504f1L


# instance fields
.field ageLimit:B

.field currentFinancing:B

.field trainer:Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

.field trainingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TrainingResult;",
            ">;"
        }
    .end annotation
.end field

.field type:Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

.field youthPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/YouthPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "youthTrainer"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->youthPlayers:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainingResults:Ljava/util/List;

    const/16 v0, 0x32

    .line 21
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->currentFinancing:B

    .line 24
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->type:Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    .line 25
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainer:Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    .line 26
    invoke-virtual {p2, p0}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 27
    sget-object p2, Lpl/mkrstudio/truefootball3/objects/YouthTeam$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$YouthTeamType:[I

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    .line 48
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x8

    .line 46
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x7

    .line 44
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x15

    .line 42
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x13

    .line 40
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x11

    .line 38
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xf

    .line 36
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_7
    const/16 p1, 0xd

    .line 34
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_8
    const/16 p1, 0xc

    .line 32
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_9
    const/16 p1, 0xb

    .line 30
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    goto :goto_0

    :pswitch_a
    const/16 p1, 0xa

    .line 28
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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

.method private train(Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "youthPlayer",
            "time"
        }
    .end annotation

    .line 66
    sget-object v0, Lpl/mkrstudio/truefootball3/objects/YouthTeam$1;->$SwitchMap$pl$mkrstudio$truefootball3$enums$YouthTeamType:[I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->type:Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x3bb0f27c    # 0.0054f

    const v2, 0x3d49eecc    # 0.0493f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3c06594b    # 0.0082f

    packed-switch v0, :pswitch_data_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_0
    const v1, 0x3d600d1b    # 0.0547f

    goto :goto_0

    :pswitch_1
    const v1, 0x3d49eecc    # 0.0493f

    goto :goto_0

    :pswitch_2
    const v1, 0x3d27ef9e    # 0.041f

    goto :goto_0

    :pswitch_3
    const v1, 0x3c9c779a    # 0.0191f

    goto :goto_0

    :pswitch_4
    const v1, 0x3c3295ea    # 0.0109f

    goto :goto_0

    :pswitch_5
    const v1, 0x3c06594b    # 0.0082f

    .line 104
    :goto_0
    :pswitch_6
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getOverallLevel()B

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    mul-float v1, v1, v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getPotential()B

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float v1, v1, v0

    .line 106
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 107
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    float-to-double v6, v1

    const-string v1, "overall"

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->changeSkill(I)V

    .line 109
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/TrainingResult;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, v1, p2, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->addTrainingResult(Lpl/mkrstudio/truefootball3/objects/TrainingResult;)V

    goto :goto_1

    :cond_0
    const v4, 0x3c23d70a    # 0.01f

    .line 111
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getPotential()B

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    sub-float/2addr v3, v5

    mul-float v3, v3, v4

    .line 112
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    float-to-double v2, v3

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 113
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->changeSkill(I)V

    .line 114
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/TrainingResult;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, v1, p2, v0}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->addTrainingResult(Lpl/mkrstudio/truefootball3/objects/TrainingResult;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
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

    .line 120
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainingResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainingResults:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainingResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAgeLimit()B
    .locals 1

    .line 148
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    return v0
.end method

.method public getCurrentFinancing()B
    .locals 1

    .line 176
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->currentFinancing:B

    return v0
.end method

.method public getFinancing()J
    .locals 5

    .line 135
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->currentFinancing:B

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    int-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide v1, 0x3fd999999999999aL    # 0.4

    int-to-double v3, v0

    .line 138
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    sub-double/2addr v3, v0

    double-to-long v0, v3

    return-wide v0
.end method

.method public getOverallLevel()B
    .locals 3

    .line 126
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainer:Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->getExperience()B

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-byte v2, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->currentFinancing:B

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/16 v0, 0x63

    if-le v1, v0, :cond_2

    const/16 v1, 0x63

    :cond_2
    int-to-byte v0, v1

    return v0
.end method

.method public getTrainer()Lpl/mkrstudio/truefootball3/objects/YouthTrainer;
    .locals 1

    .line 168
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainer:Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

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

    .line 184
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainingResults:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lpl/mkrstudio/truefootball3/enums/YouthTeamType;
    .locals 1

    .line 156
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->type:Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    return-object v0
.end method

.method public getYouthPlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/YouthPlayer;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->youthPlayers:Ljava/util/List;

    return-object v0
.end method

.method public setAgeLimit(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ageLimit"
        }
    .end annotation

    .line 152
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->ageLimit:B

    return-void
.end method

.method public setCurrentFinancing(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentFinancing"
        }
    .end annotation

    .line 180
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->currentFinancing:B

    return-void
.end method

.method public setTrainer(Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trainer"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainer:Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

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

    .line 188
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->trainingResults:Ljava/util/List;

    return-void
.end method

.method public setType(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->type:Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    return-void
.end method

.method public setYouthPlayers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youthPlayers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/YouthPlayer;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->youthPlayers:Ljava/util/List;

    return-void
.end method

.method public trainPlayers(Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->youthPlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 60
    invoke-direct {p0, v1, p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->train(Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/Time;)V

    goto :goto_0

    :cond_0
    return-void
.end method
