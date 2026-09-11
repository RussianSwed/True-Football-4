.class Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;
.super Ljava/lang/Object;
.source "TrainingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initTrainingCampView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 310
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaces:Ljava/util/List;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->campPlaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/CampPlace;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Training;->setCampPlanned(Lpl/mkrstudio/truefootball3/objects/CampPlace;)V

    .line 311
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateList:Ljava/util/List;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->departureDateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Training;->setCampBeginDate(Ljava/lang/String;)V

    .line 312
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateList:Ljava/util/List;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->returnDateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Training;->setCampEndDate(Ljava/lang/String;)V

    .line 314
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->playFriendliesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_8

    .line 316
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Training;->getCampPlanned()Lpl/mkrstudio/truefootball3/objects/CampPlace;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CampPlace;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v1

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 318
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Team;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-eq v5, v6, :cond_0

    const/high16 v6, 0x40000000    # 2.0f

    .line 319
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v7

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 320
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    invoke-static {v5}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)I

    move-result v5

    .line 325
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v6, v6, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTraining()Lpl/mkrstudio/truefootball3/objects/Training;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Training;->getCampEndDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    if-eq v7, v5, :cond_8

    const/4 v8, 0x6

    .line 328
    invoke-virtual {v6, v8, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 329
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v8

    invoke-virtual {v8, v6}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v8

    .line 330
    rem-int/lit8 v9, v7, 0x3

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 331
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 333
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 334
    iget-object v12, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v12, v12, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v12

    iget-object v13, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v13, v13, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v13

    iget-object v14, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v14, v14, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v14

    iget-object v15, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v15, v15, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v16

    const/16 v17, 0x1e

    move-object v15, v11

    invoke-virtual/range {v12 .. v17}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getAvailableDatesForFriendlyMatches(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 335
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 338
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 339
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 340
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 341
    iget-object v12, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v12, v12, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v12

    iget-object v13, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v13, v13, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v13

    iget-object v14, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v14, v14, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v14

    iget-object v15, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v15, v15, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v15}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v16

    const/16 v17, 0x1e

    move-object v15, v11

    invoke-virtual/range {v12 .. v17}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getAvailableDatesForFriendlyMatches(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 342
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 346
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 347
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    .line 348
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 349
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0xf

    if-ge v10, v11, :cond_6

    .line 352
    new-instance v12, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v12, v10}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v10, v10, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v14

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v10, v10, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v10, v10, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/World;->getEditedData()Lpl/mkrstudio/truefootball3/objects/EditedData;

    move-result-object v17

    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v10, v10, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->isUseEditedData()Z

    move-result v18

    invoke-virtual/range {v12 .. v18}, Lpl/mkrstudio/truefootball3/generators/PlayerGenerator;->generatePlayers(Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/activities/NewGameActivity$InitNewGameProgressTask;Lpl/mkrstudio/truefootball3/objects/EditedData;Z)V

    .line 358
    :cond_6
    new-instance v10, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-direct {v10}, Lpl/mkrstudio/truefootball3/objects/Match;-><init>()V

    .line 359
    invoke-virtual {v10, v9}, Lpl/mkrstudio/truefootball3/objects/Match;->setHomeTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 360
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v9, v9, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-virtual {v10, v9}, Lpl/mkrstudio/truefootball3/objects/Match;->setAwayTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 361
    invoke-virtual {v10, v8}, Lpl/mkrstudio/truefootball3/objects/Match;->setDate(Ljava/lang/String;)V

    .line 362
    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v8, v8, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getCurrentFriendlyMatches()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 369
    :cond_8
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v1

    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v4, v4, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    invoke-static {v5}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->access$100(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;)I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    const-string v2, "trainingCamp"

    invoke-direct {v3, v4, v5, v6, v2}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 371
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$5;->val$view:Landroid/view/View;

    invoke-static {v1, v2}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->access$200(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V

    return-void
.end method
