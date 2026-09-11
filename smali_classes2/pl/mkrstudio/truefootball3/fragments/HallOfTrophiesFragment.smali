.class public Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;
.super Landroidx/fragment/app/Fragment;
.source "HallOfTrophiesFragment.java"


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field shownTrophyPosition:I

.field trophyDateAndTeam:Landroid/widget/TextView;

.field trophyImage:Landroid/widget/ImageView;

.field trophyName:Landroid/widget/TextView;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->shownTrophyPosition:I

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->showTrophy()V

    return-void
.end method

.method private showTrophy()V
    .locals 4

    .line 95
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTrophies()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->shownTrophyPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Trophy;

    .line 97
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Trophy;->getCompetitionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyImage:Landroid/widget/ImageView;

    const v2, 0x7f070138

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Trophy;->getCompetitionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyImage:Landroid/widget/ImageView;

    const v2, 0x7f07013c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Trophy;->getCompetitionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyImage:Landroid/widget/ImageView;

    const v2, 0x7f07013a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Trophy;->getCompetitionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WORLD_CUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyImage:Landroid/widget/ImageView;

    const v2, 0x7f070144

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Trophy;->getCompetitionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyImage:Landroid/widget/ImageView;

    const v2, 0x7f070142

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Trophy;->getCompetitionCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyImage:Landroid/widget/ImageView;

    const v2, 0x7f07013e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 110
    :cond_5
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyImage:Landroid/widget/ImageView;

    const v2, 0x7f070140

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :goto_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Trophy;->getCompetitionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getTrophyNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyDateAndTeam:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Trophy;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Trophy;->getSeason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method initView(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f08023b

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0803ac

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0803ae

    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyImage:Landroid/widget/ImageView;

    const v2, 0x7f0803b0

    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyName:Landroid/widget/TextView;

    const v2, 0x7f0803af

    .line 56
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->trophyDateAndTeam:Landroid/widget/TextView;

    .line 58
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTrophies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080060

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->arrowRight1:Landroid/widget/Button;

    .line 68
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->arrowLeft1:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->arrowRight1:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$2;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->showTrophy()V

    :goto_0
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

    const p3, 0x7f0a006b

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 44
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/HallOfTrophiesFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method
