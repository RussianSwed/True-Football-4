.class public Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;
.super Landroid/app/Dialog;
.source "SwapWithOtherTeamDialog.java"


# instance fields
.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

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

.field selectedCountryCode:Ljava/lang/String;

.field selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

.field teamSpinner:Landroid/widget/Spinner;

.field teamToSwap:Lpl/mkrstudio/truefootball3/objects/Team;

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
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "teamToSwap",
            "selectedCountryCode"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->move:Z

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0059

    .line 45
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 49
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teamToSwap:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 50
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->selectedCountryCode:Ljava/lang/String;

    const p2, 0x7f0801d7

    .line 52
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagueSpinner:Landroid/widget/Spinner;

    const p2, 0x7f08036d

    .line 53
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teamSpinner:Landroid/widget/Spinner;

    const p2, 0x7f080061

    .line 54
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowLeft2:Landroid/widget/Button;

    const p2, 0x7f080062

    .line 55
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowLeft3:Landroid/widget/Button;

    const p2, 0x7f080069

    .line 56
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowRight2:Landroid/widget/Button;

    const p2, 0x7f08006a

    .line 57
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowRight3:Landroid/widget/Button;

    .line 60
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->initLeagueSpinner()V

    .line 61
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->initTeamSpinner()V

    .line 63
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 64
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 66
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagueSpinner:Landroid/widget/Spinner;

    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$1;

    invoke-direct {p3, p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 76
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teamSpinner:Landroid/widget/Spinner;

    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$2;

    invoke-direct {p3, p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 86
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowLeft2:Landroid/widget/Button;

    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$3;

    invoke-direct {p3, p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowLeft3:Landroid/widget/Button;

    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$4;

    invoke-direct {p3, p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowRight2:Landroid/widget/Button;

    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$5;

    invoke-direct {p3, p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$5;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowRight3:Landroid/widget/Button;

    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$6;

    invoke-direct {p3, p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$6;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08010c

    .line 142
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 143
    new-instance p3, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$7;

    invoke-direct {p3, p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$7;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p2

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method


# virtual methods
.method public getSelectedTeam()Lpl/mkrstudio/truefootball3/objects/Team;
    .locals 1

    .line 238
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-object v0
.end method

.method initLeagueSpinner()V
    .locals 4

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    .line 158
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->selectedCountryCode:Ljava/lang/String;

    const-string v1, "USA"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    const-string v1, "USA_1E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    const-string v1, "USA_1W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v1, "CAN"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    const-string v1, "CAN_1E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    const-string v1, "CAN_1W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_1
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

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

    .line 171
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_2
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$8;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$8;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 194
    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00d4

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    .line 195
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 196
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 197
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagueSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 199
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 200
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 203
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070085

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getContext()Landroid/content/Context;

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

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teams:Ljava/util/List;

    .line 211
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagueSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 214
    :cond_0
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->leagues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v2

    invoke-virtual {v2, v0}, Lpl/mkrstudio/truefootball3/objects/World;->getTeamGroupByCode(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 217
    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$9;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog$9;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 226
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teams:Ljava/util/List;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teams:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teamToSwap:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00d4

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teams:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 232
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 233
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 234
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->teamSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method

.method public isMove()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->move:Z

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

    .line 250
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->move:Z

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

    .line 242
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SwapWithOtherTeamDialog;->selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    return-void
.end method
