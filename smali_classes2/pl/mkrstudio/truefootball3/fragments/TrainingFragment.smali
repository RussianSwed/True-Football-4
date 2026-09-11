.class public Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;
.super Landroidx/fragment/app/Fragment;
.source "TrainingFragment.java"


# instance fields
.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowLeft4:Landroid/widget/Button;

.field arrowLeft5:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

.field arrowRight4:Landroid/widget/Button;

.field arrowRight5:Landroid/widget/Button;

.field attackingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field ballPossessionTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field campCost:Landroid/widget/TextView;

.field campPlaceSpinner:Landroid/widget/Spinner;

.field campPlaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/CampPlace;",
            ">;"
        }
    .end annotation
.end field

.field campWeatherConditions:Landroid/widget/TextView;

.field currency:Ljava/lang/String;

.field defendingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field departureDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field departureDateSpinner:Landroid/widget/Spinner;

.field fitnessTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field friendliesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field leftButton:Landroid/widget/Button;

.field mentalTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field modifier:F

.field okButton:Landroid/widget/Button;

.field overviewResultsAdapter:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

.field parameterTV:Landroid/widget/TextView;

.field parameters:[I

.field playFriendliesSpinner:Landroid/widget/Spinner;

.field resultsVF:Landroid/widget/ViewFlipper;

.field returnDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field returnDateSpinner:Landroid/widget/Spinner;

.field rightButton:Landroid/widget/Button;

.field setPiecesTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field trainingResultsLeftButton:Landroid/widget/Button;

.field trainingResultsRightButton:Landroid/widget/Button;

.field trainingVF:Landroid/widget/ViewFlipper;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaces:Ljava/util/List;

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 102
    fill-array-data v0, :array_0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->parameters:[I

    return-void

    :array_0
    .array-data 4
        0x7f0c05b0
        0x7f0c0148
        0x7f0c01b6
        0x7f0c0217
        0x7f0c0328
        0x7f0c0347
        0x7f0c0497
        0x7f0c058e
        0x7f0c05d9
        0x7f0c05f4
        0x7f0c060b
    .end array-data
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)I
    .locals 0

    .line 57
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->calculateNumberOfDays()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)I
    .locals 0

    .line 57
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->calculateCampCost()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initTrainingCampView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initReturnDateSpinner(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private calculateCampCost()I
    .locals 3

    .line 563
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->calculateNumberOfDays()I

    move-result v0

    .line 564
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaces:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/CampPlace;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->calculateCost(ILpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result v0

    return v0
.end method

.method private calculateCost(ILpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Country;)I
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "diff",
            "country",
            "playerCountry"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "AUS"

    const-string v3, "CHN"

    const-string v4, "USA"

    const-string v5, "RSA"

    .line 570
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "ESP"

    const-string v8, "GER"

    const-string v9, "POR"

    const-string v10, "ITA"

    const-string v11, "FRA"

    const-string v12, "NED"

    const-string v13, "CRO"

    const-string v14, "GRE"

    const-string v15, "JPN"

    const-string v16, "BRA"

    const-string v17, "ARG"

    const-string v18, "MEX"

    .line 571
    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "TUR"

    const-string v9, "POL"

    const-string v10, "CZE"

    const-string v11, "SVK"

    const-string v12, "BUL"

    const-string v13, "CYP"

    const-string v14, "IDN"

    const-string v15, "MAS"

    const-string v16, "EGY"

    const-string v17, "TUN"

    const-string v18, "MAR"

    const-string v19, "ALG"

    .line 572
    filled-new-array/range {v8 .. v19}, [Ljava/lang/String;

    .line 574
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int/lit8 v6, p1, 0x6

    goto :goto_0

    .line 576
    :cond_0
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    mul-int/lit8 v6, p1, 0x4

    goto :goto_0

    :cond_1
    mul-int/lit8 v6, p1, 0x2

    .line 582
    :goto_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 583
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "JPN"

    const-string v8, "IDN"

    const-string v9, "MAS"

    .line 584
    filled-new-array {v3, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v3

    const-string v7, "ESP"

    const-string v8, "GER"

    const-string v9, "POR"

    const-string v10, "ITA"

    const-string v11, "FRA"

    const-string v12, "NED"

    const-string v13, "CRO"

    const-string v14, "GRE"

    const-string v15, "TUR"

    const-string v16, "POL"

    const-string v17, "CZE"

    const-string v18, "SVK"

    const-string v19, "BUL"

    const-string v20, "CYP"

    const-string v21, "EGY"

    const-string v22, "TUN"

    const-string v23, "MAR"

    const-string v24, "ALG"

    .line 585
    filled-new-array/range {v7 .. v24}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "BRA"

    const-string v9, "ARG"

    .line 586
    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "MEX"

    .line 587
    filled-new-array {v4, v9}, [Ljava/lang/String;

    move-result-object v4

    .line 589
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v9

    const-string v10, "europe"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 590
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    add-int/lit8 v6, v6, 0x5

    goto/16 :goto_7

    .line 592
    :cond_2
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    add-int/lit8 v6, v6, 0x14

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v6, v6, 0x32

    goto/16 :goto_7

    .line 597
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v9

    const-string v10, "africa"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 598
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 600
    :cond_5
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 602
    :cond_6
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v6, v6, 0x1e

    goto/16 :goto_7

    .line 607
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v7, "south_america"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 608
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    .line 610
    :cond_8
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_3
    add-int/lit8 v6, v6, 0xf

    goto/16 :goto_7

    .line 612
    :cond_9
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_4
    add-int/lit8 v6, v6, 0x19

    goto/16 :goto_7

    .line 617
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v7, "north_america"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 618
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_1

    .line 620
    :cond_b
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_5
    goto :goto_3

    .line 622
    :cond_c
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_6
    goto :goto_4

    .line 627
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "asia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 628
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_1

    .line 630
    :cond_e
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_5

    .line 632
    :cond_f
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_6

    .line 637
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oceania"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 638
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_1

    .line 640
    :cond_11
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_5

    .line 642
    :cond_12
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_13
    :goto_7
    return v6
.end method

.method private calculateNumberOfDays()I
    .locals 3

    .line 557
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateList:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 558
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateList:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 559
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getDifferenceBetweenDates(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initCampPlacesSpinner(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "ESP"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "GER"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "TUR"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "POL"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "POR"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "ITA"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "FRA"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "NED"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "CRO"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "CZE"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "SVK"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "GRE"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "BUL"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "CYP"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "AUS"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "JPN"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "IDN"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "MAS"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "USA"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "BRA"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "ARG"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "MEX"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "EGY"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "TUN"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "MAR"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "ALG"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    const-string v2, "RSA"

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Country;

    .line 445
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaces:Ljava/util/List;

    new-instance v3, Lpl/mkrstudio/truefootball3/objects/CampPlace;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lpl/mkrstudio/truefootball3/objects/CampPlace;-><init>(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Time;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f080273

    .line 448
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaceSpinner:Landroid/widget/Spinner;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 451
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/CampPlace;

    .line 452
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaceSpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0a00d2

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lpl/mkrstudio/truefootball3/adapters/CountrySpinnerAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 458
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaceSpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$8;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 468
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 470
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    const v0, 0x7f080063

    .line 472
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft4:Landroid/widget/Button;

    const v0, 0x7f08006b

    .line 473
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight4:Landroid/widget/Button;

    .line 475
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft4:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$9;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$9;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight4:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$10;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$10;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDepartureDateSpinner(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Training;->getPossibleCampStartDates(Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateList:Ljava/util/List;

    .line 500
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateList:Ljava/util/List;

    const v3, 0x7f0a00d5

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 501
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v1, 0x7f08014c

    .line 502
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateSpinner:Landroid/widget/Spinner;

    .line 503
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 504
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v0, 0x7f080061

    .line 506
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 507
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight2:Landroid/widget/Button;

    .line 509
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 510
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 511
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->disableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 514
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->enableRightButton(Landroid/widget/Button;)V

    .line 517
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateSpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$11;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$11;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 528
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft2:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$12;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$12;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight2:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$13;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$13;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFriendliesSpinner(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080275

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->playFriendliesSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0c0665

    .line 380
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0c03fc

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->friendliesList:Ljava/util/List;

    .line 381
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->friendliesList:Ljava/util/List;

    const v3, 0x7f0a00d5

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 384
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->playFriendliesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f080064

    .line 386
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft5:Landroid/widget/Button;

    const v0, 0x7f08006c

    .line 387
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight5:Landroid/widget/Button;

    .line 389
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft5:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$6;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight5:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$7;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initReturnDateSpinner(Landroid/view/View;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "view",
            "departureDate"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v7

    const/4 v6, 0x0

    const/16 v8, 0x1e

    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getAvailableDatesForFriendlyMatches(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getPossibleCampEndDates(Lpl/mkrstudio/truefootball3/objects/Time;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateList:Ljava/util/List;

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 655
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a00d5

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 657
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v1, 0x7f0802c9

    .line 658
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateSpinner:Landroid/widget/Spinner;

    .line 659
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 660
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    const v0, 0x7f080062

    .line 662
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft3:Landroid/widget/Button;

    const v0, 0x7f08006a

    .line 663
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight3:Landroid/widget/Button;

    .line 665
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 666
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 667
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->disableLeftButton(Landroid/widget/Button;)V

    goto :goto_1

    .line 669
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 670
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight3:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->enableRightButton(Landroid/widget/Button;)V

    .line 673
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 674
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateSpinner:Landroid/widget/Spinner;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$14;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$14;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 683
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowLeft3:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$15;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$15;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->arrowRight3:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$16;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$16;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTrainingCampView(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0800e3

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08025c

    .line 263
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f08039e

    .line 264
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0803a0

    .line 265
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    const v4, 0x7f080088

    .line 266
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 268
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Training;->isCampPlanned()Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v5, :cond_0

    .line 269
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 273
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f08039f

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0620

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getCampPlanned()Lpl/mkrstudio/truefootball3/objects/CampPlace;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Training;->getCampBeginDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Training;->getCampEndDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 277
    :cond_0
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Training;->isOnCamp()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 282
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f08025b

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c045b

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getCurrentCamp()Lpl/mkrstudio/truefootball3/objects/CampPlace;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Training;->getCampEndDate()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 285
    :cond_1
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v5

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v8

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v9

    iget-object v10, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v10

    iget-object v11, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v11

    invoke-virtual {v5, v8, v9, v10, v11}, Lpl/mkrstudio/truefootball3/objects/Training;->canGoOnCamp(Lpl/mkrstudio/truefootball3/objects/Friendlies;Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 286
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    invoke-virtual {v3, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 290
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    invoke-virtual {v3, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 296
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f08011b

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campCost:Landroid/widget/TextView;

    const v0, 0x7f0803c6

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campWeatherConditions:Landroid/widget/TextView;

    .line 301
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initDepartureDateSpinner(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initReturnDateSpinner(Landroid/view/View;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initCampPlacesSpinner(Landroid/view/View;)V

    .line 304
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initFriendliesSpinner(Landroid/view/View;)V

    const v0, 0x7f080259

    .line 306
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->okButton:Landroid/widget/Button;

    .line 307
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 709
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingResults()Ljava/util/List;

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

    .line 710
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 712
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getPlayerName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getDate()Ljava/lang/String;

    move-result-object v4

    const-string v5, "date"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v4

    const-string v5, "overall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "what"

    if-nez v4, :cond_0

    .line 716
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 718
    :cond_0
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    :goto_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const-string v4, "result"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    :cond_1
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$17;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$17;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v1, 0x7f0803a2

    .line 733
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const v2, 0x7f080238

    .line 734
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 736
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 737
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 739
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 743
    :goto_2
    new-instance p1, Lpl/mkrstudio/truefootball3/adapters/TrainingResultAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/TrainingResultAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    .line 744
    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/adapters/TrainingResultAdapter;->setNotifyOnChange(Z)V

    .line 746
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method protected addNotes(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 552
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campWeatherConditions:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaces:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/CampPlace;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->getWeather()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campCost:Landroid/widget/TextView;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->calculateCampCost()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->modifier:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->currency:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 877
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 878
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

    .line 887
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 888
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

    .line 882
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 883
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

    .line 892
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 893
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080187

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->fitnessTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f080307

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->setPiecesTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f080082

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ballPossessionTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f080076

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->attackingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f080149

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->defendingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f080209

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->mentalTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->fitnessTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->setPiecesTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ballPossessionTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->attackingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->defendingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->mentalTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Training;->isOnCamp()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Training;->getCurrentCamp()Lpl/mkrstudio/truefootball3/objects/CampPlace;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->getWeather()F

    move-result v1

    float-to-int v1, v1

    move v8, v1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 143
    :goto_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->fitnessTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getFitness()B

    move-result v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v0

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initIntensityPicker(BLpl/mkrstudio/truefootball3/objects/Training;BLjava/util/List;I)V

    .line 144
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->setPiecesTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSetPieces()B

    move-result v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initIntensityPicker(BLpl/mkrstudio/truefootball3/objects/Training;BLjava/util/List;I)V

    .line 145
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ballPossessionTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getBallPossession()B

    move-result v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initIntensityPicker(BLpl/mkrstudio/truefootball3/objects/Training;BLjava/util/List;I)V

    .line 146
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->attackingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getAttacking()B

    move-result v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initIntensityPicker(BLpl/mkrstudio/truefootball3/objects/Training;BLjava/util/List;I)V

    .line 147
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->defendingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getDefending()B

    move-result v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initIntensityPicker(BLpl/mkrstudio/truefootball3/objects/Training;BLjava/util/List;I)V

    .line 148
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->mentalTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getMental()B

    move-result v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual/range {v1 .. v6}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initIntensityPicker(BLpl/mkrstudio/truefootball3/objects/Training;BLjava/util/List;I)V

    .line 150
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v1

    invoke-virtual {v1, v7}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSum(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 152
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableRightButton()V

    goto :goto_1

    .line 155
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getFitness()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->fitnessTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableLeftButton()V

    .line 156
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getSetPieces()B

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->setPiecesTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableLeftButton()V

    .line 157
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getBallPossession()B

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ballPossessionTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableLeftButton()V

    .line 158
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getAttacking()B

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->attackingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableLeftButton()V

    .line 159
    :cond_5
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getDefending()B

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->defendingTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableLeftButton()V

    .line 160
    :cond_6
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingSettings()Lpl/mkrstudio/truefootball3/objects/TrainingSettings;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->getMental()B

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->mentalTraining:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableLeftButton()V

    .line 162
    :cond_7
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->showTrainingResults(Landroid/view/View;)V

    .line 163
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->showOverviewTrainingResults(Landroid/view/View;)V

    .line 165
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initTrainingCampView(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0, p1, v7}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->showHeader(Landroid/view/View;I)V

    .line 168
    invoke-virtual {p0, p1, v7}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->showResultsHeader(Landroid/view/View;I)V

    const v0, 0x7f0803a7

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f08005f

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->leftButton:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->rightButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->leftButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->rightButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->leftButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 202
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->enableRightButton(Landroid/widget/Button;)V

    const v0, 0x7f0803a6

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->resultsVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f0803a3

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingResultsLeftButton:Landroid/widget/Button;

    const v0, 0x7f0803a4

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingResultsRightButton:Landroid/widget/Button;

    .line 207
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingResultsLeftButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$3;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingResultsRightButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$4;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingResultsLeftButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 242
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingResultsRightButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->enableRightButton(Landroid/widget/Button;)V

    const v0, 0x7f080264

    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->parameterTV:Landroid/widget/TextView;

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

    const p3, 0x7f0a0083

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 113
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "tf3Settings"

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "currencyModifier"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 114
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->modifier:F

    const-string p3, "currencyName"

    const-string v0, "EUR"

    .line 115
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->currency:Ljava/lang/String;

    .line 117
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showHeader(Landroid/view/View;I)V
    .locals 3
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

    const v0, 0x7f0803a1

    .line 750
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801aa

    .line 751
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/16 v1, 0x8

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0624

    .line 778
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 779
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c0621

    .line 759
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x0

    .line 760
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 761
    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$18;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$18;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0c0625

    .line 754
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 755
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showOverviewTrainingResults(Landroid/view/View;)V
    .locals 29
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 786
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 789
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$19;

    invoke-direct {v1, v6}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$19;-><init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 803
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 815
    iget-object v5, v6, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Training;->getTrainingResults()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const-string v1, "technique"

    move-object/from16 v19, v0

    const-string v0, "tackling"

    const-string v6, "strength"

    move-object/from16 v20, v3

    const-string v3, "shooting"

    move/from16 v21, v2

    const-string v2, "passing"

    move-object/from16 v22, v1

    const-string v1, "heading"

    move-object/from16 v23, v0

    const-string v0, "goalkeeping"

    move/from16 v24, v15

    const-string v15, "crossing"

    move-object/from16 v25, v6

    const-string v6, "charisma"

    move/from16 v26, v14

    const-string v14, "agility"

    if-eqz v18, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lpl/mkrstudio/truefootball3/objects/TrainingResult;

    move-object/from16 v27, v5

    .line 816
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getPlayerName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v3

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 817
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v3

    const-string v5, "overall"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v3

    add-int/2addr v7, v3

    .line 818
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v3

    add-int/2addr v8, v3

    .line 819
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v3

    add-int/2addr v9, v3

    .line 820
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v3

    add-int/2addr v10, v3

    .line 821
    :cond_3
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v0

    add-int/2addr v11, v0

    .line 822
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v0

    add-int/2addr v12, v0

    .line 823
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v0

    add-int/2addr v13, v0

    .line 824
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v0

    add-int v14, v26, v0

    goto :goto_2

    :cond_7
    move/from16 v14, v26

    .line 825
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v0

    add-int v15, v24, v0

    goto :goto_3

    :cond_8
    move/from16 v15, v24

    .line 826
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v0

    add-int v16, v16, v0

    .line 827
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getSkill()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {v18 .. v18}, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->getResult()B

    move-result v0

    add-int v17, v17, v0

    goto :goto_4

    :cond_a
    move/from16 v15, v24

    move/from16 v14, v26

    :cond_b
    :goto_4
    move-object/from16 v6, p0

    move-object/from16 v0, v19

    move-object/from16 v3, v20

    move/from16 v2, v21

    move-object/from16 v5, v27

    goto/16 :goto_1

    :cond_c
    move/from16 v18, v13

    move-object/from16 v13, v22

    move-object/from16 v5, v25

    move/from16 v22, v12

    move-object/from16 v12, v23

    move/from16 v23, v11

    .line 830
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 831
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move/from16 v25, v10

    .line 832
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move/from16 v27, v9

    const-string v9, "nr"

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v9

    const-string v10, "position"

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const-string v10, "skill"

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getAgility()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v11, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v11, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCrossing()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v11, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v11, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getHeading()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v11, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getStrength()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v11, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTackling()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v11, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffSkill"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffAgility"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffCharisma"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffCrossing"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffGoalkeeping"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffHeading"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffPassing"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffShooting"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffStrength"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffTackling"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "diffTechnique"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Locale;

    const-string v5, "en"

    invoke-direct {v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "drawable"

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "nation"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const-string v1, "age"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "edited"

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v3, v20

    .line 863
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p0

    move-object/from16 v0, v19

    goto/16 :goto_0

    :cond_d
    const v0, 0x7f080261

    move-object/from16 v1, p1

    .line 866
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ListView;

    .line 867
    new-instance v7, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Z)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->overviewResultsAdapter:Lpl/mkrstudio/truefootball3/adapters/OverviewResultsAdapter;

    .line 869
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public showParameter(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showedParameter"
        }
    .end annotation

    .line 873
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->parameterTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->parameters:[I

    aget p1, v2, p1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0229

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c0476

    .line 251
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
