.class public Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;
.super Landroid/app/Dialog;
.source "NewYouthTeamDialog.java"


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field youthTeamTrainerSpinner:Landroid/widget/Spinner;

.field youthTeamTypeSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0049

    .line 47
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 49
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 8

    const v0, 0x7f080060

    .line 58
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 59
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowRight1:Landroid/widget/Button;

    const v0, 0x7f080061

    .line 60
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 61
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowRight2:Landroid/widget/Button;

    .line 63
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v1, 0x7f0803da

    .line 65
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTypeSpinner:Landroid/widget/Spinner;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;->values()[Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 68
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object v6

    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/objects/Youth;->existsTeam(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 69
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00d4

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    .line 73
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 74
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v2, 0x7f0803d9

    .line 76
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getYouthTrainers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    .line 79
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object v7

    if-nez v7, :cond_2

    .line 80
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_3
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 84
    invoke-virtual {v5, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 85
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v3, 0x7f080259

    .line 87
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 88
    new-instance v4, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e0

    .line 95
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 96
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowLeft1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowRight1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$4;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowLeft2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$5;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$5;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowRight2:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$6;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$6;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->disableEnableButtons()V

    return-void
.end method


# virtual methods
.method disableEnableButtons()V
    .locals 2

    .line 149
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->disableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->enableLeftButton(Landroid/widget/Button;)V

    .line 154
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->disableRightButton(Landroid/widget/Button;)V

    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->enableRightButton(Landroid/widget/Button;)V

    .line 160
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->disableLeftButton(Landroid/widget/Button;)V

    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->enableLeftButton(Landroid/widget/Button;)V

    .line 165
    :goto_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 166
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->disableRightButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 168
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->enableRightButton(Landroid/widget/Button;)V

    :goto_3
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

    .line 173
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 174
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

    .line 183
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 184
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

    .line 178
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 179
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

    .line 188
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
