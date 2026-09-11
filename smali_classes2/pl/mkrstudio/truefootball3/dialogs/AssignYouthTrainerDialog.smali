.class public Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;
.super Landroid/app/Dialog;
.source "AssignYouthTrainerDialog.java"


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field previousTrainer:Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

.field youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

.field youthTeamTrainerSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "youthTeamName",
            "previousTrainer"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0036

    .line 47
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 49
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->previousTrainer:Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    .line 53
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 54
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Youth;->getYouthTeams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 55
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getType()Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    const v0, 0x7f080060

    .line 64
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 65
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->arrowRight1:Landroid/widget/Button;

    .line 67
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v1, 0x7f0803d9

    .line 69
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getYouthTrainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    .line 72
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object v3

    if-nez v3, :cond_0

    .line 73
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00d4

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 78
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f080259

    .line 80
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;

    invoke-direct {v2, p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e0

    .line 91
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 92
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->arrowLeft1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->arrowRight1:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$4;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->disableEnableButtons()V

    return-void
.end method


# virtual methods
.method disableEnableButtons()V
    .locals 2

    .line 123
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->disableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->enableLeftButton(Landroid/widget/Button;)V

    .line 128
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->disableRightButton(Landroid/widget/Button;)V

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->enableRightButton(Landroid/widget/Button;)V

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

    .line 136
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 137
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

    .line 146
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 147
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

    .line 141
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 142
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

    .line 151
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
