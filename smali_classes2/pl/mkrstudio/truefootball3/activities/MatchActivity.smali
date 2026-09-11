.class public Lpl/mkrstudio/truefootball3/activities/MatchActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/MatchActivity$ProgressTask;
    }
.end annotation


# instance fields
.field actionButton:Landroid/widget/ImageView;

.field addedTime:I

.field private afterMotivationalSpeech:Z

.field attendance:I

.field awayPenGoals:B

.field awayPenGoalsDelayed:B

.field public awayRedCards:I

.field awayStartingBench:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field awayStartingLineup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field awayTactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

.field commentaryButton:Landroid/widget/ImageView;

.field commentaryRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;",
            ">;"
        }
    .end annotation
.end field

.field commentaryRecordsListView:Landroid/widget/ListView;

.field commentarySpeed:I

.field commentaryTV:Landroid/widget/TextView;

.field delay:I

.field events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;",
            ">;"
        }
    .end annotation
.end field

.field firstHalfAddedTime:I

.field firstHalfExtraTimeAddedTime:I

.field goalSounds:Z

.field handler:Landroid/os/Handler;

.field home:Z

.field homePenGoals:B

.field homePenGoalsDelayed:B

.field homePossession:I

.field public homeRedCards:I

.field homeStartingBench:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field homeStartingLineup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field homeTactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

.field lineupBeforeSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation
.end field

.field liveMatchesListView:Landroid/widget/ListView;

.field liveResultsButton:Landroid/widget/ImageView;

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field match:Lpl/mkrstudio/truefootball3/objects/Match;

.field matchSpeed:I

.field matchStatsButton:Landroid/widget/ImageView;

.field mediaPlayer:Landroid/media/MediaPlayer;

.field mediaPlayer2:Landroid/media/MediaPlayer;

.field mediaPlayer3:Landroid/media/MediaPlayer;

.field mediaPlayer4:Landroid/media/MediaPlayer;

.field pause:Z

.field penaltiesMode:Z

.field penaltiesResult:Landroid/widget/TextView;

.field playerRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerRating;",
            ">;"
        }
    .end annotation
.end field

.field possessionBar:Lpl/mkrstudio/truefootball3/views/PossessionBar;

.field random:Ljava/util/Random;

.field report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

.field resultTV:Landroid/widget/TextView;

.field rivalShots:I

.field rivalSubbedInPlayerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public runOneMinuteThread:Ljava/lang/Runnable;

.field secondHalfAddedTime:I

.field secondHalfExtraTimeAddedTime:I

.field sound:Z

.field subLimit:I

.field subsButton:Landroid/widget/ImageView;

.field subsMade:B

.field subsMadeByRival:B

.field subsToAnnounce:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tacticsButton:Landroid/widget/ImageView;

.field time:I

.field timeTV:Landroid/widget/TextView;

.field todayMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/LiveMatch;",
            ">;"
        }
    .end annotation
.end field

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;

.field userShots:I

.field viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    const/16 v1, 0x32

    .line 106
    iput v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePossession:I

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playerRatings:Ljava/util/List;

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    .line 117
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->firstHalfAddedTime:I

    .line 118
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->secondHalfAddedTime:I

    .line 119
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->firstHalfExtraTimeAddedTime:I

    .line 120
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->secondHalfExtraTimeAddedTime:I

    .line 121
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->addedTime:I

    const/16 v1, 0x4e2

    .line 139
    iput v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    .line 140
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->delay:I

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 143
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/MatchReport;

    invoke-direct {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    const/4 v1, 0x5

    .line 146
    iput v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    .line 147
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMade:B

    .line 148
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMadeByRival:B

    .line 152
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    .line 157
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeRedCards:I

    .line 158
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayRedCards:I

    .line 160
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->userShots:I

    .line 161
    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->rivalShots:I

    .line 168
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->afterMotivationalSpeech:Z

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryRecords:Ljava/util/List;

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->todayMatches:Ljava/util/List;

    .line 899
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$10;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$10;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->runOneMinuteThread:Ljava/lang/Runnable;

    .line 905
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoals:B

    .line 906
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoals:B

    .line 907
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoalsDelayed:B

    .line 908
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoalsDelayed:B

    .line 909
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penaltiesMode:Z

    .line 1510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->rivalSubbedInPlayerIds:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lpl/mkrstudio/truefootball3/activities/MatchActivity;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->afterMotivationalSpeech:Z

    return p1
.end method

.method private calculateFatigue(ILpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Tactics;)B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "player",
            "tactics"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide v0, 0x3fd999999999999aL    # 0.4

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 1136
    :goto_0
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1137
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1138
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    goto :goto_1

    .line 1139
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1140
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->setTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    :cond_2
    :goto_1
    const-wide v2, -0x4056666666666666L    # -0.05

    .line 1145
    :try_start_0
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getFitness()B

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    add-double/2addr v4, v2

    mul-double v0, v0, v4

    goto :goto_2

    :catch_0
    nop

    .line 1149
    :goto_2
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Gameplay;->OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p1, v2, :cond_3

    const-wide v2, 0x3fef0a3d70a3d70aL    # 0.97

    :goto_3
    mul-double v0, v0, v2

    goto :goto_4

    .line 1151
    :cond_3
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object p1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Gameplay;->DEFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne p1, v2, :cond_4

    const-wide v2, 0x3ff07ae147ae147bL    # 1.03

    goto :goto_3

    .line 1154
    :cond_4
    :goto_4
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result p1

    const/16 v2, 0x4b

    if-le p1, v2, :cond_5

    const-wide p1, 0x3fed70a3d70a3d71L    # 0.92

    :goto_5
    mul-double v0, v0, p1

    goto :goto_6

    .line 1156
    :cond_5
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result p1

    const/16 v2, 0x32

    if-le p1, v2, :cond_6

    const-wide p1, 0x3feeb851eb851eb8L    # 0.96

    goto :goto_5

    .line 1158
    :cond_6
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result p1

    const/16 p2, 0x19

    if-le p1, p2, :cond_7

    const-wide p1, 0x3ff0a3d70a3d70a4L    # 1.04

    goto :goto_5

    :cond_7
    const-wide p1, 0x3ff147ae147ae148L    # 1.08

    goto :goto_5

    .line 1163
    :goto_6
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object p1

    sget-object p2, Lpl/mkrstudio/truefootball3/enums/Pressing;->HIGH:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne p1, p2, :cond_8

    const-wide p1, 0x3ff199999999999aL    # 1.1

    mul-double v0, v0, p1

    .line 1165
    :cond_8
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object p1

    sget-object p2, Lpl/mkrstudio/truefootball3/enums/Pressing;->LOW:Lpl/mkrstudio/truefootball3/enums/Pressing;

    if-ne p1, p2, :cond_9

    const-wide p1, 0x3feccccccccccccdL    # 0.9

    mul-double v0, v0, p1

    .line 1168
    :cond_9
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 1169
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p1, v2

    add-double/2addr v0, p1

    .line 1171
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    int-to-byte p1, p2

    return p1
.end method

.method private changeRatingsAfterMinute()V
    .locals 12

    .line 695
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    .line 697
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v3, -0x42333333    # -0.1f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x1

    const/16 v6, 0xf

    const/4 v7, 0x6

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 698
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v9

    if-nez v9, :cond_0

    .line 699
    iget-object v9, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x6

    :goto_1
    invoke-virtual {v9, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-nez v6, :cond_2

    .line 701
    invoke-virtual {p0, v2, v4, v8}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    :cond_2
    if-ne v6, v5, :cond_0

    .line 703
    invoke-virtual {p0, v2, v3, v8}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    goto :goto_0

    .line 705
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 706
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 707
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v9

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v9, v10, :cond_5

    const/16 v9, 0xf

    goto :goto_3

    :cond_5
    const/4 v9, 0x6

    :goto_3
    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_6

    .line 709
    invoke-virtual {p0, v1, v4, v8}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    :cond_6
    if-ne v2, v5, :cond_4

    .line 711
    invoke-virtual {p0, v1, v3, v8}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private getNumberOfMatches(Lpl/mkrstudio/truefootball3/objects/Player;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 1900
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 1901
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getStatsForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getOverallRating(Lpl/mkrstudio/truefootball3/objects/Player;I)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "matches"
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 1893
    invoke-virtual {v2, p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getRatingForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;)F

    move-result v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getStatsForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    div-float/2addr v1, p1

    return v1
.end method

.method private getPlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/PlayerRating;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playerRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    .line 717
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRating(Lpl/mkrstudio/truefootball3/objects/Player;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playerRatings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    .line 726
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 727
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result p1

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "0.0"

    return-object p1
.end method

.method private initButtons()V
    .locals 3

    const v0, 0x7f080354

    .line 506
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    const v0, 0x7f080341

    .line 507
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    const v0, 0x7f080037

    .line 508
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    const v0, 0x7f080103

    .line 509
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryButton:Landroid/widget/ImageView;

    const v0, 0x7f080203

    .line 510
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchStatsButton:Landroid/widget/ImageView;

    const v0, 0x7f0801e7

    .line 511
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->liveResultsButton:Landroid/widget/ImageView;

    .line 513
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryButton:Landroid/widget/ImageView;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$4;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchStatsButton:Landroid/widget/ImageView;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$5;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$5;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->liveResultsButton:Landroid/widget/ImageView;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$6;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$6;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initActionButton()V

    .line 596
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->todayMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->liveResultsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 598
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->liveResultsButton:Landroid/widget/ImageView;

    const v2, 0x7f070255

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 601
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 603
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryButton:Landroid/widget/ImageView;

    const v2, 0x7f0700e6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 606
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchStatsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 607
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchStatsButton:Landroid/widget/ImageView;

    const v1, 0x7f070272

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private initViews()V
    .locals 13

    const v0, 0x7f080202

    .line 328
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    const v0, 0x7f0801b3

    .line 330
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08007f

    .line 331
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0801b4

    .line 332
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080080

    .line 333
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0802c6

    .line 334
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->resultTV:Landroid/widget/TextView;

    const v4, 0x7f08038d

    .line 335
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->timeTV:Landroid/widget/TextView;

    const v4, 0x7f080100

    .line 336
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    const v4, 0x7f080138

    .line 337
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080104

    .line 338
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f080077

    .line 339
    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 341
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 344
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_0
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->isNeutralGround()Z

    move-result v4

    if-nez v4, :cond_4

    .line 348
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->calculateAttendance(Lpl/mkrstudio/truefootball3/objects/Match;)[I

    move-result-object v4

    const/4 v5, 0x0

    .line 349
    aget v7, v4, v5

    if-gez v7, :cond_1

    .line 350
    aput v5, v4, v5

    :cond_1
    const/4 v7, 0x1

    .line 351
    aget v8, v4, v7

    if-gez v8, :cond_2

    .line 352
    aput v5, v4, v7

    :cond_2
    const/4 v8, 0x2

    .line 353
    aget v9, v4, v8

    if-gez v9, :cond_3

    .line 354
    aput v5, v4, v8

    .line 355
    :cond_3
    aget v5, v4, v5

    aget v7, v4, v7

    add-int/2addr v5, v7

    aget v7, v4, v8

    add-int/2addr v5, v7

    iput v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->attendance:I

    .line 357
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5, p0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->addHomeMatchFinances(Landroid/content/Context;[I)V

    goto :goto_0

    .line 359
    :cond_4
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCapacity()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    add-double/2addr v9, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v9

    double-to-int v4, v4

    iput v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->attendance:I

    .line 360
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->addAwayMatchFinances()V

    .line 363
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0169

    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->attendance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateResult()V

    .line 368
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateTime()V

    .line 370
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 371
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 378
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->drawPossessionBar()V

    .line 379
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initSquads()V

    .line 380
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showSquads()V

    .line 381
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateReport()V

    .line 382
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initListeners()V

    .line 383
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initButtons()V

    .line 384
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initCommentaryRecordList()V

    .line 385
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initLiveResultsList()V

    .line 386
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showCommentaryRecords()V

    return-void
.end method

.method private showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "team"
        }
    .end annotation

    .line 390
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "True Football 3"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 397
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 402
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 403
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 405
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 407
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 408
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private updatePossession()V
    .locals 3

    .line 1099
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getMatchSkill(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v0

    .line 1100
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getMatchSkill(Lpl/mkrstudio/truefootball3/objects/Team;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, v0

    add-float/2addr v0, v1

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 1103
    iget v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePossession:I

    const/4 v2, 0x5

    if-ge v1, v0, :cond_0

    .line 1104
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    .line 1106
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 1110
    :goto_0
    iget v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePossession:I

    add-int/2addr v1, v0

    iput v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePossession:I

    .line 1111
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->drawPossessionBar()V

    return-void
.end method


# virtual methods
.method public action(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "simulate"
        }
    .end annotation

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 1550
    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;

    invoke-direct {v1, p1, p2, p0}, Lpl/mkrstudio/truefootball3/matchEvents/ActionStart;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-le p1, v0, :cond_4

    .line 1552
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    .line 1553
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    if-nez p3, :cond_0

    .line 1555
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1557
    :cond_0
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->simulate()V

    .line 1558
    instance-of v2, v1, Lpl/mkrstudio/truefootball3/matchEvents/ChaosInPenaltyArea;

    if-nez v2, :cond_1

    instance-of v2, v1, Lpl/mkrstudio/truefootball3/matchEvents/DistanceShot;

    if-nez v2, :cond_1

    instance-of v2, v1, Lpl/mkrstudio/truefootball3/matchEvents/HeaderShot;

    if-nez v2, :cond_1

    instance-of v2, v1, Lpl/mkrstudio/truefootball3/matchEvents/HeelShot;

    if-nez v2, :cond_1

    instance-of v2, v1, Lpl/mkrstudio/truefootball3/matchEvents/HighShot;

    if-nez v2, :cond_1

    instance-of v2, v1, Lpl/mkrstudio/truefootball3/matchEvents/LowShot;

    if-nez v2, :cond_1

    instance-of v2, v1, Lpl/mkrstudio/truefootball3/matchEvents/OneOnOne;

    if-nez v2, :cond_1

    instance-of v2, v1, Lpl/mkrstudio/truefootball3/matchEvents/TechnicalShot;

    if-eqz v2, :cond_3

    .line 1559
    :cond_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 1560
    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->userShots:I

    add-int/2addr v2, v0

    iput v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->userShots:I

    goto :goto_1

    .line 1562
    :cond_2
    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->rivalShots:I

    add-int/2addr v2, v0

    iput v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->rivalShots:I

    .line 1566
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getDelay()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    return p2
.end method

.method public addPlayerRating(Lpl/mkrstudio/truefootball3/objects/PlayerRating;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerRating"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playerRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method changeLiveResults()V
    .locals 5

    .line 2244
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->todayMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/LiveMatch;

    .line 2245
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getHomeGoals()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getHomeGoals()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    if-ne v2, v4, :cond_1

    .line 2246
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getCurrentHomeGoals()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->setCurrentHomeGoals(I)V

    .line 2247
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getHomeGoals()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2249
    :cond_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getAwayGoals()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getAwayGoals()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    if-ne v2, v4, :cond_0

    .line 2250
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getCurrentAwayGoals()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->setCurrentAwayGoals(I)V

    .line 2251
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getAwayGoals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2254
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showLiveResults()V

    :cond_3
    return-void
.end method

.method public changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "player",
            "howMuch",
            "addRandom"
        }
    .end annotation

    .line 662
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getPlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    float-to-double p2, p2

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 665
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p2, v0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    add-double/2addr p2, v0

    double-to-float p2, p2

    .line 667
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->setRating(F)V

    .line 668
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result p2

    const/high16 p3, 0x41200000    # 10.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    .line 669
    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->setRating(F)V

    .line 670
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_2

    .line 671
    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->setRating(F)V

    :cond_2
    return-void
.end method

.method public changePlayerRatingsAfterGoal(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    .line 678
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, -0x41000000    # -0.5f

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 679
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 680
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 681
    invoke-virtual {p0, v2, v3, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    goto :goto_0

    .line 683
    :cond_1
    invoke-virtual {p0, v2, v4, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    goto :goto_0

    .line 685
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 686
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 687
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-ne v2, p1, :cond_4

    .line 688
    invoke-virtual {p0, v1, v3, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    goto :goto_1

    .line 690
    :cond_4
    invoke-virtual {p0, v1, v4, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changePlayerRating(Lpl/mkrstudio/truefootball3/objects/Player;FZ)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public closeFreeKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "simulate"
        }
    .end annotation

    .line 1654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 1655
    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;

    invoke-direct {v1, p1, p2, p0}, Lpl/mkrstudio/truefootball3/matchEvents/CloseFreeKick;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt p1, p2, :cond_1

    .line 1657
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    if-nez p3, :cond_0

    .line 1659
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1661
    :cond_0
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->simulate()V

    .line 1663
    :goto_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getDelay()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public cornerKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "simulate"
        }
    .end annotation

    .line 1686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 1687
    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/CornerKick;

    invoke-direct {v1, p1, p2, p0}, Lpl/mkrstudio/truefootball3/matchEvents/CornerKick;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1688
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt p1, p2, :cond_1

    .line 1689
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    if-nez p3, :cond_0

    .line 1691
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1693
    :cond_0
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->simulate()V

    .line 1695
    :goto_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getDelay()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public drawPossessionBar()V
    .locals 2

    const v0, 0x7f08029f

    .line 781
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/PossessionBar;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->possessionBar:Lpl/mkrstudio/truefootball3/views/PossessionBar;

    .line 782
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getTeamColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/PossessionBar;->setFirstColor(I)V

    .line 783
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->possessionBar:Lpl/mkrstudio/truefootball3/views/PossessionBar;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getTeamColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/PossessionBar;->setSecondColor(I)V

    .line 784
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->possessionBar:Lpl/mkrstudio/truefootball3/views/PossessionBar;

    iget v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePossession:I

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/PossessionBar;->setValue(I)V

    .line 785
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->possessionBar:Lpl/mkrstudio/truefootball3/views/PossessionBar;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/PossessionBar;->invalidate()V

    return-void
.end method

.method exhaustPlayers()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1175
    :goto_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v1, v2, :cond_1

    .line 1176
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1177
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1178
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeTactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

    invoke-direct {p0, v1, v2, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->calculateFatigue(ILpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Tactics;)B

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->setCondition(B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1180
    :cond_1
    :goto_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1181
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1182
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1183
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v2

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayTactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

    invoke-direct {p0, v0, v1, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->calculateFatigue(ILpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Tactics;)B

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Player;->setCondition(B)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method exists(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numbers",
            "number"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 246
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public farFreeKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "simulate"
        }
    .end annotation

    .line 1670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 1671
    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;

    invoke-direct {v1, p1, p2, p0}, Lpl/mkrstudio/truefootball3/matchEvents/FarFreeKick;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1672
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    const/4 v0, 0x0

    :goto_0
    if-lt p1, p2, :cond_1

    .line 1673
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    if-nez p3, :cond_0

    .line 1675
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1677
    :cond_0
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->simulate()V

    .line 1679
    :goto_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getDelay()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public finish()V
    .locals 12

    .line 1788
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1789
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->stopSounds()V

    .line 1791
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Match;->changeTrustAfterMatch(Lpl/mkrstudio/truefootball3/objects/UserData;)[I

    move-result-object v0

    .line 1792
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChairman()Lpl/mkrstudio/truefootball3/objects/Chairman;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    invoke-virtual {v2, v4}, Lpl/mkrstudio/truefootball3/objects/Chairman;->changeConfidence(I)V

    .line 1793
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object v2

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/Supporters;->changeConfidence(I)V

    .line 1795
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChairman()Lpl/mkrstudio/truefootball3/objects/Chairman;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Chairman;->getConfidence()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1796
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getInbox()Lpl/mkrstudio/truefootball3/objects/Inbox;

    move-result-object v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildGameOverMessage(Ljava/lang/String;Z)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 1797
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->setGameOver(Z)V

    .line 1800
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1801
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playerRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    .line 1802
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->addRating(Lpl/mkrstudio/truefootball3/objects/Player;F)V

    .line 1803
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v5

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v9

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v10

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v11

    invoke-virtual/range {v5 .. v11}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    goto :goto_0

    .line 1805
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v0

    if-nez v0, :cond_2

    .line 1806
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingLineup:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v7, 0x1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v8

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 1808
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v0

    if-nez v0, :cond_3

    .line 1809
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingLineup:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const/4 v7, 0x1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentHistory()Lpl/mkrstudio/truefootball3/objects/History;

    move-result-object v8

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lpl/mkrstudio/truefootball3/objects/Competition;->addToStats(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/MatchEventType;ILpl/mkrstudio/truefootball3/objects/History;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Transfers;)V

    .line 1812
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v0, v2, :cond_5

    .line 1813
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->changeRankingPoints()V

    .line 1818
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1820
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    .line 1821
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v8

    if-ne v8, v4, :cond_8

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-eq v8, v9, :cond_9

    :cond_8
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v7, v8, :cond_7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    if-le v6, v2, :cond_6

    move v2, v6

    goto :goto_1

    :cond_b
    const/16 v0, 0xa

    .line 1828
    invoke-static {v0, v2, p0}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x11

    .line 1829
    invoke-static {v0, v2, p0}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    const/16 v0, 0x1b

    .line 1830
    invoke-static {v0, v2, p0}, Lpl/mkrstudio/truefootball3/helpers/AchievementHelper;->setAchievementResult(IILandroid/content/Context;)V

    .line 1833
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1834
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 1836
    :goto_3
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x64

    const/4 v6, -0x1

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1837
    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->setCondition(B)V

    .line 1839
    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 1840
    iget-boolean v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->home:Z

    if-eqz v5, :cond_e

    .line 1841
    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->lowerSuspension(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    goto :goto_5

    .line 1843
    :cond_e
    invoke-virtual {v4, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSuspension(Lpl/mkrstudio/truefootball3/objects/Suspension;)V

    .line 1846
    :cond_f
    :goto_5
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->setUnavailable(Z)V

    .line 1847
    invoke-virtual {v4, v6}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 1848
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingLineup:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-le v5, v6, :cond_10

    .line 1849
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingLineup:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 1851
    :cond_10
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingBench:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-le v5, v6, :cond_d

    .line 1852
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingBench:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    goto :goto_4

    .line 1856
    :cond_11
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1857
    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->setCondition(B)V

    .line 1859
    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 1860
    iget-boolean v7, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->home:Z

    if-eqz v7, :cond_13

    .line 1861
    invoke-virtual {v4, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSuspension(Lpl/mkrstudio/truefootball3/objects/Suspension;)V

    goto :goto_7

    .line 1863
    :cond_13
    invoke-virtual {v4, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->lowerSuspension(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    .line 1866
    :cond_14
    :goto_7
    invoke-virtual {v4, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->setUnavailable(Z)V

    .line 1867
    invoke-virtual {v4, v6}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 1868
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingLineup:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-le v7, v6, :cond_15

    .line 1869
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingLineup:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 1871
    :cond_15
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingBench:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-le v7, v6, :cond_12

    .line 1872
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingBench:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v7, v7, 0xb

    int-to-byte v7, v7

    invoke-virtual {v4, v7}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    goto :goto_6

    .line 1878
    :cond_16
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->updateAchievements(Landroid/content/Context;)V

    .line 1880
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingBench:Ljava/util/List;

    .line 1881
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingLineup:Ljava/util/List;

    .line 1882
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingBench:Ljava/util/List;

    .line 1883
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingLineup:Ljava/util/List;

    .line 1885
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/UserData;->nextDay(Landroid/content/Context;)V

    .line 1887
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method generateLiveMatch(Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/LiveMatch;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 221
    :goto_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v5

    const/16 v6, 0x5a

    if-ge v4, v5, :cond_2

    .line 222
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 223
    invoke-virtual {p0, v0, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->exists(Ljava/util/List;I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v1, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->exists(Ljava/util/List;I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 226
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    :cond_1
    :goto_2
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    goto :goto_1

    .line 229
    :cond_2
    :goto_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    if-ge v3, v4, :cond_5

    .line 230
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 231
    invoke-virtual {p0, v0, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->exists(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v1, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->exists(Ljava/util/List;I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_5

    .line 234
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 232
    :cond_4
    :goto_5
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    goto :goto_4

    .line 237
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 238
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 240
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/LiveMatch;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-direct {v2, v3, p1, v0, v1}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public getActionButton()Landroid/widget/ImageView;
    .locals 1

    .line 2068
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCommentarySpeed()I
    .locals 1

    .line 2004
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    return v0
.end method

.method public getCommentaryTV()Landroid/widget/TextView;
    .locals 1

    .line 2028
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDelay()I
    .locals 1

    .line 2012
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->delay:I

    return v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;",
            ">;"
        }
    .end annotation

    .line 2020
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 2036
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLineupBeforeSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;"
        }
    .end annotation

    .line 2092
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->lineupBeforeSubs:Ljava/util/List;

    return-object v0
.end method

.method public getMatchSpeed()I
    .locals 1

    .line 1972
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchSpeed:I

    return v0
.end method

.method getRandomEvent([F)B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1702
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1705
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1706
    aget v3, p1, v2

    add-float/2addr v1, v3

    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getReport()Lpl/mkrstudio/truefootball3/objects/MatchReport;
    .locals 1

    .line 2044
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    return-object v0
.end method

.method public getSubLimit()I
    .locals 1

    .line 2100
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    return v0
.end method

.method public getSubs()Landroid/widget/ImageView;
    .locals 1

    .line 2052
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSubsMade()B
    .locals 1

    .line 2108
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMade:B

    return v0
.end method

.method public getSubsMadeByRival()B
    .locals 1

    .line 2116
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMadeByRival:B

    return v0
.end method

.method public getSubsToAnnounce()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2124
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    return-object v0
.end method

.method public getTactics()Landroid/widget/ImageView;
    .locals 1

    .line 2060
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .line 1976
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    return v0
.end method

.method public getTimeTV()Landroid/widget/TextView;
    .locals 1

    .line 1992
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->timeTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasYellowCard(Lpl/mkrstudio/truefootball3/objects/Player;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    .line 893
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method initActionButton()V
    .locals 2

    .line 459
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initAds()V
    .locals 2

    .line 2206
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_0

    const v0, 0x7f080044

    .line 2207
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 2209
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_0
    return-void
.end method

.method initCommentaryRecordList()V
    .locals 1

    const v0, 0x7f080102

    .line 413
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryRecordsListView:Landroid/widget/ListView;

    return-void
.end method

.method initListeners()V
    .locals 3

    .line 612
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$7;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$7;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    const v1, 0x7f0802c4

    .line 621
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$8;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$8;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    .line 632
    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$9;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$9;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    const v2, 0x7f0802c2

    .line 641
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0801dc

    .line 642
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0802d3

    .line 643
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method initLiveResultsList()V
    .locals 1

    const v0, 0x7f0801e5

    .line 417
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->liveMatchesListView:Landroid/widget/ListView;

    return-void
.end method

.method initMatch()V
    .locals 4

    .line 276
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 283
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    .line 284
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->home:Z

    .line 286
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x6

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    .line 288
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->firstHalfAddedTime:I

    .line 289
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->secondHalfAddedTime:I

    .line 291
    iput v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->addedTime:I

    .line 293
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeGoals(B)V

    .line 294
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayGoals(B)V

    .line 295
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeTactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

    .line 296
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayTactics:Lpl/mkrstudio/truefootball3/objects/Tactics;

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingLineup:Ljava/util/List;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingLineup:Ljava/util/List;

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingBench:Ljava/util/List;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingBench:Ljava/util/List;

    .line 302
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 303
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingLineup:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 306
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeStartingBench:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 308
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 309
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingLineup:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 311
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 312
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayStartingBench:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 315
    :cond_6
    iput-boolean v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    return-void
.end method

.method initSounds()V
    .locals 5

    const v0, 0x7f0b0001

    const/4 v1, 0x1

    .line 253
    :try_start_0
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 254
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 255
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const v0, 0x7f0b0002

    .line 256
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    .line 257
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 258
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const v0, 0x7f0b0003

    .line 259
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    .line 260
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 261
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const-string v0, "tf3Settings"

    const/4 v2, 0x0

    .line 266
    invoke-virtual {p0, v0, v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v3, 0x145

    const-string v4, "matchSpeed"

    .line 267
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchSpeed:I

    mul-int/lit8 v3, v3, 0x4

    .line 268
    iput v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_0

    .line 270
    iput v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    :cond_0
    const-string v3, "sound"

    .line 271
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->sound:Z

    .line 272
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    const/16 v3, 0x514

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->goalSounds:Z

    return-void
.end method

.method public initSquads()V
    .locals 5

    .line 648
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 649
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playerRatings:Ljava/util/List;

    new-instance v4, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    invoke-direct {v4, v1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;F)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 652
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playerRatings:Ljava/util/List;

    new-instance v4, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    invoke-direct {v4, v1, v2}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;F)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method initTodayMatches()V
    .locals 5

    .line 200
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 203
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 204
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 206
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/mkrstudio/truefootball3/objects/AI;->selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    .line 207
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCurrentMatch()Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    invoke-static {v3, v4}, Lpl/mkrstudio/truefootball3/objects/AI;->selectStartingLineup(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/CompetitionType;)V

    .line 208
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lpl/mkrstudio/truefootball3/objects/Match;->simulateMatch(Lpl/mkrstudio/truefootball3/objects/UserData;ZZ)V

    .line 209
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->todayMatches:Ljava/util/List;

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->generateLiveMatch(Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/LiveMatch;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public injury(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "foulingTeam",
            "fouledTeam",
            "player"
        }
    .end annotation

    .line 1535
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 1536
    new-instance v0, Lpl/mkrstudio/truefootball3/matchEvents/Injury;

    invoke-direct {v0, p2, p0, p3}, Lpl/mkrstudio/truefootball3/matchEvents/Injury;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    const/4 p3, 0x0

    :goto_0
    if-lt p1, p2, :cond_0

    .line 1538
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    .line 1539
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1540
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getDelay()I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return p3
.end method

.method public isGoalSounds()Z
    .locals 1

    .line 1984
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->goalSounds:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    .line 2084
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    return v0
.end method

.method public isSound()Z
    .locals 1

    .line 2076
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->sound:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 2132
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2133
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0035

    .line 2134
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 2136
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c0526

    .line 2137
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0803d0

    .line 2139
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2140
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$21;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08022d

    .line 2161
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2162
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity$22;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$22;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2169
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 178
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 180
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a0023

    .line 181
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setContentView(I)V

    .line 183
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 185
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initMatch()V

    .line 186
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initTodayMatches()V

    .line 188
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initSounds()V

    .line 190
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initViews()V

    .line 191
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initAds()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 2215
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 2216
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 2217
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 2222
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2223
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2224
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2226
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    .line 2227
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 2228
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 9

    .line 1908
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 1909
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 1910
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    :cond_0
    const v0, 0x7f0801f7

    .line 1912
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070267

    .line 1913
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1915
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->lineupBeforeSubs:Ljava/util/List;

    const v1, 0x7f070274

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1916
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 1917
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->lineupBeforeSubs:Ljava/util/List;

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

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1918
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1920
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, ""

    aput-object v8, v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1921
    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Player;->setUnavailable(Z)V

    goto :goto_0

    .line 1925
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1926
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->lineupBeforeSubs:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1927
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-direct {v6, v4, v7}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;F)V

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->addPlayerRating(Lpl/mkrstudio/truefootball3/objects/PlayerRating;)V

    .line 1928
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1932
    :cond_4
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMade:B

    add-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMade:B

    .line 1933
    iget v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-lt v0, v3, :cond_5

    .line 1934
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1935
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    const/4 v0, 0x0

    .line 1937
    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->lineupBeforeSubs:Ljava/util/List;

    .line 1939
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1940
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1944
    :cond_6
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->afterMotivationalSpeech:Z

    if-eqz v0, :cond_8

    .line 1945
    iput-boolean v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->afterMotivationalSpeech:Z

    .line 1947
    :try_start_0
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->sound:Z

    if-eqz v0, :cond_7

    .line 1948
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1949
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1950
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1955
    :catch_0
    :cond_7
    iput-boolean v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    .line 1956
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->runOneMinuteThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1957
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->runOneMinuteThread:Ljava/lang/Runnable;

    iget v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchSpeed:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1959
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    const v3, 0x7f07026d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1960
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1961
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1962
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1963
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    const v1, 0x7f070276

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1965
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initActionButton()V

    :cond_8
    return-void
.end method

.method public pauseSounds()V
    .locals 1

    .line 1189
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1191
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1192
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected penalties()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 917
    iput-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoals:B

    .line 918
    iput-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoals:B

    .line 920
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v2, 0x7f08026d

    .line 921
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penaltiesResult:Landroid/widget/TextView;

    .line 923
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 924
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 926
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v4

    .line 927
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v5

    .line 929
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 930
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v8

    if-nez v8, :cond_0

    .line 931
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 935
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 936
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v8

    if-nez v8, :cond_2

    .line 937
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 941
    :cond_3
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/MatchActivity$11;

    invoke-direct {v6, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$11;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 953
    new-instance v6, Lpl/mkrstudio/truefootball3/activities/MatchActivity$12;

    invoke-direct {v6, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$12;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 966
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 967
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 969
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updatePenaltiesResult()V

    .line 972
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 973
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    const/4 v8, 0x0

    .line 981
    :goto_2
    rem-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_4

    .line 982
    div-int/lit8 v10, v8, 0x2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v11, v5

    move-object v12, v6

    goto :goto_3

    .line 986
    :cond_4
    div-int/lit8 v10, v8, 0x2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Player;

    move-object v11, v4

    move-object v12, v7

    .line 993
    :goto_3
    iget-object v13, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    new-instance v14, Lpl/mkrstudio/truefootball3/activities/MatchActivity$13;

    invoke-direct {v14, v0, v10}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$13;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;Lpl/mkrstudio/truefootball3/objects/Player;)V

    add-int/lit8 v15, v8, 0x1

    mul-int/lit8 v16, v15, 0x2

    add-int/lit8 v17, v16, -0x1

    iget v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    mul-int v1, v1, v17

    move-object/from16 v17, v2

    int-to-long v1, v1

    invoke-virtual {v13, v14, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1001
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1, v10, v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilityForPenaltyGoal(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Player;)I

    move-result v1

    .line 1003
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    const/16 v10, 0x64

    invoke-virtual {v2, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1004
    iget-object v11, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v11, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    const/4 v11, 0x5

    const/4 v13, 0x1

    if-eq v1, v2, :cond_7

    if-lt v1, v2, :cond_7

    if-ge v10, v11, :cond_5

    goto :goto_4

    .line 1016
    :cond_5
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;

    invoke-direct {v2, v0, v8}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$15;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;I)V

    iget v10, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    mul-int v10, v10, v16

    int-to-long v11, v10

    invoke-virtual {v1, v2, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez v9, :cond_6

    .line 1043
    iget-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoals:B

    add-int/2addr v1, v13

    int-to-byte v1, v1

    iput-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoals:B

    goto :goto_5

    .line 1045
    :cond_6
    iget-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoals:B

    add-int/2addr v1, v13

    int-to-byte v1, v1

    iput-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoals:B

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x0

    .line 1007
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity$14;

    invoke-direct {v2, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$14;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    iget v9, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    mul-int v9, v9, v16

    int-to-long v9, v9

    invoke-virtual {v1, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1049
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x78

    const/4 v9, 0x0

    const/4 v10, 0x5

    if-gt v1, v10, :cond_8

    iget-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoals:B

    iget-byte v11, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoals:B

    sub-int/2addr v1, v11

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    rsub-int/lit8 v11, v11, 0x5

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-gt v1, v11, :cond_9

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v10, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v1, v10, :cond_a

    iget-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoals:B

    iget-byte v10, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoals:B

    if-le v1, v10, :cond_a

    .line 1050
    :cond_9
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTIES_WON:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {v3, v9, v4, v2, v5}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;BLpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1, v13}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeTeamWonByPenalties(Z)V

    goto :goto_7

    .line 1054
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, 0x5

    if-gt v1, v10, :cond_b

    iget-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoals:B

    iget-byte v11, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoals:B

    sub-int/2addr v1, v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    rsub-int/lit8 v11, v11, 0x5

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-gt v1, v11, :cond_c

    goto :goto_6

    :cond_b
    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v10, :cond_d

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v1, v10, :cond_d

    iget-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoals:B

    iget-byte v10, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoals:B

    if-le v1, v10, :cond_d

    .line 1055
    :cond_c
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTIES_WON:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {v3, v9, v4, v2, v5}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;-><init>(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;BLpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1, v13}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayTeamWonByPenalties(Z)V

    .line 1062
    :goto_7
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;

    invoke-direct {v2, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$16;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v8, v13

    iget v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    mul-int v8, v8, v3

    int-to-long v3, v8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_d
    move v8, v15

    move-object/from16 v2, v17

    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public penaltyKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attackingTeam",
            "defendingTeam",
            "simulate"
        }
    .end annotation

    .line 1620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 1625
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ULTRA_OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v0, v1, :cond_0

    .line 1626
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 1627
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    :goto_0
    move-object v6, v0

    move-object v7, v1

    goto :goto_1

    .line 1628
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Gameplay;->OFFENSIVE:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v0, v1, :cond_1

    .line 1629
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->QUITE_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 1630
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->QUITE_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_0

    .line 1631
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Gameplay;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    if-ne v0, v1, :cond_2

    .line 1632
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_VERY_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 1633
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_VERY_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_0

    .line 1635
    :cond_2
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;->NOT_SEVERE:Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;

    .line 1636
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;->NOT_HIGH:Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;

    goto :goto_0

    .line 1639
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/ActionType;->NORMAL_ACTION:Lpl/mkrstudio/truefootball3/enums/ActionType;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lpl/mkrstudio/truefootball3/matchEvents/PenaltyKick;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/SeverityOfBallLoss;Lpl/mkrstudio/truefootball3/enums/DensityInPenaltyArea;Lpl/mkrstudio/truefootball3/enums/ActionType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    const/4 v0, 0x0

    :goto_2
    if-lt p1, p2, :cond_4

    .line 1641
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    if-nez p3, :cond_3

    .line 1643
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 1645
    :cond_3
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->simulate()V

    .line 1647
    :goto_3
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getDelay()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    return v0
.end method

.method public playAwayGoalSound()V
    .locals 2

    .line 832
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->sound:Z

    if-eqz v0, :cond_1

    .line 834
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const/high16 v0, 0x7f0b0000

    .line 836
    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 837
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 838
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 840
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public playHomeGoalSound(Lpl/mkrstudio/truefootball3/objects/Country;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "country"
        }
    .end annotation

    .line 846
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->sound:Z

    if-eqz v0, :cond_b

    .line 848
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 851
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 853
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->CAUCASIAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    const/16 v2, 0x61a8

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN_SOUTHERN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->LATIN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 859
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN_BRITISH:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN_NORTHERN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Faces;->AMERICAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 876
    :cond_2
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->attendance:I

    if-le p1, v2, :cond_3

    const p1, 0x7f0b0009

    .line 877
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    goto :goto_3

    :cond_3
    const p1, 0x7f0b000b

    .line 879
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    goto :goto_3

    .line 860
    :cond_4
    :goto_1
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->attendance:I

    const v0, 0x9c40

    if-le p1, v0, :cond_7

    .line 861
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 862
    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result p1

    .line 863
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    const/16 v1, 0x55

    if-le v0, v1, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-eqz p1, :cond_6

    const p1, 0x7f0b0004

    .line 866
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    goto :goto_3

    :cond_6
    const p1, 0x7f0b0005

    .line 868
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    goto :goto_3

    :cond_7
    const/16 v0, 0x3a98

    if-le p1, v0, :cond_8

    const p1, 0x7f0b0007

    .line 871
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    goto :goto_3

    :cond_8
    const p1, 0x7f0b000a

    .line 873
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    goto :goto_3

    .line 854
    :cond_9
    :goto_2
    iget p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->attendance:I

    if-le p1, v2, :cond_a

    const p1, 0x7f0b0006

    .line 855
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    goto :goto_3

    :cond_a
    const p1, 0x7f0b0008

    .line 857
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    .line 883
    :goto_3
    :try_start_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 884
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 886
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_b
    :goto_4
    return-void
.end method

.method public playerSubs()I
    .locals 12

    .line 1479
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    mul-int v0, v0, v2

    iput v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->delay:I

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    .line 1481
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c05e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c05e4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c05e5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0c05e6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0c05e7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v2, v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0c05e8

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x5

    aput-object v3, v2, v8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0c05e9

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x6

    aput-object v3, v2, v9

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f0c05ea

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x7

    aput-object v3, v2, v10

    new-array v0, v0, [Ljava/lang/String;

    .line 1483
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f0c05db

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f0c05dc

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c05dd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c05de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c05df

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c05e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c05e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c05e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 1485
    :goto_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 1487
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;

    invoke-direct {v3, p0, v2, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$19;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;[Ljava/lang/String;I)V

    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    mul-int v6, v6, v5

    int-to-long v6, v6

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1495
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;

    invoke-direct {v3, p0, v0, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$20;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;[Ljava/lang/String;I)V

    iget v6, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    mul-int v5, v5, v6

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1507
    :cond_0
    iget v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->delay:I

    return v0
.end method

.method recoverPlayers(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "howMuch"
        }
    .end annotation

    .line 1115
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1116
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1117
    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->recover(I)V

    goto :goto_0

    .line 1119
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1120
    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->recover(I)V

    goto :goto_1

    .line 1122
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1123
    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->recover(I)V

    goto :goto_2

    .line 1125
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1126
    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Player;->recover(I)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public redCard(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "foulingTeam",
            "fouledTeam",
            "simulate"
        }
    .end annotation

    .line 1597
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 1598
    new-instance v0, Lpl/mkrstudio/truefootball3/matchEvents/RedCard;

    invoke-direct {v0, p1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/RedCard;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_0
    if-lt p2, v0, :cond_3

    .line 1600
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    if-nez p3, :cond_0

    .line 1602
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1604
    :cond_0
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->simulate()V

    .line 1606
    :goto_1
    instance-of v3, v2, Lpl/mkrstudio/truefootball3/matchEvents/RedCard;

    if-eqz v3, :cond_2

    .line 1607
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 1608
    iget v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeRedCards:I

    add-int/2addr v3, v0

    iput v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeRedCards:I

    goto :goto_2

    .line 1609
    :cond_1
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 1610
    iget v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayRedCards:I

    add-int/2addr v3, v0

    iput v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayRedCards:I

    .line 1613
    :cond_2
    :goto_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getDelay()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public runOneMinute()V
    .locals 17

    move-object/from16 v0, p0

    .line 1199
    iget-boolean v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penaltiesMode:Z

    if-eqz v1, :cond_0

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penalties()V

    goto/16 :goto_9

    .line 1201
    :cond_0
    iget-boolean v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    if-nez v1, :cond_16

    .line 1202
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showSquads()V

    .line 1207
    iget v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    iget v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->firstHalfAddedTime:I

    if-lez v5, :cond_1

    sub-int/2addr v5, v4

    .line 1208
    iput v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->firstHalfAddedTime:I

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x5a

    if-ne v1, v6, :cond_2

    .line 1211
    iget v7, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->secondHalfAddedTime:I

    if-lez v7, :cond_2

    sub-int/2addr v7, v4

    .line 1212
    iput v7, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->secondHalfAddedTime:I

    const/4 v5, 0x1

    :cond_2
    const/16 v7, 0x69

    if-ne v1, v7, :cond_3

    .line 1215
    iget v8, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->firstHalfExtraTimeAddedTime:I

    if-lez v8, :cond_3

    sub-int/2addr v8, v4

    .line 1216
    iput v8, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->firstHalfExtraTimeAddedTime:I

    const/4 v5, 0x1

    :cond_3
    const/16 v8, 0x78

    if-ne v1, v8, :cond_4

    .line 1219
    iget v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->secondHalfExtraTimeAddedTime:I

    if-lez v1, :cond_4

    sub-int/2addr v1, v4

    .line 1220
    iput v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->secondHalfExtraTimeAddedTime:I

    const/4 v5, 0x1

    :cond_4
    const-string v1, ""

    const-string v9, "\'"

    if-eqz v5, :cond_5

    .line 1224
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updatePossession()V

    .line 1225
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->exhaustPlayers()V

    .line 1226
    iget v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->addedTime:I

    add-int/2addr v5, v4

    iput v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->addedTime:I

    .line 1227
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->timeTV:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "\'+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->addedTime:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1230
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->exhaustPlayers()V

    .line 1231
    iget v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    add-int/2addr v5, v4

    iput v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    .line 1232
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changeLiveResults()V

    .line 1233
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->changeRatingsAfterMinute()V

    .line 1234
    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updatePossession()V

    .line 1235
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->timeTV:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    :goto_1
    iget v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    const v5, 0x7f0c0338

    const v9, 0x7f070275

    const v10, 0x7f070273

    const v11, 0x7f07026f

    const/4 v12, -0x1

    if-ne v1, v2, :cond_7

    iget v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->firstHalfAddedTime:I

    if-nez v2, :cond_7

    .line 1241
    :try_start_0
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1242
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 1243
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 1244
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :catch_0
    :cond_6
    iput-boolean v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    .line 1250
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1251
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1252
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1253
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1255
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0xa

    .line 1256
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->recoverPlayers(I)V

    .line 1257
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1258
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 1260
    iput v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->addedTime:I

    .line 1263
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    new-instance v2, Lpl/mkrstudio/truefootball3/activities/MatchActivity$18;

    invoke-direct {v2, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$18;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    :cond_7
    const v2, 0x7f0c02b5

    if-ne v1, v6, :cond_9

    .line 1277
    iget v13, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->secondHalfAddedTime:I

    if-nez v13, :cond_9

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pauseSounds()V

    .line 1281
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1282
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1283
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->isExtraTime()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1284
    iput-boolean v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    .line 1285
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1286
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1287
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1288
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1290
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x5

    .line 1292
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->recoverPlayers(I)V

    .line 1293
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1294
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    goto :goto_2

    .line 1296
    :cond_8
    invoke-virtual {v0, v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->recoverPlayers(I)V

    .line 1297
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showLiveResults()V

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateActionButtonAfterMatch()V

    .line 1302
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showSquads()V

    goto/16 :goto_9

    :cond_9
    if-ne v1, v7, :cond_b

    .line 1303
    iget v7, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->firstHalfExtraTimeAddedTime:I

    if-nez v7, :cond_b

    .line 1305
    :try_start_1
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1306
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 1307
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 1308
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1315
    :catch_1
    :cond_a
    iput-boolean v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    .line 1316
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1317
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1318
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1319
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1321
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1322
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1323
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 1326
    iput v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->addedTime:I

    goto/16 :goto_9

    :cond_b
    if-ne v1, v8, :cond_d

    .line 1327
    iget v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->secondHalfExtraTimeAddedTime:I

    if-nez v1, :cond_d

    .line 1328
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pauseSounds()V

    .line 1331
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1332
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->arePenalties()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1333
    iput-boolean v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    .line 1334
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 1338
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1340
    iput-boolean v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penaltiesMode:Z

    .line 1341
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_9

    .line 1343
    :cond_c
    invoke-virtual {v0, v12}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->recoverPlayers(I)V

    .line 1344
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1345
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->setCommentary(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showSquads()V

    .line 1348
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->updateActionButtonAfterMatch()V

    goto/16 :goto_9

    .line 1350
    :cond_d
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 1351
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->playerSubs()I

    move-result v1

    add-int/2addr v3, v1

    .line 1352
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->runOneMinuteThread:Ljava/lang/Runnable;

    iget v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchSpeed:I

    add-int/2addr v4, v3

    int-to-long v3, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 1356
    :cond_e
    iget v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    const/16 v2, 0x3c

    const/4 v5, 0x4

    if-le v1, v2, :cond_10

    if-ge v1, v6, :cond_10

    iget-byte v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMadeByRival:B

    iget v7, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-ge v1, v7, :cond_10

    .line 1361
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_10

    .line 1362
    iget-boolean v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->home:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v7, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-le v1, v7, :cond_f

    .line 1363
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->substitution(Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result v1

    :goto_3
    add-int/2addr v1, v3

    const/4 v7, 0x1

    goto :goto_4

    .line 1365
    :cond_f
    iget-boolean v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->home:Z

    if-nez v1, :cond_10

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v7, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-le v1, v7, :cond_10

    .line 1366
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->substitution(Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result v1

    goto :goto_3

    :cond_10
    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_15

    .line 1375
    iget v7, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    const/16 v9, 0x55

    if-lt v7, v9, :cond_11

    if-gt v7, v6, :cond_11

    const/4 v6, 0x1

    goto :goto_5

    :cond_11
    const/4 v6, 0x0

    :goto_5
    const/16 v9, 0x73

    if-lt v7, v9, :cond_12

    if-gt v7, v8, :cond_12

    const/4 v14, 0x1

    goto :goto_6

    :cond_12
    move v14, v6

    .line 1380
    :goto_6
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v11

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getDressingRoom()Lpl/mkrstudio/truefootball3/objects/DressingRoom;

    move-result-object v15

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTeamAnalyses()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {v10 .. v16}, Lpl/mkrstudio/truefootball3/objects/Match;->getPossibilities(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZZLpl/mkrstudio/truefootball3/objects/DressingRoom;Ljava/util/List;)[F

    move-result-object v6

    .line 1381
    invoke-virtual {v0, v6}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getRandomEvent([F)B

    move-result v6

    const/16 v7, 0x59

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_8

    .line 1456
    :pswitch_0
    iget v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    if-le v5, v2, :cond_15

    if-ge v5, v7, :cond_15

    .line 1457
    iget-boolean v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->home:Z

    if-eqz v2, :cond_13

    .line 1458
    iget-byte v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMadeByRival:B

    iget v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-ge v2, v4, :cond_15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-le v2, v4, :cond_15

    .line 1459
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->injury(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1461
    :cond_13
    iget-byte v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMade:B

    iget v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-ge v2, v3, :cond_15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-le v2, v3, :cond_15

    .line 1462
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->injury(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1444
    :pswitch_1
    iget v5, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    if-le v5, v2, :cond_15

    if-ge v5, v7, :cond_15

    .line 1445
    iget-boolean v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->home:Z

    if-eqz v2, :cond_14

    .line 1446
    iget-byte v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMade:B

    iget v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-ge v2, v3, :cond_15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-le v2, v3, :cond_15

    .line 1447
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->injury(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1449
    :cond_14
    iget-byte v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMadeByRival:B

    iget v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-ge v2, v4, :cond_15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    if-le v2, v4, :cond_15

    .line 1450
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->injury(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1440
    :pswitch_2
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->cornerKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1436
    :pswitch_3
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->cornerKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1432
    :pswitch_4
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->farFreeKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1428
    :pswitch_5
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->farFreeKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1424
    :pswitch_6
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->closeFreeKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1420
    :pswitch_7
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->closeFreeKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1416
    :pswitch_8
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penaltyKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1412
    :pswitch_9
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penaltyKick(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto/16 :goto_7

    .line 1407
    :pswitch_a
    iget v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayRedCards:I

    if-ge v2, v5, :cond_15

    .line 1408
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->redCard(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto :goto_7

    .line 1402
    :pswitch_b
    iget v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeRedCards:I

    if-ge v2, v5, :cond_15

    .line 1403
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->redCard(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto :goto_7

    .line 1397
    :pswitch_c
    iget v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayRedCards:I

    if-ge v2, v5, :cond_15

    .line 1398
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->yellowCard(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto :goto_7

    .line 1392
    :pswitch_d
    iget v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeRedCards:I

    if-ge v2, v5, :cond_15

    .line 1393
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->yellowCard(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto :goto_7

    .line 1388
    :pswitch_e
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->action(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    goto :goto_7

    .line 1384
    :pswitch_f
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->action(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I

    move-result v2

    :goto_7
    add-int/2addr v1, v2

    .line 1469
    :cond_15
    :goto_8
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->runOneMinuteThread:Ljava/lang/Runnable;

    iget v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchSpeed:I

    add-int/2addr v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public setActionButton(Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionButton"
        }
    .end annotation

    .line 2072
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    return-void
.end method

.method public setCommentary(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentary"
        }
    .end annotation

    .line 2232
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 2233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryRecords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;->getCommentary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2234
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryRecords:Ljava/util/List;

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;

    iget v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    invoke-direct {v2, v3, p1}, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2235
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->showCommentaryRecords()V

    goto :goto_0

    .line 2237
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryButton:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2238
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryButton:Landroid/widget/ImageView;

    const v0, 0x7f0700e5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCommentarySpeed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentarySpeed"
        }
    .end annotation

    .line 2008
    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentarySpeed:I

    return-void
.end method

.method public setCommentaryTV(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentaryTV"
        }
    .end annotation

    .line 2032
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    return-void
.end method

.method public setDelay(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 2016
    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->delay:I

    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "events"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;",
            ">;)V"
        }
    .end annotation

    .line 2024
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    return-void
.end method

.method public setGoalSounds(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goalSounds"
        }
    .end annotation

    .line 1988
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->goalSounds:Z

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 2040
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public setLineupBeforeSubs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lineupBeforeSubs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;)V"
        }
    .end annotation

    .line 2096
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->lineupBeforeSubs:Ljava/util/List;

    return-void
.end method

.method public setMatchSpeed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchSpeed"
        }
    .end annotation

    .line 2000
    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->matchSpeed:I

    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pause"
        }
    .end annotation

    .line 2088
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->pause:Z

    return-void
.end method

.method public setReport(Lpl/mkrstudio/truefootball3/objects/MatchReport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "report"
        }
    .end annotation

    .line 2048
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    return-void
.end method

.method public setSound(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sound"
        }
    .end annotation

    .line 2080
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->sound:Z

    return-void
.end method

.method public setSubLimit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subLimit"
        }
    .end annotation

    .line 2104
    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subLimit:I

    return-void
.end method

.method public setSubs(Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subs"
        }
    .end annotation

    .line 2056
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsButton:Landroid/widget/ImageView;

    return-void
.end method

.method public setSubsMade(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subsMade"
        }
    .end annotation

    .line 2112
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMade:B

    return-void
.end method

.method public setSubsMadeByRival(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subsMadeByRival"
        }
    .end annotation

    .line 2120
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsMadeByRival:B

    return-void
.end method

.method public setSubsToAnnounce(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subsToAnnounce"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2128
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->subsToAnnounce:Ljava/util/List;

    return-void
.end method

.method public setTactics(Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tactics"
        }
    .end annotation

    .line 2064
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->tacticsButton:Landroid/widget/ImageView;

    return-void
.end method

.method public setTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1980
    iput p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    return-void
.end method

.method public setTimeTV(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeTV"
        }
    .end annotation

    .line 1996
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->timeTV:Landroid/widget/TextView;

    return-void
.end method

.method showCommentaryRecords()V
    .locals 6

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;

    .line 423
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 424
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;->getMinute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "time"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;->getCommentary()Ljava/lang/String;

    move-result-object v2

    const-string v4, "commentary"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_0
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/CommentaryRecordAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lpl/mkrstudio/truefootball3/adapters/CommentaryRecordAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    .line 431
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/adapters/CommentaryRecordAdapter;->setNotifyOnChange(Z)V

    .line 433
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryRecordsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method showLiveResults()V
    .locals 6

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->todayMatches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/LiveMatch;

    .line 439
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 440
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "homeTeam"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getCurrentHomeGoals()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getCurrentAwayGoals()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "result"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->commentaryTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c02b5

    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "end"

    if-eqz v4, :cond_0

    const-string v4, "true"

    .line 443
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v4, "false"

    .line 445
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :goto_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/LiveMatch;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "awayTeam"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_1
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/LiveMatchAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lpl/mkrstudio/truefootball3/adapters/LiveMatchAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    .line 453
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/adapters/LiveMatchAdapter;->setNotifyOnChange(Z)V

    .line 455
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->liveMatchesListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public showSquads()V
    .locals 17

    move-object/from16 v0, p0

    .line 733
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 735
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v3

    .line 736
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    .line 737
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "rating"

    const-string v9, ""

    const-string v10, "fatigue"

    const-string v11, "name"

    const-string v12, "red"

    const-string v13, "true"

    const-string v14, "false"

    const-string v15, "yellow"

    if-ge v6, v7, :cond_2

    .line 738
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 739
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v3

    .line 740
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-direct {v0, v7}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getRating(Lpl/mkrstudio/truefootball3/objects/Player;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-virtual {v0, v7}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->hasYellowCard(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 745
    invoke-interface {v5, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 747
    :cond_0
    invoke-interface {v5, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    :goto_1
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 752
    :cond_1
    invoke-interface {v5, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v16

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 756
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 757
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 758
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 759
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getShortName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-direct {v0, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->getRating(Lpl/mkrstudio/truefootball3/objects/Player;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->hasYellowCard(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 764
    invoke-interface {v6, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 766
    :cond_3
    invoke-interface {v6, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :goto_4
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 769
    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 771
    :cond_4
    invoke-interface {v6, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    :goto_5
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v16

    goto :goto_3

    :cond_5
    const v3, 0x7f0801dc

    .line 776
    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    new-instance v4, Lpl/mkrstudio/truefootball3/adapters/MatchSquadAdapter;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v1, v5}, Lpl/mkrstudio/truefootball3/adapters/MatchSquadAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0802d3

    .line 777
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/MatchSquadAdapter;

    invoke-direct {v3, v0, v6, v2, v6}, Lpl/mkrstudio/truefootball3/adapters/MatchSquadAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method stopSounds()V
    .locals 1

    .line 1761
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1762
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1764
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1766
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 1767
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1768
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1769
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer2:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1771
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    .line 1772
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1773
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1774
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1776
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 1777
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1778
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1779
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->mediaPlayer4:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return-void
.end method

.method public substitution(Lpl/mkrstudio/truefootball3/objects/Team;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subbingTeam"
        }
    .end annotation

    .line 1514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 1516
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 1518
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v3, 0x1

    :goto_0
    add-int/2addr v1, v3

    .line 1519
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->rivalSubbedInPlayerIds:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 1522
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1524
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    new-instance v2, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v0, v4, p0}, Lpl/mkrstudio/truefootball3/matchEvents/Substitution;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;ZLandroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_1
    if-lt p1, v3, :cond_1

    .line 1526
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    .line 1527
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    int-to-long v5, v4

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1528
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getDelay()I

    move-result v0

    add-int/2addr v4, v0

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    return v4

    .line 1520
    :cond_2
    :goto_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->random:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public updateActionButtonAfterMatch()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->actionButton:Landroid/widget/ImageView;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/MatchActivity$17;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity$17;-><init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method updatePenaltiesResult()V
    .locals 3

    .line 913
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->penaltiesResult:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homePenGoalsDelayed:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayPenGoalsDelayed:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateReport()V
    .locals 13

    const v0, 0x7f0802c2

    .line 789
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 791
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->sortEvents()V

    .line 795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 796
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->report:Lpl/mkrstudio/truefootball3/objects/MatchReport;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/MatchReport;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;

    .line 798
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v7

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-eq v7, v8, :cond_0

    .line 799
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 800
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    const-string v10, "left"

    const-string v11, "right"

    const-string v12, ""

    if-ne v8, v9, :cond_1

    .line 801
    invoke-virtual {v6, p0}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 804
    :cond_1
    invoke-virtual {v6, p0}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    invoke-interface {v7, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    :goto_1
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    const-string v10, "center"

    if-ne v8, v9, :cond_2

    const-string v6, "yellow"

    .line 808
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 809
    :cond_2
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v8, v9, :cond_3

    const-string v6, "red"

    .line 810
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 811
    :cond_3
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-eq v8, v9, :cond_5

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->OWN_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-eq v8, v9, :cond_5

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getType()Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    move-result-object v8

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->PENALTY_GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne v8, v9, :cond_4

    goto :goto_2

    .line 818
    :cond_4
    invoke-interface {v7, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 812
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/MatchReportEvent;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    const-string v9, ":"

    if-ne v6, v8, :cond_6

    .line 813
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 815
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :goto_3
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 825
    :cond_7
    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/MatchReportAdapter;

    invoke-direct {v2, p0, v3, v1}, Lpl/mkrstudio/truefootball3/adapters/MatchReportAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v1, 0x1

    .line 826
    invoke-virtual {v2, v1}, Lpl/mkrstudio/truefootball3/adapters/MatchReportAdapter;->setNotifyOnChange(Z)V

    .line 828
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public updateResult()V
    .locals 3

    .line 320
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->resultTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTime()V
    .locals 3

    .line 324
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->timeTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public yellowCard(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "foulingTeam",
            "fouledTeam",
            "simulate"
        }
    .end annotation

    .line 1574
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    .line 1575
    new-instance v0, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;

    invoke-direct {v0, p1, p0}, Lpl/mkrstudio/truefootball3/matchEvents/YellowCard;-><init>(Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1576
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_0
    if-lt p2, v0, :cond_3

    .line 1577
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->events:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;

    if-nez p3, :cond_0

    .line 1579
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->handler:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1581
    :cond_0
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->simulate()V

    .line 1583
    :goto_1
    instance-of v3, v2, Lpl/mkrstudio/truefootball3/matchEvents/SecondYellowCard;

    if-eqz v3, :cond_2

    .line 1584
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 1585
    iget v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeRedCards:I

    add-int/2addr v3, v0

    iput v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->homeRedCards:I

    goto :goto_2

    .line 1586
    :cond_1
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->match:Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 1587
    iget v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayRedCards:I

    add-int/2addr v3, v0

    iput v3, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->awayRedCards:I

    .line 1590
    :cond_2
    :goto_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/matchEvents/MatchEvent;->getDelay()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method
