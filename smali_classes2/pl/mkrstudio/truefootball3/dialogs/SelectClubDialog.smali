.class public Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;
.super Landroid/app/Dialog;
.source "SelectClubDialog.java"


# instance fields
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
            "Ljava/lang/String;",
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

.field move:Z

.field selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

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
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "fromClub"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->move:Z

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0054

    .line 57
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    const v1, 0x7f08011f

    .line 62
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    const v1, 0x7f0801d7

    .line 63
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagueSpinner:Landroid/widget/Spinner;

    const v1, 0x7f08036d

    .line 64
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->teamSpinner:Landroid/widget/Spinner;

    const v1, 0x7f080060

    .line 65
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowLeft1:Landroid/widget/Button;

    const v1, 0x7f080061

    .line 66
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowLeft2:Landroid/widget/Button;

    const v1, 0x7f080062

    .line 67
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowLeft3:Landroid/widget/Button;

    const v1, 0x7f080068

    .line 68
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowRight1:Landroid/widget/Button;

    const v1, 0x7f080069

    .line 69
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowRight2:Landroid/widget/Button;

    const v1, 0x7f08006a

    .line 70
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowRight3:Landroid/widget/Button;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countries:Ljava/util/List;

    .line 73
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Continent;

    .line 74
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 75
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->hasTeam()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countries:Ljava/util/List;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    .line 81
    invoke-virtual {v1, p1}, Ljava/text/Collator;->setStrength(I)V

    .line 83
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countries:Ljava/util/List;

    new-instance v3, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$1;

    invoke-direct {v3, p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;Ljava/text/Collator;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00d2

    invoke-direct {v3, v4, v5, v1, p1}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 97
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 99
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->initLeagueSpinner()V

    .line 100
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->initTeamSpinner()V

    .line 102
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 104
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 106
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$2;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagueSpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$3;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f08010c

    .line 128
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 130
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->teamSpinner:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;

    invoke-direct {v3, p0, p2, v1}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 142
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    if-ne v2, p2, :cond_3

    .line 143
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    :goto_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowLeft1:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$5;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$5;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowLeft2:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$6;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$6;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowLeft3:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$7;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$7;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowRight1:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$8;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$8;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowRight2:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$9;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$9;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowRight3:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$10;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$10;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$11;

    invoke-direct {p1, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$11;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 317
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method initLeagueSpinner()V
    .locals 4

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    .line 239
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countries:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->countrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "USA"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    const-string v1, "USA_1E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    const-string v1, "USA_1W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v1, "CAN"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    const-string v1, "CAN_1E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    const-string v1, "CAN_1W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_2
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$12;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$12;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 275
    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00d4

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 276
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 278
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagueSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 280
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 281
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 284
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070086

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method initTeamSpinner()V
    .locals 5

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->teams:Ljava/util/List;

    .line 292
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 295
    :cond_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->leagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 298
    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$13;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog$13;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 307
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->teams:Ljava/util/List;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00d4

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->teams:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 311
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 312
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 313
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->teamSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method

.method public isMove()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->move:Z

    return v0
.end method

.method public setMove(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "move"
        }
    .end annotation

    .line 329
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->move:Z

    return-void
.end method

.method public setSelectedTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedTeam"
        }
    .end annotation

    .line 321
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectClubDialog;->selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method
