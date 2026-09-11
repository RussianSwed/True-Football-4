.class public Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;
.super Landroidx/fragment/app/Fragment;
.source "TacticsFragment.java"


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowLeft4:Landroid/widget/Button;

.field arrowLeft5:Landroid/widget/Button;

.field arrowLeft6:Landroid/widget/Button;

.field arrowLeft7:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

.field arrowRight4:Landroid/widget/Button;

.field arrowRight5:Landroid/widget/Button;

.field arrowRight6:Landroid/widget/Button;

.field arrowRight7:Landroid/widget/Button;

.field formation:Landroid/widget/Spinner;

.field gameplay:Landroid/widget/Spinner;

.field individualOrders:Landroid/widget/Spinner;

.field individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

.field offsideTraps:Landroid/widget/Spinner;

.field pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field pressing:Landroid/widget/Spinner;

.field showedParameter:I

.field teamIndividual:Landroid/widget/TextView;

.field teamIndividualVF:Landroid/widget/ViewFlipper;

.field timeWasting:Landroid/widget/Spinner;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->showedParameter:I

    return-void
.end method

.method private addCustomFormations(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Formation;",
            ">;)V"
        }
    .end annotation

    .line 534
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 535
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "tf3Settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 537
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v4, "customFormations"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 538
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 539
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 541
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 542
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 543
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_0

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lpl/mkrstudio/truefootball3/enums/Position;->valueOf(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 546
    :cond_1
    new-instance v5, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$22;

    invoke-direct {v5, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$22;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-array v5, v1, [Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v7, 0x0

    .line 560
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 561
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 564
    :cond_2
    new-instance v6, Lpl/mkrstudio/truefootball3/objects/Formation;

    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v5}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    .line 565
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method changeFormation(Landroid/view/View;Lpl/mkrstudio/truefootball3/objects/Formation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "formation"
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->setFormation(Lpl/mkrstudio/truefootball3/objects/Formation;)V

    const/4 p2, 0x0

    .line 901
    invoke-virtual {p0, p1, p2}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->showIndividualOrders(Landroid/view/View;I)V

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

    .line 571
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 572
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

    .line 581
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 582
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

    .line 576
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 577
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

    .line 586
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 587
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

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

    const v0, 0x7f080366

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividual:Landroid/widget/TextView;

    const v1, 0x7f0c0294

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080367

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividualVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f080060

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080061

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080062

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft3:Landroid/widget/Button;

    const v0, 0x7f080063

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft4:Landroid/widget/Button;

    const v0, 0x7f080064

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft5:Landroid/widget/Button;

    const v0, 0x7f080065

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft6:Landroid/widget/Button;

    const v0, 0x7f080066

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft7:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight1:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight2:Landroid/widget/Button;

    const v0, 0x7f08006a

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight3:Landroid/widget/Button;

    const v0, 0x7f08006b

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight4:Landroid/widget/Button;

    const v0, 0x7f08006c

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight5:Landroid/widget/Button;

    const v0, 0x7f08006d

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight6:Landroid/widget/Button;

    const v0, 0x7f08006e

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight7:Landroid/widget/Button;

    const v0, 0x7f08018e

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    const v0, 0x7f08019b

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->gameplay:Landroid/widget/Spinner;

    const v0, 0x7f0802a1

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pressing:Landroid/widget/Spinner;

    const v0, 0x7f08038e

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->timeWasting:Landroid/widget/Spinner;

    const v0, 0x7f080258

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->offsideTraps:Landroid/widget/Spinner;

    const v0, 0x7f0801bc

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrders:Landroid/widget/Spinner;

    .line 134
    invoke-static {}, Lpl/mkrstudio/truefootball3/objects/Formation;->getAllFormations()Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->addCustomFormations(Ljava/util/List;)V

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 140
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a00d4

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 144
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 145
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f020001

    const v4, 0x7f0a00d5

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 148
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 149
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->gameplay:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 151
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f020007

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 152
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 153
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pressing:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 155
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f02000a

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 156
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 157
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->timeWasting:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 159
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f020005

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 160
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 161
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->offsideTraps:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 163
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f020003

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 164
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 165
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrders:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 167
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft1:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight1:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 203
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->enableRightButton(Landroid/widget/Button;)V

    .line 205
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->gameplay:Landroid/widget/Spinner;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 206
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pressing:Landroid/widget/Spinner;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/enums/Pressing;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 207
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->timeWasting:Landroid/widget/Spinner;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 208
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->offsideTraps:Landroid/widget/Spinner;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 209
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrders:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 211
    invoke-virtual {p0, p1, v2}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->showIndividualOrders(Landroid/view/View;I)V

    .line 213
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;

    invoke-direct {v3, p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;Landroid/view/View;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 224
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 226
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrders:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$4;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 237
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 239
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft2:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$5;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight2:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$6;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft3:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$7;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight3:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$8;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft4:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$9;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$9;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight4:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$10;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$10;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft5:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$11;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$11;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight5:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$12;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$12;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft6:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$13;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$13;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight6:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$14;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$14;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft7:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$15;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$15;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight7:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$16;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$16;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 431
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 432
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 437
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->gameplay:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$17;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$17;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 446
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->gameplay:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 448
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pressing:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$18;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$18;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 457
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pressing:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 459
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->timeWasting:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$19;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$19;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 468
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->timeWasting:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 470
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->offsideTraps:Landroid/widget/Spinner;

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$20;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$20;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 479
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->offsideTraps:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 481
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_3

    .line 482
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 483
    :cond_3
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    .line 484
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 485
    :cond_4
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->gameplay:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_5

    .line 486
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 487
    :cond_5
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->gameplay:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->gameplay:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_6

    .line 488
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 489
    :cond_6
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pressing:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_7

    .line 490
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft4:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 491
    :cond_7
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pressing:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pressing:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_8

    .line 492
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight4:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 493
    :cond_8
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->timeWasting:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_9

    .line 494
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft5:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 495
    :cond_9
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->timeWasting:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->timeWasting:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_a

    .line 496
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight5:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 497
    :cond_a
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->offsideTraps:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_b

    .line 498
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft6:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 499
    :cond_b
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->offsideTraps:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->offsideTraps:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_c

    .line 500
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight6:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableRightButton(Landroid/widget/Button;)V

    :cond_c
    const v1, 0x7f080120

    .line 502
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 503
    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;

    invoke-direct {v2, p0, v0, p1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCaptainClick(Landroid/view/View;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 646
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCaptain()Lpl/mkrstudio/truefootball3/enums/Captain;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Captain;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x2

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/Captain;

    .line 647
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Captain;->YES:Lpl/mkrstudio/truefootball3/enums/Captain;

    aput-object v2, v1, v0

    .line 648
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setCaptain(Lpl/mkrstudio/truefootball3/enums/Captain;)V

    .line 649
    aget-object p1, v1, p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Captain;->YES:Lpl/mkrstudio/truefootball3/enums/Captain;

    const-string v1, ""

    const-string v2, "captain"

    if-ne p1, v0, :cond_1

    :goto_0
    const/16 p1, 0xb

    if-ge v3, p1, :cond_1

    if-eq p2, v3, :cond_0

    .line 652
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v3

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Captain;->NO:Lpl/mkrstudio/truefootball3/enums/Captain;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setCaptain(Lpl/mkrstudio/truefootball3/enums/Captain;)V

    .line 653
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCaptain()Lpl/mkrstudio/truefootball3/enums/Captain;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCaptain()Lpl/mkrstudio/truefootball3/enums/Captain;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 658
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCloseFreeKicksClick(Landroid/view/View;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 663
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    .line 664
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    aput-object v2, v1, v0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 665
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setCloseFreeKicks(Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;)V

    .line 666
    aget-object p1, v1, p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    const-string v1, ""

    const-string v2, "closeFreeKicks"

    if-ne p1, v0, :cond_1

    :goto_0
    const/16 p1, 0xb

    if-ge v3, p1, :cond_1

    if-eq p2, v3, :cond_0

    .line 668
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    if-ne p1, v0, :cond_0

    .line 669
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v3

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setCloseFreeKicks(Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;)V

    .line 670
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 675
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCornerKicksClick(Landroid/view/View;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 680
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    .line 681
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    aput-object v2, v1, v0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 682
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setCornerKicks(Lpl/mkrstudio/truefootball3/enums/CornerKicks;)V

    .line 683
    aget-object p1, v1, p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    const-string v1, ""

    const-string v2, "cornerKicks"

    if-ne p1, v0, :cond_1

    :goto_0
    const/16 p1, 0xb

    if-ge v3, p1, :cond_1

    if-eq p2, v3, :cond_0

    .line 685
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    if-ne p1, v0, :cond_0

    .line 686
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v3

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/CornerKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setCornerKicks(Lpl/mkrstudio/truefootball3/enums/CornerKicks;)V

    .line 687
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 691
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 692
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

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

    const p3, 0x7f0a0082

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 101
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDivingClick(Landroid/view/View;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 697
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Diving;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/Diving;

    .line 698
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Diving;->NEVER:Lpl/mkrstudio/truefootball3/enums/Diving;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Diving;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Diving;

    aput-object v2, v1, v0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Diving;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Diving;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 699
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setDiving(Lpl/mkrstudio/truefootball3/enums/Diving;)V

    .line 700
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "diving"

    invoke-virtual {p1, v1, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 701
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDribblingClick(Landroid/view/View;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 706
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Dribbling;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/Dribbling;

    .line 707
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Dribbling;->NEVER:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Dribbling;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    aput-object v2, v1, v0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Dribbling;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Dribbling;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 708
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setDribbling(Lpl/mkrstudio/truefootball3/enums/Dribbling;)V

    .line 709
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dribbling"

    invoke-virtual {p1, v1, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 710
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFarFreeKicksClick(Landroid/view/View;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 715
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    .line 716
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->PENALTY_AREA:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    aput-object v2, v1, v0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 717
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setFarFreeKicks(Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;)V

    .line 718
    aget-object p1, v1, p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    const-string v1, ""

    const-string v2, "farFreeKicks"

    if-ne p1, v0, :cond_1

    :goto_0
    const/16 p1, 0xb

    if-ge v3, p1, :cond_1

    if-eq p2, v3, :cond_0

    .line 720
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    if-ne p1, v0, :cond_0

    .line 721
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v3

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setFarFreeKicks(Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;)V

    .line 722
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 726
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 727
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPassesClick(Landroid/view/View;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 732
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Passes;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/Passes;

    .line 733
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Passes;->SHORT_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Passes;->MIXED:Lpl/mkrstudio/truefootball3/enums/Passes;

    aput-object v2, v1, v0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Passes;->LONG_PASSES:Lpl/mkrstudio/truefootball3/enums/Passes;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 734
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setPasses(Lpl/mkrstudio/truefootball3/enums/Passes;)V

    .line 735
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "passes"

    invoke-virtual {p1, v1, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 736
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPenaltyKicksClick(Landroid/view/View;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 741
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPenaltyKicks()Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x2

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    .line 742
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    aput-object v2, v1, v0

    .line 743
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object v2, v1, p1

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setPenaltyKicks(Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;)V

    .line 744
    aget-object p1, v1, p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    const-string v1, ""

    const-string v2, "penaltyKicks"

    if-ne p1, v0, :cond_1

    :goto_0
    const/16 p1, 0xb

    if-ge v3, p1, :cond_1

    if-eq p2, v3, :cond_0

    .line 746
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPenaltyKicks()Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    move-result-object p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->EXECUTE:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    if-ne p1, v0, :cond_0

    .line 747
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, v3

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;->STAY_AWAY:Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setPenaltyKicks(Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;)V

    .line 748
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPenaltyKicks()Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 752
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPenaltyKicks()Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 753
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onShotsClick(Landroid/view/View;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 758
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Shots;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x4

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/Shots;

    .line 759
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Shots;->NEVER:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Shots;->SOMETIMES:Lpl/mkrstudio/truefootball3/enums/Shots;

    aput-object v2, v1, v0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shots;->OFTEN:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shots;->ALWAYS:Lpl/mkrstudio/truefootball3/enums/Shots;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 760
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setShots(Lpl/mkrstudio/truefootball3/enums/Shots;)V

    .line 761
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shots"

    invoke-virtual {p1, v1, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 762
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTacklingClick(Landroid/view/View;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "which"
        }
    .end annotation

    .line 767
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Tackling;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    rem-int/2addr p1, v1

    new-array v1, v1, [Lpl/mkrstudio/truefootball3/enums/Tackling;

    .line 768
    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Tackling;->LIGHT:Lpl/mkrstudio/truefootball3/enums/Tackling;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/Tackling;->NORMAL:Lpl/mkrstudio/truefootball3/enums/Tackling;

    aput-object v2, v1, v0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Tackling;->AGGRESIVE:Lpl/mkrstudio/truefootball3/enums/Tackling;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 769
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v0

    aget-object v0, v0, p2

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->setTackling(Lpl/mkrstudio/truefootball3/enums/Tackling;)V

    .line 770
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tackling"

    invoke-virtual {p1, v1, p2, v0}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->changeValue(Ljava/lang/String;ILjava/lang/String;)V

    .line 771
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method showFormation(Landroid/view/View;Lpl/mkrstudio/truefootball3/objects/Formation;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "formation"
        }
    .end annotation

    move-object/from16 v0, p1

    const v1, 0x7f08019f

    .line 777
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080348

    .line 778
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f080148

    .line 779
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f08014a

    .line 780
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f08020c

    .line 781
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f08024c

    .line 782
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f080190

    .line 783
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 785
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 786
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 787
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 788
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 789
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 790
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 791
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v7, 0x0

    .line 793
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_f

    .line 794
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f070368

    .line 795
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 796
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0600b3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v9, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    .line 797
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 798
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->GK:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_0

    .line 801
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 802
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_1

    .line 803
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 804
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v13, 0x3

    if-ne v10, v12, :cond_2

    .line 805
    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 806
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 807
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 809
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_3

    .line 810
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 811
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v14, 0x5

    if-ne v10, v12, :cond_4

    .line 812
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 813
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 814
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 815
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 816
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_5

    .line 822
    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 823
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 824
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 826
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_6

    .line 827
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 828
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_7

    .line 834
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 835
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 836
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 838
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_8

    .line 844
    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 845
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 846
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 848
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_9

    .line 849
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 850
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_a

    .line 856
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 857
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 858
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 860
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_b

    .line 871
    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 872
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 873
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 875
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_c

    .line 876
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 877
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v10

    aget-object v10, v10, v7

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v10, v12, :cond_d

    .line 888
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 889
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 890
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 892
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v9

    aget-object v9, v9, v7

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v9, v10, :cond_e

    .line 893
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_e
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method showIndividualOrders(Landroid/view/View;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "showedOrder"
        }
    .end annotation

    .line 591
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_c

    .line 594
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 596
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "nr"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v2

    aget-object v2, v2, v0

    const-string v4, "position"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 601
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 602
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v6

    if-ne v6, v0, :cond_0

    move-object v2, v5

    goto :goto_1

    :cond_1
    const-string v4, "nation"

    const-string v5, "name"

    const-string v6, "-"

    if-eqz v2, :cond_2

    .line 607
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Locale;

    const-string v10, "en"

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "edited"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 611
    :cond_2
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :goto_2
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCaptain()Lpl/mkrstudio/truefootball3/enums/Captain;

    move-result-object v4

    const-string v5, "captain"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCloseFreeKicks()Lpl/mkrstudio/truefootball3/enums/CloseFreeKicks;

    move-result-object v4

    const-string v5, "closeFreeKicks"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getCornerKicks()Lpl/mkrstudio/truefootball3/enums/CornerKicks;

    move-result-object v4

    const-string v5, "cornerKicks"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDiving()Lpl/mkrstudio/truefootball3/enums/Diving;

    move-result-object v4

    const-string v5, "diving"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getDribbling()Lpl/mkrstudio/truefootball3/enums/Dribbling;

    move-result-object v4

    const-string v5, "dribbling"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getFarFreeKicks()Lpl/mkrstudio/truefootball3/enums/FarFreeKicks;

    move-result-object v4

    const-string v5, "farFreeKicks"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPasses()Lpl/mkrstudio/truefootball3/enums/Passes;

    move-result-object v4

    const-string v5, "passes"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getPenaltyKicks()Lpl/mkrstudio/truefootball3/enums/PenaltyKicks;

    move-result-object v4

    const-string v5, "penaltyKicks"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getShots()Lpl/mkrstudio/truefootball3/enums/Shots;

    move-result-object v4

    const-string v5, "shots"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getIndividualOrders()[Lpl/mkrstudio/truefootball3/objects/IndividualOrders;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/IndividualOrders;->getTackling()Lpl/mkrstudio/truefootball3/enums/Tackling;

    move-result-object v4

    const-string v5, "tackling"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ""

    if-eqz v2, :cond_3

    .line 627
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTackling()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v6

    :goto_3
    const-string v7, "tacklingParameter"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 628
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getStrength()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v6

    :goto_4
    const-string v7, "strengthParameter"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 629
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getHeading()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object v5, v6

    :goto_5
    const-string v7, "headingParameter"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_6
    move-object v5, v6

    :goto_6
    const-string v7, "passingParameter"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 631
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCrossing()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_7
    move-object v5, v6

    :goto_7
    const-string v7, "crossingParameter"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 632
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_8
    move-object v5, v6

    :goto_8
    const-string v7, "techniqueParameter"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_9

    .line 633
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getAgility()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_9
    move-object v5, v6

    :goto_9
    const-string v7, "agilityParameter"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 634
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_a
    move-object v5, v6

    :goto_a
    const-string v7, "shootingParameter"

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 635
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_b
    const-string v2, "charismaParameter"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f08025d

    .line 640
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ListView;

    .line 641
    new-instance v9, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget v5, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->showedParameter:I

    move-object v0, v9

    move v4, p2

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;-><init>(Landroid/content/Context;ILjava/util/List;IILandroid/view/View;Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V

    iput-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->individualOrdersAdapter:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    .line 642
    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public showPlayerInfo(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 908
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v2

    if-ne v2, p1, :cond_0

    .line 909
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 910
    :cond_1
    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v5, v1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;)V

    iput-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    .line 911
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->show()V

    goto :goto_0

    :cond_2
    return-void
.end method
