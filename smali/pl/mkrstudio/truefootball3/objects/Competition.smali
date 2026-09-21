.class public Lpl/mkrstudio/truefootball3/objects/Competition;
.super Lpl/mkrstudio/truefootball3/objects/UserCompetition;
.source "Competition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1966eaca0a77fcd1L


# instance fields
.field apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field assistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field cleanSheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field protected competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

.field protected competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

.field currentWeek:B

.field finished:Z

.field fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

.field monthlyApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field orderedTeams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation
.end field

.field playerRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerRating;",
            ">;"
        }
    .end annotation
.end field

.field redCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field scorers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field

.field teams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation
.end field

.field year:I

.field yellowCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/UserCompetition;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->finished:Z

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->teams:Ljava/util/List;

    .line 44
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->currentWeek:B

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->scorers:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->apps:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->monthlyApps:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->yellowCards:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->redCards:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->assistants:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->cleanSheets:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->playerRatings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addPossibleTrophies(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;I)V
    .locals 9
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
            "competitions",
            "world",
            "time",
            "chosenTeam",
            "context",
            "code"
        }
    .end annotation

    .line 717
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p4, :cond_15

    .line 719
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy.MM.dd"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 724
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    .line 726
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isChampionCompetition()Z

    move-result p3

    const/high16 p6, 0x3f000000    # 0.5f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_2

    .line 729
    invoke-virtual {p0, p2, p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getMaxSkill(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result p2

    add-float/2addr p2, v0

    sub-float/2addr p2, p1

    .line 732
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CHI"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    .line 733
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PAR"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    .line 734
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "URU"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    .line 735
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BOL"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    .line 736
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "VEN"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    .line 737
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ECU"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p6, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    const/high16 p1, 0x41c80000    # 25.0f

    mul-float p2, p2, p1

    mul-float p2, p2, p6

    float-to-int v7, p2

    move-object v3, p0

    move-object v4, p5

    move-object v8, p4

    .line 742
    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->saveTrophy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILpl/mkrstudio/truefootball3/objects/Team;)V

    goto/16 :goto_8

    .line 744
    :cond_2
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isChampionsCupWinnerCompetition()Z

    move-result p3

    const-string v1, "south_america"

    const-string v2, "north_america"

    const-string v3, "asia"

    const-string v4, "africa"

    const-string v7, "europe"

    if-eqz p3, :cond_a

    .line 745
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WORLD_CUP"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/high16 p2, 0x41300000    # 11.0f

    sub-float/2addr p2, p1

    const/high16 p1, 0x420c0000    # 35.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_1
    move v7, p1

    goto/16 :goto_3

    .line 753
    :cond_3
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/high16 p2, 0x41200000    # 10.0f

    .line 754
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    goto/16 :goto_2

    .line 755
    :cond_4
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "oceania"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/high16 p2, 0x40a00000    # 5.0f

    .line 756
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    goto :goto_2

    .line 757
    :cond_5
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 p3, 0x40e00000    # 7.0f

    if-eqz p2, :cond_6

    .line 758
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    goto :goto_2

    .line 759
    :cond_6
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 760
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    goto :goto_2

    .line 761
    :cond_7
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 762
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    goto :goto_2

    .line 763
    :cond_8
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/high16 p2, 0x41080000    # 8.5f

    .line 764
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    :cond_9
    :goto_2
    add-float/2addr p6, v0

    sub-float/2addr p6, p1

    const/high16 p1, 0x42480000    # 50.0f

    mul-float p6, p6, p1

    float-to-int p1, p6

    goto/16 :goto_1

    :goto_3
    move-object v3, p0

    move-object v4, p5

    move-object v8, p4

    .line 770
    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->saveTrophy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILpl/mkrstudio/truefootball3/objects/Team;)V

    goto/16 :goto_8

    .line 771
    :cond_a
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isFederationCupWinnerCompetition()Z

    move-result p3

    if-eqz p3, :cond_10

    .line 774
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/high16 p2, 0x41100000    # 9.0f

    .line 775
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    goto :goto_4

    .line 776
    :cond_b
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/high16 p3, 0x40c00000    # 6.0f

    if-eqz p2, :cond_c

    .line 777
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    goto :goto_4

    .line 778
    :cond_c
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 779
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    goto :goto_4

    .line 780
    :cond_d
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 781
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    goto :goto_4

    .line 782
    :cond_e
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/high16 p2, 0x40f00000    # 7.5f

    .line 783
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p6

    :cond_f
    :goto_4
    add-float/2addr p6, v0

    sub-float/2addr p6, p1

    const/high16 p1, 0x42200000    # 40.0f

    mul-float p6, p6, p1

    float-to-int v7, p6

    move-object v3, p0

    move-object v4, p5

    move-object v8, p4

    .line 787
    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->saveTrophy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILpl/mkrstudio/truefootball3/objects/Team;)V

    goto :goto_8

    .line 788
    :cond_10
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isCupWinnerCompetition()Z

    move-result p3

    if-eqz p3, :cond_15

    .line 790
    invoke-virtual {p0, p2, p4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getMaxSkill(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result p2

    add-float/2addr p2, v0

    sub-float/2addr p2, p1

    const/high16 p1, 0x41700000    # 15.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 793
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AFR_SUP"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    :goto_5
    mul-int/lit8 p1, p1, 0x3

    :cond_11
    :goto_6
    move v7, p1

    goto :goto_7

    .line 794
    :cond_12
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "EUR_SUP"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    goto :goto_5

    .line 795
    :cond_13
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SAM_SUP"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_5

    .line 796
    :cond_14
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SUP"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    mul-int/lit8 p1, p1, 0x1

    goto :goto_6

    :goto_7
    move-object v3, p0

    move-object v4, p5

    move-object v8, p4

    .line 797
    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->saveTrophy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILpl/mkrstudio/truefootball3/objects/Team;)V

    :cond_15
    :goto_8
    return-void
.end method

.method public addRating(Lpl/mkrstudio/truefootball3/objects/Player;F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "rating"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->playerRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    .line 1053
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1054
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 1055
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 1056
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result v1

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v6

    sub-int/2addr v6, v5

    int-to-float v6, v6

    mul-float v1, v1, v6

    add-float/2addr v1, p2

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v2, v1}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->setRating(F)V

    const/4 v1, 0x1

    goto :goto_0

    .line 1060
    :cond_2
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->monthlyApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 1061
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    if-ne v6, p1, :cond_3

    .line 1062
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getMonthlyRating()F

    move-result v6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v7

    sub-int/2addr v7, v5

    int-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v6, p2

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v6, v4

    invoke-virtual {v2, v6}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->setMonthlyRating(F)V

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    .line 1068
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    invoke-direct {v0, p1, p2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;F)V

    .line 1069
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->playerRatings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V
    .locals 4
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
            "player",
            "matchEventType",
            "howMany",
            "history",
            "chosenTeam",
            "transfers"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->recordNationalStat(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;I)V

    .line 869
    invoke-virtual {p6, p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {p6, p1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object p6

    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p6

    if-ne p6, p5, :cond_1

    goto :goto_0

    .line 874
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p6

    if-ne p6, p5, :cond_1

    :goto_0
    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    .line 879
    :goto_1
    sget-object p6, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, p6, :cond_7

    .line 881
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->scorers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 882
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 883
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p6, p4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 p4, 0x1

    goto :goto_2

    :cond_3
    if-nez p4, :cond_4

    .line 888
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 889
    iget-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->scorers:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p5, :cond_28

    .line 894
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->userScorers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 895
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p5

    if-ne p5, p1, :cond_5

    .line 896
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p4, p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    if-nez v1, :cond_28

    .line 901
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 902
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->userScorers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 905
    :cond_7
    sget-object p6, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, p6, :cond_d

    .line 907
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->assistants:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p6, 0x0

    :cond_8
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 908
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne v3, p1, :cond_8

    .line 909
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p6

    add-int/2addr p6, p3

    invoke-virtual {v0, p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 p6, 0x1

    goto :goto_4

    :cond_9
    if-nez p6, :cond_a

    .line 914
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 915
    iget-object p6, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->assistants:Ljava/util/List;

    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz p5, :cond_28

    .line 920
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalAssistants()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 921
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p6

    if-ne p6, p1, :cond_b

    .line 922
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p6

    add-int/2addr p6, p3

    invoke-virtual {p5, p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    if-nez v1, :cond_28

    .line 927
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 928
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalAssistants()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 931
    :cond_d
    sget-object p6, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, p6, :cond_13

    .line 933
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->cleanSheets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p6, 0x0

    :cond_e
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 934
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne v3, p1, :cond_e

    .line 935
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p6

    add-int/2addr p6, p3

    invoke-virtual {v0, p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 p6, 0x1

    goto :goto_6

    :cond_f
    if-nez p6, :cond_10

    .line 940
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 941
    iget-object p6, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->cleanSheets:Ljava/util/List;

    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz p5, :cond_28

    .line 946
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCleanSheets()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_11
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 947
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p6

    if-ne p6, p1, :cond_11

    .line 948
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p6

    add-int/2addr p6, p3

    invoke-virtual {p5, p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 v1, 0x1

    goto :goto_7

    :cond_12
    if-nez v1, :cond_28

    .line 953
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 954
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCleanSheets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 957
    :cond_13
    sget-object p6, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, p6, :cond_19

    .line 959
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->yellowCards:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p6, 0x0

    :cond_14
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 960
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne v3, p1, :cond_14

    .line 961
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p6

    add-int/2addr p6, p3

    invoke-virtual {v0, p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 p6, 0x1

    goto :goto_8

    :cond_15
    if-nez p6, :cond_16

    .line 966
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 967
    iget-object p6, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->yellowCards:Ljava/util/List;

    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz p5, :cond_28

    .line 972
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalYellowCards()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_17
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 973
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p6

    if-ne p6, p1, :cond_17

    .line 974
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p6

    add-int/2addr p6, p3

    invoke-virtual {p5, p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 v1, 0x1

    goto :goto_9

    :cond_18
    if-nez v1, :cond_28

    .line 979
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 980
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalYellowCards()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 983
    :cond_19
    sget-object p6, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, p6, :cond_1f

    .line 985
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->redCards:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p6, 0x0

    :cond_1a
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 986
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne v3, p1, :cond_1a

    .line 987
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p6

    add-int/2addr p6, p3

    invoke-virtual {v0, p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 p6, 0x1

    goto :goto_a

    :cond_1b
    if-nez p6, :cond_1c

    .line 992
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 993
    iget-object p6, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->redCards:Ljava/util/List;

    invoke-interface {p6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    if-eqz p5, :cond_28

    .line 998
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalRedCards()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1d
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 999
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p6

    if-ne p6, p1, :cond_1d

    .line 1000
    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p6

    add-int/2addr p6, p3

    invoke-virtual {p5, p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 v1, 0x1

    goto :goto_b

    :cond_1e
    if-nez v1, :cond_28

    .line 1005
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 1006
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalRedCards()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_1f
    if-nez p2, :cond_28

    .line 1011
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->apps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :cond_20
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 1012
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    if-ne v0, p1, :cond_20

    .line 1013
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p6, p4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 p4, 0x1

    goto :goto_c

    :cond_21
    if-nez p4, :cond_22

    .line 1018
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 1019
    iget-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->apps:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_22
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->monthlyApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :cond_23
    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_24

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 1024
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    if-ne v0, p1, :cond_23

    .line 1025
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p6, p4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 p4, 0x1

    goto :goto_d

    :cond_24
    if-nez p4, :cond_25

    .line 1030
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 1031
    iget-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->monthlyApps:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    if-eqz p5, :cond_28

    .line 1036
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->userApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_26
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 1037
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p5

    if-ne p5, p1, :cond_26

    .line 1038
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p4, p5}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->setResult(I)V

    const/4 v1, 0x1

    goto :goto_e

    :cond_27
    if-nez v1, :cond_28

    .line 1043
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-direct {p2, p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;I)V

    .line 1044
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->userApps:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_f
    return-void
.end method

.method public clearUnnecessaryData()V
    .locals 1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->scorers:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->apps:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->monthlyApps:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->yellowCards:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->redCards:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->assistants:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->cleanSheets:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->playerRatings:Ljava/util/List;

    return-void
.end method

.method public getAllTeams()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 75
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 76
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 77
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 79
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 1285
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getAssistants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->assistants:Ljava/util/List;

    return-object v0
.end method

.method public getCleanSheets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->cleanSheets:Ljava/util/List;

    return-object v0
.end method

.method public getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;
    .locals 1

    .line 1261
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    return-object v0
.end method

.method public getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;
    .locals 1

    .line 1265
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    return-object v0
.end method

.method public getCurrentWeek()B
    .locals 1

    .line 1273
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->currentWeek:B

    return v0
.end method

.method getEndingMessages(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competitions",
            "time",
            "chosenTeam",
            "inbox"
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_4

    .line 806
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isChampionCompetition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2, p3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildChampionMessage(Ljava/lang/String;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {p4, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_0

    .line 809
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isChampionsCupWinnerCompetition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WORLD_CUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildChampionsCupMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {p4, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_0

    .line 816
    :cond_1
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildChampionsCupMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {p4, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_0

    .line 819
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isFederationCupWinnerCompetition()Z

    move-result v0

    const-string v2, "_SUP"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 820
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildFederationCupMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {p4, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_0

    .line 822
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->isCupWinnerCompetition()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 823
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildDomesticCupMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v0

    invoke-virtual {p4, v0}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 827
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 829
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getGameOverPlaces()[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 830
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getGameOverPlaces()[B

    move-result-object v3

    aget-byte v3, v3, v1

    if-gt v3, v0, :cond_5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getGameOverPlaces()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-gt v0, v3, :cond_5

    .line 831
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildGameOverMessage(Ljava/lang/String;Z)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v3

    invoke-virtual {p4, v3}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 836
    :goto_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getRelegationPlaces()[B

    move-result-object v4

    if-eqz v4, :cond_6

    .line 837
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getRelegationPlaces()[B

    move-result-object v4

    aget-byte v4, v4, v1

    if-gt v4, v0, :cond_6

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getRelegationPlaces()[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-gt v0, v4, :cond_6

    .line 838
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildRelegationMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v4

    invoke-virtual {p4, v4}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 842
    :cond_6
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getPromotionPlaces()[B

    move-result-object v4

    if-eqz v4, :cond_7

    .line 843
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getPromotionPlaces()[B

    move-result-object v4

    aget-byte v4, v4, v1

    if-gt v4, v0, :cond_7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getPromotionPlaces()[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-gt v0, v4, :cond_7

    .line 844
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPromotionMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v4

    invoke-virtual {p4, v4}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 848
    :cond_7
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getPromotionOrStayingPlaces()[B

    move-result-object v4

    if-eqz v4, :cond_8

    .line 849
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getPromotionOrStayingPlaces()[B

    move-result-object v4

    aget-byte v4, v4, v1

    if-gt v4, v0, :cond_8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getPromotionOrStayingPlaces()[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-gt v0, v4, :cond_8

    .line 850
    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getLeague(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getLeague(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v5

    invoke-virtual {v5, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_8

    .line 851
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildPromotionMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v4

    invoke-virtual {p4, v4}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 856
    :cond_8
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getRelegationOrStayingPlaces()[B

    move-result-object v4

    if-eqz v4, :cond_9

    .line 857
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getRelegationOrStayingPlaces()[B

    move-result-object v4

    aget-byte v1, v4, v1

    if-gt v1, v0, :cond_9

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getRelegationOrStayingPlaces()[B

    move-result-object v1

    aget-byte v1, v1, v2

    if-gt v0, v1, :cond_9

    .line 858
    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getLeague(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getLeague(Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    if-le v0, p1, :cond_9

    .line 859
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildRelegationMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p1

    invoke-virtual {p4, p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_9
    return v3
.end method

.method public getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;
    .locals 1

    .line 1253
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    return-object v0
.end method

.method getMaxSkill(Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Team;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "world",
            "chosenTeam"
        }
    .end annotation

    .line 680
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "CAN"

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 681
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object p2

    .line 682
    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p1, p2

    .line 686
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 687
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 688
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p2

    goto :goto_2

    :cond_3
    return p2
.end method

.method public getMonthlyApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 1317
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->monthlyApps:Ljava/util/List;

    return-object v0
.end method

.method public getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    const-string v0, "_2_1"

    const-string v1, "_1_1"

    .line 411
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/OrderType;->GREEK:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GRE_PLAYOFF2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->teams:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 563
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 412
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    .line 414
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/OrderType;->SOUTH_AMERICAN:Lpl/mkrstudio/truefootball3/enums/OrderType;

    const-string v4, "ROM_2B"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v2, v3, :cond_4

    .line 415
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 416
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x31

    if-ne v3, v8, :cond_2

    .line 421
    :try_start_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_1_2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_1_2"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {v0, v3, v6, v1}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 423
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 428
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->teams:Ljava/util/List;

    return-object p1

    .line 431
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x32

    if-ne v1, v3, :cond_3

    .line 433
    :try_start_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_2_2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_2_2"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    int-to-byte v0, v0

    invoke-static {v1, v3, v6, v0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 440
    :catch_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->teams:Ljava/util/List;

    return-object p1

    :cond_3
    move-object v0, v5

    goto/16 :goto_5

    .line 445
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->SCOTTISH:Lpl/mkrstudio/truefootball3/enums/OrderType;

    const-string v2, "FIN_1"

    if-ne v0, v1, :cond_10

    .line 446
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SCO_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v5

    .line 447
    :goto_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WAL_1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 448
    :cond_6
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UKR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "UKR_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 449
    :cond_7
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AUT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "AUT_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 450
    :cond_8
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UZB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "UZB_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 451
    :cond_9
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "AND_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 452
    :cond_a
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VIE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "VIE_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 453
    :cond_b
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NIR_1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 454
    :cond_c
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NIR_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 455
    :cond_d
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, p1, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 456
    :cond_e
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FIN_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 457
    :cond_f
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BEL_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v0, "BEL_2"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    .line 458
    :cond_10
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->KOREAN:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_11

    const-string v0, "KOR_1"

    .line 459
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    .line 460
    :cond_11
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->SLOVAK:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_12

    const-string v0, "SVK_1"

    .line 461
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    .line 462
    :cond_12
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->POLISH:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_26

    .line 463
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "POL_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_13
    move-object v0, v5

    .line 464
    :goto_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SRB_1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0, p1, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 465
    :cond_14
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LTU_1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0, p1, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 466
    :cond_15
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LTU_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, p1, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 467
    :cond_16
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BIH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "BIH_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 468
    :cond_17
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BUL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "BUL_1"

    if-eqz v1, :cond_18

    invoke-virtual {p0, p1, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 469
    :cond_18
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v7, "DEN_1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, p1, v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 470
    :cond_19
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v7, "DEN_2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, p1, v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 471
    :cond_1a
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v7, "DEN_3"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, p1, v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 472
    :cond_1b
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v7, "SVN_2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "SVN_2"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 473
    :cond_1c
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ARM"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, "ARM_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 474
    :cond_1d
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v7, "FIN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0, p1, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 475
    :cond_1e
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MLT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "MLT_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 476
    :cond_1f
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SRB_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "SRB_2"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 477
    :cond_20
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CZE_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "CZE_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 478
    :cond_21
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0, p1, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 479
    :cond_22
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ROM_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v0, "ROM_2"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 480
    :cond_23
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISL_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v0, "ISL_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 481
    :cond_24
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KUW_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v0, "KUW_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 482
    :cond_25
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJK_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v0, "TJK_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    .line 483
    :cond_26
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->ROMANIAN:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_27

    const-string v0, "ROM_1"

    .line 484
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    .line 485
    :cond_27
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->ROMANIAN_2A:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_28

    const-string v0, "ROM_2A"

    .line 486
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    .line 487
    :cond_28
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->ROMANIAN_2B:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_29

    .line 488
    invoke-virtual {p0, p1, v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    .line 489
    :cond_29
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->CYPRIOT:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_2f

    .line 490
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CYP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "CYP_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_2a
    move-object v0, v5

    .line 491
    :goto_3
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GIB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v0, "GIB_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 492
    :cond_2b
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v0, "LIB_1"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 493
    :cond_2c
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GRE_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0, p1, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 494
    :cond_2d
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HKG_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0, p1, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 495
    :cond_2e
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GRE_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v0, "GRE_2"

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 496
    :cond_2f
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->ISRAELI:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_31

    .line 497
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISR_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_30
    move-object v0, v5

    .line 498
    :goto_4
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISR_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0, p1, v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 500
    :cond_31
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->KAZAKH:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_32

    const-string v0, "KAZ_1"

    .line 501
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 502
    :cond_32
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/OrderType;->GREEK:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v0, v1, :cond_33

    .line 503
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getGreekPlayoffTable(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 505
    :cond_33
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {p0, v6, v0}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getStandardLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v0

    .line 508
    :cond_34
    :goto_5
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->teams:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 509
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->teams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 510
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 511
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 514
    :cond_36
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPastCompetitions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 515
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 516
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 517
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 521
    :cond_39
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 523
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v5

    :cond_3b
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 524
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    move-object v3, v7

    goto :goto_9

    :cond_3c
    if-eqz v3, :cond_3a

    .line 529
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 533
    :cond_3d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEL_2B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 537
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SRB_2B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 538
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEN_1B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 539
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEN_2B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 540
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEN_3B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 541
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUL_1C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 542
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 543
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ROM_2C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 544
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJK_1B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 545
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MDA_2A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 546
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MDA_2B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 547
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MDA_3A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 548
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MDA_3B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 549
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CZE_1B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 550
    :cond_3e
    :goto_a
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_40

    .line 551
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " II"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x5

    if-ge v6, v0, :cond_3f

    .line 552
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 555
    :cond_40
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 556
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 557
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_b

    .line 559
    :cond_41
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    return-object p1
.end method

.method public getOrderedTeams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 1277
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    return-object v0
.end method

.method public getPlayerApps(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "t"
        }
    .end annotation

    .line 139
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->apps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 140
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 141
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getPlayerMonthlyApps(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "t"
        }
    .end annotation

    .line 148
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->monthlyApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 149
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 150
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getPlayerRatings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerRating;",
            ">;"
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->playerRatings:Ljava/util/List;

    return-object v0
.end method

.method public getRatingForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->playerRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    .line 87
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 88
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result p1

    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public getRedCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->redCards:Ljava/util/List;

    return-object v0
.end method

.method public getScorers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 1281
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->scorers:Ljava/util/List;

    return-object v0
.end method

.method public getStatsForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "t",
            "et"
        }
    .end annotation

    .line 94
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v0, 0x0

    if-ne p3, p2, :cond_2

    .line 95
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->scorers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 96
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 97
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p1

    return p1

    :cond_1
    return v0

    .line 102
    :cond_2
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p3, p2, :cond_5

    .line 103
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->assistants:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 104
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 105
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p1

    return p1

    :cond_4
    return v0

    .line 110
    :cond_5
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p3, p2, :cond_8

    .line 111
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->yellowCards:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 112
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 113
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p1

    return p1

    :cond_7
    return v0

    .line 118
    :cond_8
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p3, p2, :cond_b

    .line 119
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->redCards:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 120
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p1, :cond_9

    .line 121
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p1

    return p1

    :cond_a
    return v0

    .line 126
    :cond_b
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p3, p2, :cond_d

    .line 127
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->cleanSheets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 128
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    if-ne v1, p1, :cond_c

    .line 129
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result p1

    return p1

    :cond_d
    return v0
.end method

.method getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "competitions",
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Competitions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;",
            ">;"
        }
    .end annotation

    .line 394
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 395
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    .line 397
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPastCompetitions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 398
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYear()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 401
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYear()I

    move-result v0

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 406
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr p2, v1

    int-to-byte p2, p2

    invoke-static {p0, v0, p1, p2}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTeamDraws(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "calendar"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 602
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 603
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    if-eqz p2, :cond_2

    .line 604
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lpl/mkrstudio/truefootball3/objects/Time;->isDateAfter(Ljava/util/Calendar;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 606
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v4, p1, :cond_3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 607
    :cond_3
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    if-ne v4, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getTeamGoalsLost(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "calendar"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 650
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 651
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    if-eqz p2, :cond_2

    .line 652
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lpl/mkrstudio/truefootball3/objects/Time;->isDateAfter(Ljava/util/Calendar;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 653
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 654
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 655
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 656
    :cond_3
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 657
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    goto :goto_1

    :cond_4
    return v1
.end method

.method public getTeamGoalsScored(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "calendar"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 634
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 635
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    if-eqz p2, :cond_2

    .line 636
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lpl/mkrstudio/truefootball3/objects/Time;->isDateAfter(Ljava/util/Calendar;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 637
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 638
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 639
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 640
    :cond_3
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 641
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v3

    goto :goto_1

    :cond_4
    return v1
.end method

.method public getTeamLosses(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "calendar"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 618
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 619
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    if-eqz p2, :cond_2

    .line 620
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lpl/mkrstudio/truefootball3/objects/Time;->isDateAfter(Ljava/util/Calendar;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 621
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 622
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v4, p1, :cond_3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 623
    :cond_3
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    if-lt v4, v5, :cond_5

    :cond_4
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    if-ge v4, v3, :cond_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public getTeamMatches(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "calendar"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 571
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 572
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    if-eqz p2, :cond_2

    .line 573
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lpl/mkrstudio/truefootball3/objects/Time;->isDateAfter(Ljava/util/Calendar;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 575
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v4, p1, :cond_3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v3, p1, :cond_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public getTeamWins(Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/Calendar;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "team",
            "calendar"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 585
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 586
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Match;

    if-eqz p2, :cond_2

    .line 587
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lpl/mkrstudio/truefootball3/objects/Time;->isDateAfter(Ljava/util/Calendar;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 589
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v4, p1, :cond_3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 590
    :cond_3
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v5

    if-gt v4, v5, :cond_5

    :cond_4
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v3

    if-le v4, v3, :cond_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public getTeams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation

    .line 1249
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->teams:Ljava/util/List;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 1269
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->year:I

    return v0
.end method

.method public getYearString(Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chosenTeam"
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getYear()I

    move-result v0

    .line 1075
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getYear()I

    move-result v1

    const-string v2, "/"

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_0

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v4, v5, :cond_1

    .line 1078
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object p1

    const-string v4, ".01.01"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1079
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1082
    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MEX_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1083
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MEX_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1084
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CRC_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1085
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CRC_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1086
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CRC_PLAYOFF1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1087
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CRC_PLAYOFF2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1088
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MEX_2_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1089
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MEX_2_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1090
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MEX_PLAYOFF3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1091
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MEX_PLAYOFF4"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1092
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MEX_PLAYOFF5"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1093
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "GUA_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1094
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "GUA_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1095
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "GUA_PLAYOFF1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1096
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "GUA_PLAYOFF2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1097
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "PAN_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1098
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "PAN_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1099
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "PAN_PLAYOFF1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1100
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "PAN_PLAYOFF2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1101
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "HON_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1102
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "HON_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1103
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "HON_PLAYOFF1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1104
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "HON_PLAYOFF2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1105
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SLV_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1106
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SLV_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1107
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SLV_PLAYOFF1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1108
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SLV_PLAYOFF2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1109
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NCA_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1110
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NCA_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1111
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NCA_PLAYOFF1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1112
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NCA_PLAYOFF2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1113
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BLZ_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1114
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BLZ_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1115
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BLZ_PLAYOFF1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1116
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BLZ_PLAYOFF2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1117
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CHI_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1118
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CHI_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1119
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "URU_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1120
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "URU_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1121
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BOL_1_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1122
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BOL_1_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1123
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MEX_PLAYOFF1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1124
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MEX_PLAYOFF2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1125
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "AND_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1126
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "AND_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1127
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SCO_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1128
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SCO_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1129
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NIR_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1130
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NIR_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1131
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NIR_2A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1132
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "NIR_2B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1133
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "FIN_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1134
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "FIN_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1135
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "FIN_2A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1136
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "FIN_2B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1137
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BEL_2A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1138
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BEL_2B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1139
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SRB_2A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1140
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SRB_2B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1141
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "WAL_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1142
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "WAL_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1143
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "POL_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1144
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "POL_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1145
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "VIE_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1146
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "VIE_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1147
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "AUT_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1148
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "AUT_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1149
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ARM_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1150
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ARM_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1151
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SRB_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1152
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SRB_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1153
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CZE_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1154
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CZE_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1155
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BUL_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1156
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BUL_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1157
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BUL_1C"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1158
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ROM_2A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1159
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ROM_2B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1160
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ROM_2C"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1161
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MLT_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1162
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "MLT_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1163
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BIH_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1164
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BIH_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1165
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DEN_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1166
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DEN_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1167
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DEN_2A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1168
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DEN_2B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1169
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DEN_3A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1170
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DEN_3B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1171
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CYP_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1172
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "CYP_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1173
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "GRE_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1174
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "GRE_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1175
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "HKG_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1176
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "HKG_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1177
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "GIB_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1178
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "GIB_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1179
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "LIB_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1180
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "LIB_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1181
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ISR_1A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1182
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ISR_1B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1183
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ISR_2A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1184
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ISR_2B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1185
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "LTU_2A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1186
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "LTU_2B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1187
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SVN_2A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1188
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "SVN_2B"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1189
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method public getYellowCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;"
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->yellowCards:Ljava/util/List;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1197
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->finished:Z

    return v0
.end method

.method payPrizesAndBonuses(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "competitions",
            "time",
            "finances",
            "chosenTeam"
        }
    .end annotation

    .line 664
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 665
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getMoneyPrize()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 666
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getMoneyPrize()I

    move-result v1

    int-to-double v1, v1

    rsub-int/lit8 v0, v0, 0xa

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    div-double/2addr v1, v3

    double-to-long v0, v1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 668
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v0

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "continentalFederationPrizes"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v6, "domesticFederationPrizes"

    :goto_1
    invoke-direct {v2, v3, v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p3, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 669
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    neg-long v0, v0

    const-wide/16 v4, 0x1f4

    mul-long v0, v0, v4

    const-string v4, "bonusesForPlayers"

    invoke-direct {v2, v3, v0, v1, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p3, v2}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 672
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getTvRights()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrder(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 673
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getTvRights()I

    move-result p4

    mul-int/lit16 p4, p4, 0x3e8

    int-to-long v0, p4

    const-string p4, "tvRights"

    invoke-direct {p1, p2, v0, v1, p4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    :cond_3
    return-void
.end method

.method saveTrophy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "seasonCode",
            "currentRealDate",
            "points",
            "chosenTeam"
        }
    .end annotation

    const-string v0, "tf3Trophies"

    const/4 v1, 0x0

    .line 694
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "trophies_size"

    .line 697
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const-string v5, "trophies_"

    const/4 v6, 0x1

    const-string v7, ";"

    if-ge v1, v3, :cond_1

    .line 699
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 700
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 705
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";false"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/2addr v3, v6

    .line 707
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "new_trophy"

    .line 708
    invoke-interface {v0, p2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 712
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 713
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTrophies()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lpl/mkrstudio/truefootball3/objects/Trophy;

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYearString(Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p5}, Lpl/mkrstudio/truefootball3/objects/Trophy;-><init>(Ljava/lang/String;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 1233
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->apps:Ljava/util/List;

    return-void
.end method

.method public setAssistants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assistants"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 1245
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->assistants:Ljava/util/List;

    return-void
.end method

.method public setCleanSheets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cleanSheets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 1313
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->cleanSheets:Ljava/util/List;

    return-void
.end method

.method public setCompetitionInfo(Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitionInfo"
        }
    .end annotation

    .line 1209
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    return-void
.end method

.method public setCompetitionType(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitionType"
        }
    .end annotation

    .line 1213
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionType:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    return-void
.end method

.method public setCurrentWeek(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentWeek"
        }
    .end annotation

    .line 1221
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->currentWeek:B

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

    .line 1201
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->finished:Z

    return-void
.end method

.method public setFixtures(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixtures"
        }
    .end annotation

    .line 1257
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->fixtures:Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    return-void
.end method

.method public setMonthlyApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monthlyApps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 1321
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->monthlyApps:Ljava/util/List;

    return-void
.end method

.method public setOrderedTeams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderedTeams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)V"
        }
    .end annotation

    .line 1225
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->orderedTeams:Ljava/util/List;

    return-void
.end method

.method public setPlayerRatings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerRatings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerRating;",
            ">;)V"
        }
    .end annotation

    .line 1309
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->playerRatings:Ljava/util/List;

    return-void
.end method

.method public setRedCards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redCards"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 1241
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->redCards:Ljava/util/List;

    return-void
.end method

.method public setScorers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scorers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 1229
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->scorers:Ljava/util/List;

    return-void
.end method

.method public setTeams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;)V"
        }
    .end annotation

    .line 1205
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->teams:Ljava/util/List;

    return-void
.end method

.method public setYear(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "year"
        }
    .end annotation

    .line 1217
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->year:I

    return-void
.end method

.method public setYellowCards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "yellowCards"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;)V"
        }
    .end annotation

    .line 1237
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Competition;->yellowCards:Ljava/util/List;

    return-void
.end method

.method public updateFixtures(Landroid/content/Context;ZZLpl/mkrstudio/truefootball3/objects/UserData;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "canFinish",
            "start",
            "ud"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    .line 157
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getQueries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_3e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;

    .line 159
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->ADD_TEAMS:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const-string v3, "next_time"

    const-string v4, "first_time"

    if-ne v0, v2, :cond_1a

    .line 161
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 162
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsToCompetition(Lpl/mkrstudio/truefootball3/objects/Competition;ZLpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/History;)V

    .line 163
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 164
    :cond_1
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 165
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsToCompetition(Lpl/mkrstudio/truefootball3/objects/Competition;ZLpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/History;)V

    .line 166
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 167
    :cond_2
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "second_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isSecondSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 169
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsToCompetition(Lpl/mkrstudio/truefootball3/objects/Competition;ZLpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/History;)V

    .line 171
    :cond_3
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 172
    :cond_4
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "third_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isThirdSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    .line 174
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsToCompetition(Lpl/mkrstudio/truefootball3/objects/Competition;ZLpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/History;)V

    .line 176
    :cond_5
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 177
    :cond_6
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "asian_continental_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForAsianContinentalCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 179
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 180
    :cond_7
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "african_continental_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForAfricanContinentalCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 182
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 183
    :cond_8
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "south_american_continental_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 184
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForSouthAmericanContinentalCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 185
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 186
    :cond_9
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "asian_champions_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForAsianChampionsCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 188
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 189
    :cond_a
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "african_champions_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 190
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForAfricanChampionsCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 191
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 192
    :cond_b
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "american_league"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 193
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForAmericanLeague(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 194
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 195
    :cond_c
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "american_playoff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 196
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForAmericanPlayoff(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 197
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 198
    :cond_d
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "north_american_champions_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 199
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForNorthAmericanChampionsCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 200
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 201
    :cond_e
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "north_american_continental_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 202
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForNorthAmericanContinentalCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 203
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 204
    :cond_f
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "south_american_champions_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 205
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForSouthAmericanChampionsCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 206
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 207
    :cond_10
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "european_champions_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 208
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForEuropeanChampionsCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;ILandroid/content/Context;)V

    .line 209
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 210
    :cond_11
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "european_federation_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 211
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForEuropeanFederationCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;ILandroid/content/Context;)V

    .line 212
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 213
    :cond_12
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "european_community_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 214
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-static {v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->addTeamsForEuropeanCommunityCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 215
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 216
    :cond_13
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "national_teams"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_nt_wc

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-static {v7, v0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addTeams(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;)V

    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    :cond_nt_wc
    const-string v2, "world_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 217
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForWorldCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 218
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 219
    :cond_14
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "oceanian_champions_cup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 220
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForOceanianChampionsCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 221
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 222
    :cond_15
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "peruvian_final"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 223
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v12, v7, v0, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsForPeruvianFinal(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 224
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_1

    .line 225
    :cond_16
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "mexican_2_final"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 226
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-static {v7, v0, v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->addTeamsForMexican2Final(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competitions;Landroid/content/Context;)V

    .line 227
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto :goto_1

    .line 228
    :cond_17
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "mexican_2_league"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 229
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->addTeamsForMexican2League(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/World;Landroid/content/Context;)V

    .line 230
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto :goto_1

    .line 231
    :cond_18
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "super_cup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 232
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionQueryHelper;->addTeamsForSuperCup(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competitions;Ljava/util/ArrayList;Lpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/World;Landroid/content/Context;)V

    .line 233
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto :goto_1

    .line 235
    :cond_19
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    invoke-virtual {v12, v7, v0, v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addTeamsFromOtherCompetition(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;)V

    .line 236
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    .line 239
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->isUseEditedData()Z

    move-result v6

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->generatePlayers(Lpl/mkrstudio/truefootball3/objects/Competition;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/EditedData;Z)V

    goto/16 :goto_0

    .line 241
    :cond_1a
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->WEEK_INFO:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    if-ne v0, v2, :cond_1f

    .line 243
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 244
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 245
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 248
    :cond_1b
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 249
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 250
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1c
    :goto_2
    const/4 v1, 0x1

    :cond_1d
    if-eqz v1, :cond_1e

    .line 258
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v12, v7, v10, v0, v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->addWeek(Lpl/mkrstudio/truefootball3/objects/Competition;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 260
    :cond_1e
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_0

    .line 261
    :cond_1f
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->FIXTURES_INFO:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    if-ne v0, v2, :cond_24

    .line 263
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 264
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 265
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 268
    :cond_20
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 269
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 270
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_21
    const/4 v0, 0x0

    goto :goto_4

    :cond_22
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_23

    .line 277
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    invoke-static {v0, v1, v10, v7, v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getFixtures(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Time;)Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->setFixtures(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;)V

    .line 279
    :cond_23
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_0

    .line 281
    :cond_24
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->PLAY_WEEK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    if-ne v0, v2, :cond_2c

    .line 283
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 284
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 285
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 288
    :cond_25
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 289
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->isFirstSeason(Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 290
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_26
    const/4 v0, 0x0

    goto :goto_6

    :cond_27
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_2b

    .line 297
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    int-to-byte v3, v2

    .line 298
    invoke-virtual {v7, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->setCurrentWeek(B)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_28
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 301
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    const/4 v13, -0x1

    if-ne v5, v13, :cond_28

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-ne v4, v13, :cond_28

    const/4 v3, 0x0

    goto :goto_7

    :cond_29
    if-eqz v3, :cond_3e

    .line 305
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TableType;->ONE_TABLE:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-eq v1, v2, :cond_2a

    .line 308
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v15

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v16

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v17

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v18

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v21

    invoke-virtual/range {v12 .. v21}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->update(ILjava/util/List;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Training;Lpl/mkrstudio/truefootball3/objects/Finances;)V

    .line 309
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 310
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCode()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->addPossibleTrophies(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;I)V

    .line 311
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v3

    invoke-virtual {v7, v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getEndingMessages(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Inbox;)Z

    goto/16 :goto_0

    .line 317
    :cond_2b
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_0

    .line 319
    :cond_2c
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->DATE:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    const/4 v3, 0x5

    if-ne v0, v2, :cond_2d

    .line 320
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 321
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_0

    .line 324
    :cond_2d
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->BLOCK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    if-ne v0, v2, :cond_33

    if-nez p3, :cond_3e

    .line 326
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_2e

    goto/16 :goto_9

    .line 329
    :cond_2e
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    if-eqz v3, :cond_2f

    .line 331
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getQueries()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;

    .line 332
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->isDone()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 333
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v5

    sget-object v13, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->UNBLOCK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    if-ne v5, v13, :cond_30

    .line 334
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v2, 0x1

    goto :goto_8

    :cond_31
    if-nez v2, :cond_32

    goto/16 :goto_9

    .line 343
    :cond_32
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_0

    .line 344
    :cond_33
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->UNBLOCK:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    if-ne v0, v2, :cond_34

    .line 345
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_0

    .line 346
    :cond_34
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->UPDATE_TEAM_GROUP:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    if-ne v0, v2, :cond_35

    .line 347
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->updateTeamGroupsForCountry(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competitions;)V

    .line 348
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    goto/16 :goto_0

    .line 349
    :cond_35
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getType()Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;->DONE:Lpl/mkrstudio/truefootball3/enums/CompetitionQueryType;

    if-ne v0, v2, :cond_0

    if-eqz p2, :cond_0

    .line 350
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "11.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "2023.06"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 352
    :cond_36
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    const-string v4, "10.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "2022.06"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 354
    :cond_37
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    const-string v5, "9.0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "2021.06"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 356
    :cond_38
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "07.01"

    if-eqz v0, :cond_39

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "2024.01"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 358
    :cond_39
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "2023.01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 360
    :cond_3a
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "2022.01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getBeginDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 362
    :cond_3b
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->getParams()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 363
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v7, v0, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->payPrizesAndBonuses(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 364
    invoke-virtual {v7, v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->setFinished(Z)V

    .line 365
    invoke-virtual {v12, v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->setDone(Z)V

    .line 367
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getPastCompetitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getAllTeams()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getOrderedTeams()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 369
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 370
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 371
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d

    .line 372
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/History;->getHistoricalCompetitions()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v5

    invoke-direct {v2, v7, v3, v4, v5}, Lpl/mkrstudio/truefootball3/objects/HistoricalCompetition;-><init>(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/History;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->clearUnnecessaryData()V

    .line 378
    new-instance v0, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;

    invoke-direct {v0, v8}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->setFirstSeason(Z)V

    .line 380
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->setYear(I)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v9, v2}, Lpl/mkrstudio/truefootball3/generators/CompetitionGenerator;->generateCompetition(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/UserData;I)Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    .line 382
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getFutureCompetitions()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 388
    :cond_3e
    :goto_9
    iget-object v0, v7, Lpl/mkrstudio/truefootball3/objects/Competition;->competitionInfo:Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getQueries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 389
    invoke-virtual {v7, v8, v6, v1, v9}, Lpl/mkrstudio/truefootball3/objects/Competition;->updateFixtures(Landroid/content/Context;ZZLpl/mkrstudio/truefootball3/objects/UserData;)V

    :cond_3f
    return-void
.end method
