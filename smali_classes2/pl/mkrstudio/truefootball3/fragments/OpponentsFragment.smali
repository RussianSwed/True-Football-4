.class public Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;
.super Landroidx/fragment/app/Fragment;
.source "OpponentsFragment.java"


# instance fields
.field analyzeButton:Landroid/widget/Button;

.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

.field countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation
.end field

.field countrySpinner:Landroid/widget/Spinner;

.field leagueSpinner:Landroid/widget/Spinner;

.field leagues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

.field removeButton:Landroid/widget/Button;

.field resultsButton:Landroid/widget/Button;

.field selectedAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

.field selectedCountryPosition:I

.field selectedLeaguePosition:I

.field selectedTeamPosition:I

.field showSquadButton:Landroid/widget/Button;

.field teamSpinner:Landroid/widget/Spinner;

.field teams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field teamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;"
        }
    .end annotation
.end field

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamsList:Ljava/util/List;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedCountryPosition:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedLeaguePosition:I

    .line 63
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedTeamPosition:I

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initTeamSpinner(Landroid/view/View;)V

    return-void
.end method

.method private initButtons(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080315

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->showSquadButton:Landroid/widget/Button;

    const v0, 0x7f080058

    .line 340
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->analyzeButton:Landroid/widget/Button;

    const v0, 0x7f0802be

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->removeButton:Landroid/widget/Button;

    const v0, 0x7f0802c7

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->resultsButton:Landroid/widget/Button;

    .line 344
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->showSquadButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 346
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->analyzeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->removeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->resultsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->showSquadButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$13;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->analyzeButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->removeButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$15;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->resultsButton:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$16;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$16;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initCountrySpinner(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f08011f

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countrySpinner:Landroid/widget/Spinner;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countries:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 101
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 102
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->hasTeam()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 110
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countries:Ljava/util/List;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$1;

    invoke-direct {v3, p0, v0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Ljava/text/Collator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 123
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_3
    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedCountryPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 127
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 128
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 129
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 131
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedCountryPosition:I

    goto :goto_2

    .line 138
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countrySpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0a00d2

    invoke-direct {v3, v4, v5, v0, v1}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 141
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countrySpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$2;

    invoke-direct {v2, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 157
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countrySpinner:Landroid/widget/Spinner;

    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedCountryPosition:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 158
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countrySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    const v0, 0x7f080060

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowRight1:Landroid/widget/Button;

    .line 163
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowLeft1:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$3;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowRight1:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$4;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSpinners(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initCountrySpinner(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initLeagueSpinner(Landroid/view/View;)V

    .line 92
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initTeamSpinner(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->showAnalysedOpponents(Landroid/view/View;)V

    .line 94
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initButtons(Landroid/view/View;)V

    return-void
.end method

.method private initTeamSpinner(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f08036d

    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamSpinner:Landroid/widget/Spinner;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teams:Ljava/util/List;

    .line 266
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countries:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagues:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 271
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getAnalyzedTeams()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 275
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    :cond_1
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$9;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$9;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 288
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 289
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teams:Ljava/util/List;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 293
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 295
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamSpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/TeamSpinnerAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a00d7

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamsList:Ljava/util/List;

    invoke-direct {v2, v3, v4, v0, v5}, Lpl/mkrstudio/truefootball3/adapters/TeamSpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 296
    iget v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedTeamPosition:I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 297
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedTeamPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 302
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->teamSpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$10;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$10;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f080062

    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowLeft3:Landroid/widget/Button;

    const v0, 0x7f08006a

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowRight3:Landroid/widget/Button;

    .line 315
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowLeft3:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$11;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$11;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowRight3:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$12;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$12;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method initLeagueSpinner(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0801d7

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagueSpinner:Landroid/widget/Spinner;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countries:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagues:Ljava/util/List;

    .line 190
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$5;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a00d4

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 210
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 211
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagueSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagueSpinner:Landroid/widget/Spinner;

    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedLeaguePosition:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v0, 0x7f080061

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowRight2:Landroid/widget/Button;

    .line 217
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 221
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070086

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 225
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowLeft2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$6;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->arrowRight2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$7;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->leagueSpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initSpinners(Landroid/view/View;)V

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

    .line 530
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 532
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 534
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

    const p3, 0x7f0a0078

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 80
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showAnalysedOpponents(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f08023a

    .line 467
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    .line 469
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getAnalyzedTeams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 472
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f080375

    .line 475
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getAnalyzedTeams()Ljava/util/List;

    move-result-object v1

    .line 481
    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$17;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$17;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 492
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 494
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "teamEmblem"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "teamName"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToResults()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "daysLeftToResults"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getDaysLeftToExpire()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "daysLeftToExpire"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 501
    :cond_1
    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    .line 502
    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;->setNotifyOnChange(Z)V

    .line 504
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;

    invoke-direct {v0, p0, v3, v1}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$18;-><init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Lpl/mkrstudio/truefootball3/adapters/TeamAnalysisAdapter;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public showTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    invoke-interface {v0, p1}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;->onOpponentSelected(Lpl/mkrstudio/truefootball3/objects/Team;)V

    return-void
.end method
