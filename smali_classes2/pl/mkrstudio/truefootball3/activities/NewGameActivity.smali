.class public Lpl/mkrstudio/truefootball3/activities/NewGameActivity;
.super Landroid/app/Activity;
.source "NewGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitActivityProgressTask;,
        Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;
    }
.end annotation


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

.field chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field countrySpinner:Landroid/widget/Spinner;

.field editedRB:Landroid/widget/RadioButton;

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

.field observedCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field randomRB:Landroid/widget/RadioButton;

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

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->observedCountries:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initViews()V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initLeagueNames()V

    return-void
.end method

.method private initLeagueNames()V
    .locals 5

    .line 904
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "True Football 3/league_names.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "league_names.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 914
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 915
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 916
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getLeagueNames()Ljava/util/HashMap;

    move-result-object v0

    .line 918
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    const-string v3, "\\|"

    .line 921
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 922
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 925
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 928
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private initViews()V
    .locals 9

    const v0, 0x7f0800d3

    .line 125
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0800c8

    .line 126
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f080227

    .line 128
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0802a9

    .line 129
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    const v2, 0x7f08011f

    .line 133
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countrySpinner:Landroid/widget/Spinner;

    const v2, 0x7f0801d7

    .line 134
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagueSpinner:Landroid/widget/Spinner;

    const v2, 0x7f08036d

    .line 135
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    const v2, 0x7f080060

    .line 137
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowLeft1:Landroid/widget/Button;

    const v2, 0x7f080061

    .line 138
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowLeft2:Landroid/widget/Button;

    const v2, 0x7f080062

    .line 139
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowLeft3:Landroid/widget/Button;

    const v2, 0x7f080068

    .line 140
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowRight1:Landroid/widget/Button;

    const v2, 0x7f080069

    .line 141
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowRight2:Landroid/widget/Button;

    const v2, 0x7f08006a

    .line 142
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowRight3:Landroid/widget/Button;

    const v2, 0x7f08016a

    .line 144
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->editedRB:Landroid/widget/RadioButton;

    const v2, 0x7f0802ab

    .line 145
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->randomRB:Landroid/widget/RadioButton;

    .line 147
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->editedRB:Landroid/widget/RadioButton;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    .line 150
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 151
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 152
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Country;->getOriginalContinentalRankPoints()I

    move-result v7

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/objects/Country;->setContinentalRankPoints(I)V

    .line 153
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v6

    .line 154
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 155
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalRank()I

    move-result v8

    invoke-virtual {v7, v8}, Lpl/mkrstudio/truefootball3/objects/Team;->setRank(I)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/World;->getPlayableCountries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 161
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_3
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    const-string v5, "CAN"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 165
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_4
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    const-string v5, "USA"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 167
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_5
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    .line 170
    invoke-virtual {v2, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 172
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    new-instance v6, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$1;

    invoke-direct {v6, p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$1;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;Ljava/text/Collator;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 185
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v6, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    const v7, 0x7f0a00d2

    invoke-direct {v6, p0, v7, v2, v3}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 187
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 189
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initLeagueSpinner()V

    .line 190
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initTeamSpinner()V

    .line 191
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initCountrySelect()V

    .line 193
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 194
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 195
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 197
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countrySpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$2;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$2;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 211
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagueSpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$3;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$3;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 221
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$4;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$4;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 232
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 233
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->initTeamInfo()V

    .line 235
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$5;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$5;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0x19

    if-le v0, v2, :cond_6

    const v0, 0x3f19999a    # 0.6f

    .line 243
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextScaleX(F)V

    goto :goto_2

    .line 244
    :cond_6
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_7

    const v0, 0x3f333333    # 0.7f

    .line 245
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextScaleX(F)V

    goto :goto_2

    .line 246
    :cond_7
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_8

    const v0, 0x3f4ccccd    # 0.8f

    .line 247
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextScaleX(F)V

    .line 250
    :cond_8
    :goto_2
    new-instance v0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowLeft1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$7;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$7;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowLeft2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$8;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$8;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowLeft3:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$9;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$9;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowRight1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$10;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$10;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowRight2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$11;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$11;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowRight3:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$12;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$12;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 519
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "True Football 3"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 526
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

    .line 527
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

    .line 529
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 531
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 532
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 534
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 536
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 537
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
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

    .line 121
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/LocaleHelper;->getCustomConfig(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method initCountrySelect()V
    .locals 3

    const v0, 0x7f080046

    .line 434
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08024a

    .line 435
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/apmem/tools/layouts/FlowLayout;

    .line 436
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$14;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    .line 450
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    invoke-virtual {v1, v2}, Lorg/apmem/tools/layouts/FlowLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initFlagView()V
    .locals 6

    const v0, 0x7f08018b

    .line 579
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 580
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/Locale;

    const-string v5, "en"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_big"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 581
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method initLeagueSpinner()V
    .locals 6

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    .line 364
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countries:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "USA"

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    const-string v2, "USA_1E"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    const-string v2, "USA_1W"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "CAN"

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    const-string v1, "CAN_1E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    const-string v1, "CAN_1W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 374
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getPlayableLeagues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 375
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-lt v4, v5, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v3

    invoke-virtual {v3, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 376
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_3
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$13;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$13;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 402
    invoke-static {v2, p0}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 417
    :cond_4
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0a00d4

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 418
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 419
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 421
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagueSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 423
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 424
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 427
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070086

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method initTeamInfo()V
    .locals 8

    const v0, 0x7f080365

    .line 542
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08036e

    .line 543
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u20ac"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getBudget()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-long v3, v3

    const-string v7, "EUR"

    invoke-static {v3, v4, v7}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->shortFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCapacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08016b

    .line 548
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 552
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-direct {p0, v0, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V

    const v0, 0x7f080335

    .line 554
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 555
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    .line 556
    :goto_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 557
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07038b

    .line 558
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 559
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v3

    float-to-double v3, v3

    cmpl-double v7, v1, v3

    if-nez v7, :cond_1

    .line 562
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07038c

    .line 563
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v5

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v3

    float-to-double v3, v3

    cmpl-double v5, v1, v3

    if-nez v5, :cond_2

    .line 567
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07038d

    .line 568
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 571
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->chosenTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v3

    float-to-double v3, v3

    cmpl-double v5, v1, v3

    if-nez v5, :cond_3

    .line 572
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07038e

    .line 573
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 574
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method initTeamSpinner()V
    .locals 6

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teams:Ljava/util/List;

    .line 482
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 485
    :cond_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 488
    new-instance v2, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$15;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$15;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 497
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teams:Ljava/util/List;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    :cond_1
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 505
    :goto_1
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 506
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teams:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 509
    :cond_2
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    new-instance v4, Lpl/mkrstudio/truefootball3/adapters/TeamSpinnerAdapter;

    const v5, 0x7f0a00d7

    invoke-direct {v4, p0, v5, v2, v0}, Lpl/mkrstudio/truefootball3/adapters/TeamSpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 511
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 513
    :goto_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagues:Ljava/util/List;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " II"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_2

    :cond_3
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

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->requestWindowFeature(I)Z

    const p1, 0x7f0a0025

    .line 113
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 116
    new-instance p1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitActivityProgressTask;

    invoke-direct {p1, p0, p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitActivityProgressTask;-><init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity;Lpl/mkrstudio/truefootball3/activities/NewGameActivity;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitActivityProgressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPause()V
    .locals 2

    const v0, 0x7f0801f7

    .line 942
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 943
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 944
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 946
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const v0, 0x7f0801f7

    .line 935
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070267

    .line 936
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 937
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method showSelectedCountries()V
    .locals 12

    const-string v0, "en"

    const v1, 0x7f08024a

    .line 455
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/apmem/tools/layouts/FlowLayout;

    const v2, 0x7f080046

    .line 456
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 457
    invoke-virtual {v1}, Lorg/apmem/tools/layouts/FlowLayout;->removeAllViews()V

    .line 458
    invoke-virtual {v1, v2}, Lorg/apmem/tools/layouts/FlowLayout;->addView(Landroid/view/View;)V

    .line 459
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->observedCountries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 460
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    const/16 v3, 0x8

    .line 462
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v2, "layout_inflater"

    .line 463
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 464
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->observedCountries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const v6, 0x7f0a00c7

    .line 465
    invoke-virtual {v2, v6, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f080222

    .line 466
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "string"

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 470
    :catch_0
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v7, 0x7f08018b

    .line 473
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "drawable"

    invoke-virtual {v9, v5, v11, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 475
    invoke-virtual {v1, v6}, Lorg/apmem/tools/layouts/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method
