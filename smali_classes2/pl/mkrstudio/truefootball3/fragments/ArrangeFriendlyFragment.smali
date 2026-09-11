.class public Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;
.super Landroidx/fragment/app/Fragment;
.source "ArrangeFriendlyFragment.java"


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowLeft4:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

.field arrowRight4:Landroid/widget/Button;

.field countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            ">;"
        }
    .end annotation
.end field

.field countryPosition:I

.field countrySpinner:Landroid/widget/Spinner;

.field dateSpinner:Landroid/widget/Spinner;

.field homeAwaySpinner:Landroid/widget/Spinner;

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

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamsList:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countryPosition:I

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initTeamSpinner(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;Landroid/view/View;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initDateSpinner(Landroid/view/View;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V

    return-void
.end method

.method private initButtons(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080259

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0800e0

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 108
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$2;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

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

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countrySpinner:Landroid/widget/Spinner;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countries:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

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

    .line 120
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

    .line 121
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->hasTeam()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 129
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countries:Ljava/util/List;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$3;

    invoke-direct {v3, p0, v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;Ljava/text/Collator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 142
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_3
    iput v1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countryPosition:I

    .line 146
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 147
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

    .line 148
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 149
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 150
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countryPosition:I

    goto :goto_2

    .line 155
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countrySpinner:Landroid/widget/Spinner;

    new-instance v4, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0a00d2

    invoke-direct {v4, v5, v6, v2, v1}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countrySpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$4;

    invoke-direct {v3, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 168
    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countryPosition:I

    if-nez v2, :cond_8

    .line 169
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 170
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countrySpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 172
    :cond_7
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 175
    :cond_8
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 178
    :goto_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countrySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    const v0, 0x7f080060

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight1:Landroid/widget/Button;

    .line 183
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft1:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$5;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight1:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$6;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDateSpinner(Landroid/view/View;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "rival",
            "time"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    const/16 v6, 0x1e

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getAvailableDatesForFriendlyMatches(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;I)Ljava/util/List;

    move-result-object p2

    .line 294
    new-instance p3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a00d5

    invoke-direct {p3, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 295
    invoke-virtual {p3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v0, 0x7f08013a

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    .line 297
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 298
    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 299
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const p3, 0x7f080259

    .line 300
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 303
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "-"

    .line 304
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance p3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 306
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1
    const p2, 0x7f080062

    .line 309
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft3:Landroid/widget/Button;

    const p2, 0x7f08006a

    .line 310
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight3:Landroid/widget/Button;

    .line 312
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->disableEnableDateSpinnerArrows()V

    .line 314
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft3:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight3:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$12;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$12;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initHomeAwaySpinner(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0801ad

    .line 356
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->homeAwaySpinner:Landroid/widget/Spinner;

    .line 357
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f020002

    const v2, 0x7f0a00d5

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v1, 0x1090009

    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 359
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->homeAwaySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 360
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->homeAwaySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 361
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->homeAwaySpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$13;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$13;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f080063

    .line 370
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft4:Landroid/widget/Button;

    const v0, 0x7f08006b

    .line 371
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight4:Landroid/widget/Button;

    .line 373
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft4:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$14;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$14;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight4:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$15;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$15;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

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

    .line 397
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initCountrySpinner(Landroid/view/View;)V

    .line 398
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initTeamSpinner(Landroid/view/View;)V

    .line 399
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initHomeAwaySpinner(Landroid/view/View;)V

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

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamSpinner:Landroid/widget/Spinner;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teams:Ljava/util/List;

    .line 209
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countries:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Country;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v0

    .line 211
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$7;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 221
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 222
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teams:Ljava/util/List;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamSpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/TeamSpinnerAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a00d7

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamsList:Ljava/util/List;

    invoke-direct {v2, v3, v4, v0, v5}, Lpl/mkrstudio/truefootball3/adapters/TeamSpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 232
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 235
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamSpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f080061

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight2:Landroid/widget/Button;

    .line 251
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft2:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$9;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$9;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight2:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$10;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$10;-><init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isHome()Z
    .locals 1

    .line 411
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->homeAwaySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addNotes(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080244

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0c0429

    .line 416
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "\n"

    .line 417
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "tf3Settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "currencyModifier"

    const/high16 v4, 0x3f800000    # 1.0f

    .line 420
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const-string v4, "currencyName"

    const-string v5, "EUR"

    .line 421
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam1()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam2()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->isTripAbroad(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)Z

    move-result v4

    .line 424
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam1()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam2()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->isTripToOtherContinent(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)Z

    move-result v5

    .line 426
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam1()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam2()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->homeAwaySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    const/4 v13, 0x1

    if-nez v6, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    move v11, v4

    move v12, v5

    invoke-virtual/range {v7 .. v12}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateFee(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZZZ)I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    .line 428
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0283

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    long-to-float v6, v6

    mul-float v6, v6, v2

    float-to-long v6, v6

    invoke-static {v6, v7, v1}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 431
    :cond_1
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateTripCost(ZZ)I

    move-result v4

    .line 432
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->isHome()Z

    move-result v5

    if-nez v5, :cond_2

    .line 433
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0635

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-long v7, v4

    invoke-static {v7, v8, v1}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 436
    :cond_2
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->homeAwaySpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam1()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam2()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCapacity()I

    move-result v5

    invoke-virtual {v4, v13, v5}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getMatchOrganisationCost(ZI)I

    move-result v4

    .line 437
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->isHome()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 438
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c046a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-long v7, v4

    invoke-static {v7, v8, v1}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 439
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method disableEnableDateSpinnerArrows()V
    .locals 3

    .line 340
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 342
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->disableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 345
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_2

    .line 347
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 348
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->enableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 351
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->enableRightButton(Landroid/widget/Button;)V

    :goto_0
    return-void
.end method

.method disableLeftButton(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton(Landroid/widget/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 450
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton(Landroid/widget/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 460
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method getTeam1()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 403
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    return-object v0
.end method

.method getTeam2()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 2

    .line 407
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamsList:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method makeOffer()V
    .locals 17

    move-object/from16 v0, p0

    .line 74
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getFriendlyOffers()Ljava/util/List;

    move-result-object v1

    new-instance v10, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam1()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam2()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam1()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam2()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->isHome()Z

    move-result v14

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam1()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam2()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->isTripAbroad(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)Z

    move-result v15

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam1()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getTeam2()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->isTripToOtherContinent(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;)Z

    move-result v16

    invoke-virtual/range {v11 .. v16}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->calculateFee(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;ZZZ)I

    move-result v7

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->homeAwaySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;-><init>(BBLpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;IZLjava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
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

    const p3, 0x7f0a0062

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 67
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initButtons(Landroid/view/View;)V

    .line 68
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initSpinners(Landroid/view/View;)V

    return-object p1
.end method
