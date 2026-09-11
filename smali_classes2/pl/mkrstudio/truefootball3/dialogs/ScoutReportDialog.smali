.class public Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;
.super Landroid/app/Dialog;
.source "ScoutReportDialog.java"


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field player:Lpl/mkrstudio/truefootball3/objects/Player;

.field scoutSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "player"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0052

    .line 43
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 45
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 49
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 10

    const v0, 0x7f080060

    .line 53
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 54
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->arrowRight1:Landroid/widget/Button;

    .line 56
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v0, 0x7f0802e8

    .line 58
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->scoutSpinner:Landroid/widget/Spinner;

    .line 59
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getScouting()Lpl/mkrstudio/truefootball3/objects/Scouting;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getFreeScouts()Ljava/util/List;

    move-result-object v3

    .line 61
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00d4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 63
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->scoutSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 65
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->arrowLeft1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->arrowRight1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->disableEnableButtons()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "tf3Settings"

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "currencyModifier"

    const/high16 v4, 0x3f800000    # 1.0f

    .line 95
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const-string v6, "currencyName"

    const-string v7, "EUR"

    .line 96
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    invoke-static {v0, v6}, Lpl/mkrstudio/truefootball3/helpers/WorldHelper;->calculateDistanceModifier(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Country;)F

    move-result v6

    const v7, 0x7f0802c3

    .line 99
    invoke-virtual {p0, v7}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    mul-float v2, v2, v6

    float-to-long v8, v2

    .line 100
    invoke-static {v8, v9, v1}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/mkrstudio/truefootball3/helpers/WorldHelper;->calculateDistanceModifier(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Country;)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v4, v0

    const v0, 0x7f0802c5

    .line 103
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v7, 0x7f0c0220

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08010c

    .line 106
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 107
    new-instance v7, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;Ljava/util/List;ILpl/mkrstudio/truefootball3/objects/UserData;F)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method disableEnableButtons()V
    .locals 2

    .line 122
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->scoutSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->disableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->enableLeftButton(Landroid/widget/Button;)V

    .line 127
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->scoutSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->scoutSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->disableRightButton(Landroid/widget/Button;)V

    goto :goto_1

    .line 130
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->enableRightButton(Landroid/widget/Button;)V

    :goto_1
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

    .line 135
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 136
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

    .line 145
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 146
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

    .line 140
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 141
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

    .line 150
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/ScoutReportDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 151
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
