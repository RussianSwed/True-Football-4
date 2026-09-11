.class public Lpl/mkrstudio/truefootball3/fragments/SquadFragment;
.super Landroidx/fragment/app/Fragment;
.source "SquadFragment.java"


# instance fields
.field awayCountryCode:Ljava/lang/String;

.field continueButton:Landroid/widget/Button;

.field homeCountryCode:Ljava/lang/String;

.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

.field matchToday:Z

.field multiReleaseMode:Z

.field pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field positionsChosen:[Z

.field showedParameter:I

.field sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

.field squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

.field subsChosen:[Z

.field subsNumber:I

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matchToday"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 54
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SortType;->BY_POSITION:Lpl/mkrstudio/truefootball3/enums/SortType;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    const/4 v0, 0x7

    .line 56
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsNumber:I

    const/16 v1, 0xb

    new-array v1, v1, [Z

    .line 57
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->positionsChosen:[Z

    new-array v0, v0, [Z

    .line 58
    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsChosen:[Z

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showedParameter:I

    .line 66
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->multiReleaseMode:Z

    .line 70
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->matchToday:Z

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->multiReleasePlayers(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->backFromMultiReleaseMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;)Lpl/mkrstudio/truefootball3/enums/SquadCorrect;
    .locals 0

    .line 52
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->isSquadCorrect()Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    move-result-object p0

    return-object p0
.end method

.method private backFromMultiReleaseMode(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->setMultiReleaseCheckedPositions(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->multiReleaseMode:Z

    .line 191
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->setMultiReleaseMode(Z)V

    .line 192
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->notifyDataSetChanged()V

    .line 193
    iget-boolean v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->matchToday:Z

    const/16 v2, 0x8

    if-nez v1, :cond_0

    const v1, 0x7f080088

    .line 194
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0800ea

    .line 195
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 196
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 197
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->continueButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f08021d

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getFirstFreePosition()B
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 377
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->positionsChosen:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    int-to-byte v0, v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getFirstFreeSub()B
    .locals 2

    const/4 v0, 0x0

    .line 384
    :goto_0
    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsNumber:I

    if-ge v0, v1, :cond_1

    .line 385
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsChosen:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    int-to-byte v0, v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private isSquadCorrect()Lpl/mkrstudio/truefootball3/enums/SquadCorrect;
    .locals 5

    .line 257
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLineup()Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 259
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->TOO_LITTLE_STARTING_PLAYERS:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    return-object v0

    .line 260
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getBench()Ljava/util/List;

    move-result-object v1

    .line 261
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 262
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->TOO_LITTLE_SUBS:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    return-object v0

    .line 263
    :cond_1
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 266
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 268
    :cond_3
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 269
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->INJURED_OR_SUSPENDED:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    return-object v0

    .line 267
    :cond_4
    :goto_0
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->INJURED_OR_SUSPENDED:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    return-object v0

    .line 274
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 275
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 277
    :cond_7
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 278
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 279
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->INJURED_OR_SUSPENDED:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    return-object v0

    .line 276
    :cond_8
    :goto_1
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->INJURED_OR_SUSPENDED:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    return-object v0

    .line 285
    :cond_9
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/SquadCorrect;->YES:Lpl/mkrstudio/truefootball3/enums/SquadCorrect;

    return-object v0
.end method

.method private multiReleasePlayers(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 204
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 205
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v2, 0x7f0a0035

    .line 206
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "tf3Settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "currencyModifier"

    const/high16 v5, 0x3f800000    # 1.0f

    .line 209
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v5, "currencyName"

    const-string v6, "EUR"

    .line 210
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->getMultiReleaseCheckedPositions()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->getMultiReleaseCheckedPositions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v7, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 217
    iget-object v10, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 218
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v9

    float-to-double v10, v3

    invoke-virtual {v9, v10, v11}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    int-to-long v9, v9

    add-long/2addr v7, v9

    goto :goto_0

    :cond_0
    const v3, 0x7f08010f

    .line 222
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 223
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0c015d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v8, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0803d0

    .line 225
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 226
    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;

    invoke-direct {v2, p0, v5, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Ljava/util/List;Landroid/view/View;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08022d

    .line 245
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 246
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$3;

    invoke-direct {v1, p0, v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showNextMatchInfo(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v1, 0x7f08022c

    .line 361
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08022a

    .line 362
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 363
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v1

    const-string v2, ")"

    if-eqz v1, :cond_0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method addPositionTVs(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f08029e

    .line 596
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    const/high16 v4, 0x41c00000    # 24.0f

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/16 v8, 0x11

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    if-ge v2, v3, :cond_2

    .line 598
    new-instance v3, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v3, v11}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;-><init>(Landroid/content/Context;)V

    .line 599
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v10, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 601
    invoke-virtual {v3, v11}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    invoke-virtual {v3, v8}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setGravity(I)V

    .line 603
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    if-ne v8, v7, :cond_0

    .line 604
    invoke-virtual {v3, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextSize(F)V

    goto :goto_1

    .line 605
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v6, :cond_1

    .line 606
    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextSize(F)V

    .line 608
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x7f080340

    .line 610
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 611
    :goto_2
    iget v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsNumber:I

    if-ge v1, v0, :cond_5

    .line 612
    new-instance v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;-><init>(Landroid/content/Context;)V

    .line 613
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 614
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    invoke-virtual {v0, v8}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setGravity(I)V

    .line 616
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v7, :cond_3

    .line 617
    invoke-virtual {v0, v5}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextSize(F)V

    goto :goto_3

    .line 618
    :cond_3
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v6, :cond_4

    .line 619
    invoke-virtual {v0, v4}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextSize(F)V

    .line 621
    :cond_4
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method initDefaultContinueButton(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 290
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->continueButton:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0800c7

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->continueButton:Landroid/widget/Button;

    .line 109
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->matchToday:Z

    const v1, 0x7f08022b

    const v2, 0x7f080088

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->initDefaultContinueButton(Landroid/view/View;)V

    .line 113
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showNextMatchInfo(Landroid/view/View;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0800ea

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 118
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const v0, 0x7f08036c

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 124
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 627
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 629
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 631
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnMenuButtonClickedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0a007e

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 80
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->initView(Landroid/view/View;)V

    .line 81
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sortType:Lpl/mkrstudio/truefootball3/enums/SortType;

    invoke-virtual {p0, p2, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->sort(Lpl/mkrstudio/truefootball3/enums/SortType;Landroid/view/View;)V

    .line 83
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->addPositionTVs(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showPositions(Landroid/view/View;)V

    return-object p1
.end method

.method public select(Landroid/view/View;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "i"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    const-string v2, ""

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 394
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v1

    const/4 v4, 0x0

    const/16 v5, 0xb

    if-ge v1, v5, :cond_0

    .line 395
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->positionsChosen:[Z

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    aput-boolean v4, v1, v5

    goto :goto_0

    .line 397
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsChosen:[Z

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v6

    sub-int/2addr v6, v5

    aput-boolean v4, v1, v6

    .line 399
    :goto_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 400
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v2, v0}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->setSelection(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 402
    :cond_1
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getFirstFreePosition()B

    move-result v1

    const/4 v4, 0x1

    if-le v1, v3, :cond_2

    .line 404
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 405
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    aget-object v0, v7, v0

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p2, v5, v0}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->setSelection(ILjava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->positionsChosen:[Z

    aput-boolean v4, p2, v1

    goto :goto_1

    .line 408
    :cond_2
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getFirstFreeSub()B

    move-result v1

    if-le v1, v3, :cond_3

    .line 410
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Player;

    add-int/lit8 v3, v1, 0xb

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->setSelection(B)V

    .line 411
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    const-string v3, "SUB"

    invoke-virtual {v0, p2, v3, v2}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->setSelection(ILjava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsChosen:[Z

    aput-boolean v4, p2, v1

    .line 416
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showPositions(Landroid/view/View;)V

    return-void
.end method

.method public showPlayerInfo(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-direct {v0, v1, v2, p1, v3}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    .line 424
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->show()V

    :cond_1
    return-void
.end method

.method showPositions(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/16 v0, 0xb

    new-array v1, v0, [Z

    .line 553
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->positionsChosen:[Z

    .line 554
    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsNumber:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsChosen:[Z

    .line 556
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 557
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    if-ltz v4, :cond_0

    .line 558
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    if-ge v4, v0, :cond_1

    .line 559
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->positionsChosen:[Z

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v5

    aput-boolean v3, v4, v5

    .line 561
    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    if-lt v4, v0, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v4

    const/16 v5, 0x12

    if-ge v4, v5, :cond_0

    .line 562
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsChosen:[Z

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v2

    sub-int/2addr v2, v0

    aput-boolean v3, v4, v2

    goto :goto_0

    :cond_2
    const v0, 0x7f08029e

    .line 566
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 567
    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/16 v5, 0x96

    const/16 v6, 0x41

    const/16 v7, 0x91

    const/4 v8, 0x7

    if-ge v2, v4, :cond_4

    .line 568
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 569
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v4, v9, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 570
    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->positionsChosen:[Z

    aget-boolean v9, v9, v2

    if-nez v9, :cond_3

    .line 572
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 573
    invoke-static {v1, v8, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    .line 575
    :cond_3
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-static {v7}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Lpl/mkrstudio/truefootball3/enums/Position;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    invoke-static {v5, v8, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const v0, 0x7f080340

    .line 579
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 580
    :goto_3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 581
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 582
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v4, "SUB"

    .line 583
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->subsChosen:[Z

    aget-boolean v9, v9, v0

    if-nez v9, :cond_5

    .line 585
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    invoke-static {v1, v8, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_4

    .line 588
    :cond_5
    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 589
    invoke-static {v5, v8, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public showSquad(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 462
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "currencyModifier"

    const/high16 v4, 0x3f800000    # 1.0f

    .line 466
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v4, "currencyName"

    const-string v5, "EUR"

    .line 467
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 472
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 473
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 477
    :goto_0
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 478
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 479
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    .line 480
    invoke-virtual {v6, v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v8

    const-string v9, "pausing"

    if-nez v8, :cond_2

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "false"

    .line 483
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    :goto_2
    const-string v8, "true"

    .line 481
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "nr"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v8

    const-string v9, "position"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "name"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const-string v9, "skill"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    float-to-double v10, v1

    .line 488
    invoke-virtual {v6, v10, v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v10

    invoke-static {v10, v11, v0}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->shortFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "value"

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v11

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v11, v12, v13}, Lpl/mkrstudio/truefootball3/objects/Player;->getDrawableForShape(Lpl/mkrstudio/truefootball3/enums/Shape;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v11, "shape"

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const-string v11, "condition"

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/Locale;

    const-string v13, "en"

    invoke-direct {v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "drawable"

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v10, "nation"

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "edited"

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const-string v11, "age"

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getMorale()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const-string v11, "morale"

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_3
    const-string v8, "-"

    :goto_4
    const-string v11, "secondPosition"

    .line 502
    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v8

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result v11

    invoke-virtual {v8, v11}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object v8

    const-string v11, "contractEnd"

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v8

    const/4 v11, -0x1

    const/16 v12, 0xb

    const-string v13, "selection"

    if-le v8, v11, :cond_4

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v8

    if-ge v8, v12, :cond_4

    .line 506
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v8

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v10

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v8

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v10

    aget-object v8, v8, v10

    invoke-virtual {v6, v8}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 508
    :cond_4
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v6

    if-lt v6, v12, :cond_5

    const-string v6, "SUB"

    .line 509
    invoke-interface {v7, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 511
    :cond_5
    invoke-interface {v7, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 515
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    const v0, 0x7f08032c

    .line 518
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ListView;

    .line 519
    new-instance v8, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget v4, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showedParameter:I

    move-object v0, v8

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;-><init>(Landroid/content/Context;ILjava/util/List;ILandroid/view/View;Lpl/mkrstudio/truefootball3/fragments/SquadFragment;)V

    iput-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->squadAdapter:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    .line 521
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method sort(Lpl/mkrstudio/truefootball3/enums/SortType;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "sortType",
            "view"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$5;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Lpl/mkrstudio/truefootball3/enums/SortType;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 457
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showSquad(Landroid/view/View;)V

    .line 458
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showPositions(Landroid/view/View;)V

    return-void
.end method
