.class public Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScoutDetailsFragment.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/fragments/IPreviewFragment;


# instance fields
.field currency:Ljava/lang/String;

.field modifier:F

.field pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;",
            ">;"
        }
    .end annotation
.end field

.field recommendationsAdapter:Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;

.field scout:Lpl/mkrstudio/truefootball3/objects/Scout;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Scout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scout"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 58
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->initCurrentAssignment(Landroid/view/View;)V

    return-void
.end method

.method private initCurrentAssignment(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const v3, 0x7f08022e

    const v4, 0x7f08012f

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080072

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080071

    .line 107
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080073

    .line 108
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getDaysLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRegion()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getFinancing()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 129
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f08006f

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 134
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    :goto_0
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->initRecommendations(Landroid/view/View;)V

    return-void
.end method

.method private initRecommendations(Landroid/view/View;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->recommendations:Ljava/util/List;

    .line 288
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 290
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->recommendations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getPastAssignments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    .line 295
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 296
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->recommendations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    :cond_2
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->recommendations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 303
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 305
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "nr"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "position"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const-string v8, "skill"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    iget v8, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->modifier:F

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v7

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->currency:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/Locale;

    const-string v12, "en"

    invoke-direct {v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v9, "nation"

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v9, "edited"

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v7

    const-string v9, ""

    if-ne v7, v5, :cond_3

    const-string v4, "one_star"

    goto :goto_3

    .line 316
    :cond_3
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    const-string v4, "two_stars"

    goto :goto_3

    .line 318
    :cond_4
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    const-string v4, "three_stars"

    goto :goto_3

    .line 320
    :cond_5
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_6

    const-string v4, "four_stars"

    goto :goto_3

    .line 322
    :cond_6
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    const-string v4, "five_stars"

    goto :goto_3

    :cond_7
    move-object v4, v9

    .line 326
    :goto_3
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "recommendationLevel"

    if-eqz v5, :cond_8

    .line 327
    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 329
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v4, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :goto_4
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_9
    const v1, 0x7f0802b7

    .line 336
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 338
    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0, p0}, Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/IPreviewFragment;)V

    iput-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->recommendationsAdapter:Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;

    .line 339
    invoke-virtual {v3, v5}, Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;->setNotifyOnChange(Z)V

    .line 340
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->recommendationsAdapter:Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080237

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 343
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->recommendations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_a

    .line 344
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_5

    .line 347
    :cond_a
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 348
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private initScoutDetails(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0802eb

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802ec

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0802e9

    .line 87
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0802ea

    .line 88
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0802ee

    .line 89
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pl.mkrstudio.truefootball3:drawable/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Scout;->getNationality()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Locale;

    const-string v8, "en"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getAge()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Scout;->getExperience()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Scout;->getExperience()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Scout;->getMonthlySalary()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->modifier:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->currency:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method initView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->initScoutDetails(Landroid/view/View;)V

    .line 80
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->initCurrentAssignment(Landroid/view/View;)V

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

    const p3, 0x7f0a007b

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "tf3Settings"

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "currencyModifier"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->modifier:F

    const-string p3, "currencyName"

    const-string v0, "EUR"

    .line 69
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->currency:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 73
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public showPlayerInfo(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->recommendations:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    .line 357
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->show()V

    :cond_1
    return-void
.end method
