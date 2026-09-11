.class public Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;
.super Landroidx/fragment/app/Fragment;
.source "YouthTeamFragment.java"


# instance fields
.field leftButton:Landroid/widget/Button;

.field overviewResultsAdapter:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

.field resultsVF:Landroid/widget/ViewFlipper;

.field rightButton:Landroid/widget/Button;

.field trainingResultsLeftButton:Landroid/widget/Button;

.field trainingResultsRightButton:Landroid/widget/Button;

.field youthSquadAdapter:Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;

.field youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

.field youthTeamName:Ljava/lang/String;

.field youthTeamVF:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youthTeamName"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 62
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeamName:Ljava/lang/String;

    return-void
.end method

.method private initFinancing(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "currencyModifier"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 258
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v2, "currencyName"

    const-string v3, "EUR"

    .line 259
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0803d6

    .line 261
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getFinancing()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v4, v4, v1

    float-to-long v4, v4

    invoke-static {v4, v5, v0}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0803d7

    .line 264
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    const/16 v3, 0x64

    .line 265
    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 266
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getCurrentFinancing()B

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 267
    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;

    invoke-direct {v3, p0, v2, v1, v0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;Landroid/widget/TextView;FLjava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private showTrainer(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainer()Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f080389

    const/16 v3, 0x8

    const v4, 0x7f0803de

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080221

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainer()Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080176

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainer()Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->getExperience()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080222

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainer()Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->getNationality()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v4, "en"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showTrainingResults(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainingResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/TrainingResult;

    .line 438
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 440
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getPlayerName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getDate()Ljava/lang/String;

    move-result-object v4

    const-string v5, "date"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v4

    const-string v5, "overall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "what"

    if-nez v4, :cond_0

    .line 444
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 446
    :cond_0
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :goto_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const-string v4, "result"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    :cond_1
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$11;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$11;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v1, 0x7f0803a2

    .line 461
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const v2, 0x7f080238

    .line 462
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 464
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainingResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 465
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 467
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 471
    :goto_2
    new-instance p1, Lpl/mkrstudio/truefootball3/adapters/TrainingResultAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/TrainingResultAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    .line 472
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/adapters/TrainingResultAdapter;->setNotifyOnChange(Z)V

    .line 474
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
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

    .line 383
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 384
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

    .line 393
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 394
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

    .line 388
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 389
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

    .line 398
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 399
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0803d5

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeamName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->showTrainer(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->showSquad(Landroid/view/View;)V

    .line 102
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->showTrainingResults(Landroid/view/View;)V

    .line 103
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->showOverviewTrainingResults(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->showHeader(Landroid/view/View;I)V

    .line 106
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->showResultsHeader(Landroid/view/View;I)V

    const v1, 0x7f0803db

    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeamVF:Landroid/widget/ViewFlipper;

    const v1, 0x7f08005f

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->leftButton:Landroid/widget/Button;

    const v1, 0x7f080067

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->rightButton:Landroid/widget/Button;

    .line 111
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->leftButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$1;

    invoke-direct {v2, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->rightButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$2;

    invoke-direct {v2, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->leftButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 146
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->enableRightButton(Landroid/widget/Button;)V

    const v1, 0x7f0803a6

    .line 148
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->resultsVF:Landroid/widget/ViewFlipper;

    const v1, 0x7f0803a3

    .line 149
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->trainingResultsLeftButton:Landroid/widget/Button;

    const v1, 0x7f0803a4

    .line 150
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->trainingResultsRightButton:Landroid/widget/Button;

    .line 151
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->trainingResultsLeftButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$3;

    invoke-direct {v2, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->trainingResultsRightButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$4;

    invoke-direct {v2, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->trainingResultsLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 186
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->trainingResultsRightButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->enableRightButton(Landroid/widget/Button;)V

    .line 188
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->initFinancing(Landroid/view/View;)V

    const v1, 0x7f0802c0

    .line 190
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 191
    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800f0

    .line 225
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 226
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->isFreeYouthTrainer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 230
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    .line 69
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 70
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object p3

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Youth;->getYouthTeams()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    .line 71
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getType()Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeamName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    goto :goto_0

    :cond_1
    const p3, 0x7f0a0086

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showHeader(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "whichView"
        }
    .end annotation

    const v0, 0x7f0803d8

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0624

    .line 414
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c0625

    .line 410
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0c04f9

    .line 406
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public showOverviewTrainingResults(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 325
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$9;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$9;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 342
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 344
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainingResults()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/TrainingResult;

    .line 345
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getPlayerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 346
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1

    .line 349
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 350
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getName()Ljava/lang/String;

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "nr"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "position"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getSkill()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const-string v8, "skill"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "diffSkill"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getNationality()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Locale;

    const-string v10, "en"

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "nation"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getAge()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const-string v6, "age"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "edited"

    const-string v6, "false"

    .line 358
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 361
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f080261

    .line 364
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 365
    new-instance v6, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Z)V

    iput-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->overviewResultsAdapter:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    .line 367
    invoke-virtual {p1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public showPlayerInfo(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    .line 371
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthSquadAdapter:Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    invoke-direct {v0, v1, v2, p1, v3}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;ILpl/mkrstudio/truefootball3/objects/YouthPlayer;)V

    .line 372
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$10;

    invoke-direct {p1, p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$10;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;)V

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 379
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->show()V

    return-void
.end method

.method showResultsHeader(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "whichView"
        }
    .end annotation

    const v0, 0x7f0803a5

    .line 421
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0229

    .line 428
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c0476

    .line 424
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public showSquad(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$8;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 304
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getYouthPlayers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;

    .line 305
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 306
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getName()Ljava/lang/String;

    .line 307
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "nr"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "position"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getSkill()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const-string v7, "skill"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getNationality()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Locale;

    const-string v10, "en"

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "nation"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getAge()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const-string v6, "age"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    .line 315
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    const v1, 0x7f08032c

    .line 318
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 319
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0, p0}, Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;)V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthSquadAdapter:Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;

    .line 321
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
