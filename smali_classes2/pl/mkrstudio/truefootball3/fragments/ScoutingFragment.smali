.class public Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;
.super Landroidx/fragment/app/Fragment;
.source "ScoutingFragment.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/fragments/IPreviewFragment;


# instance fields
.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

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

.field scoutsAdapter:Lpl/mkrstudio/truefootball3/adapters/ScoutsAdapter;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private initRecommendations(Landroid/view/View;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->recommendations:Ljava/util/List;

    .line 88
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getScouting()Lpl/mkrstudio/truefootball3/objects/Scouting;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getScouts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Scout;

    .line 89
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 90
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 91
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->recommendations:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->recommendations:Ljava/util/List;

    new-instance v4, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$2;

    invoke-direct {v4, v0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "tf3Settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v6, "currencyModifier"

    .line 112
    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v6, "currencyName"

    const-string v7, "EUR"

    .line 113
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->recommendations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    .line 116
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 118
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "name"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "nr"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v11

    const-string v12, "position"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const-string v12, "skill"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v11

    float-to-double v12, v4

    invoke-virtual {v11, v12, v13}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v11

    invoke-static {v11, v12, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "value"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/util/Locale;

    const-string v5, "en"

    invoke-direct {v15, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "drawable"

    invoke-virtual {v13, v5, v15, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v11, "nation"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v11, "edited"

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v5

    const-string v11, ""

    if-ne v5, v9, :cond_2

    const-string v5, "one_star"

    goto :goto_2

    .line 129
    :cond_2
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v5

    const/4 v9, 0x2

    if-ne v5, v9, :cond_3

    const-string v5, "two_stars"

    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_4

    const-string v5, "three_stars"

    goto :goto_2

    .line 133
    :cond_4
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v5

    const/4 v9, 0x4

    if-ne v5, v9, :cond_5

    const-string v5, "four_stars"

    goto :goto_2

    .line 135
    :cond_5
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result v5

    const/4 v8, 0x5

    if-ne v5, v8, :cond_6

    const-string v5, "five_stars"

    goto :goto_2

    :cond_6
    move-object v5, v11

    .line 139
    :goto_2
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "recommendationLevel"

    if-eqz v8, :cond_7

    .line 140
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 142
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v15, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v10, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :goto_3
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    const v3, 0x7f0802b7

    .line 149
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 151
    new-instance v4, Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2, v0}, Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/IPreviewFragment;)V

    iput-object v4, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->recommendationsAdapter:Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;

    .line 152
    invoke-virtual {v4, v9}, Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;->setNotifyOnChange(Z)V

    .line 153
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->recommendationsAdapter:Lpl/mkrstudio/truefootball3/adapters/RecommendationsAdapter;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v2, 0x7f080237

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 156
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->recommendations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    .line 160
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 161
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private initScoutList(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getClubStaff()Lpl/mkrstudio/truefootball3/objects/ClubStaff;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getScouting()Lpl/mkrstudio/truefootball3/objects/Scouting;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Scouting;->getScouts()Ljava/util/List;

    move-result-object v1

    .line 173
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Scout;

    .line 174
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 176
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Scout;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Scout;->getExperience()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const-string v6, "experience"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Scout;->getNationality()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/Locale;

    const-string v9, "en"

    invoke-direct {v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "nation"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f0c021a

    invoke-virtual {p0, v7}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 184
    :try_start_0
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRegion()I

    move-result v8

    invoke-virtual {p0, v8}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v8, v6

    .line 188
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v8, "-"

    :cond_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "assignment"

    .line 189
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0c0221

    invoke-virtual {p0, v8}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getDaysLeft()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v3, "days"

    .line 196
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const v2, 0x7f0802ef

    .line 200
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 202
    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/ScoutsAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, Lpl/mkrstudio/truefootball3/adapters/ScoutsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->scoutsAdapter:Lpl/mkrstudio/truefootball3/adapters/ScoutsAdapter;

    const/4 v0, 0x1

    .line 203
    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/adapters/ScoutsAdapter;->setNotifyOnChange(Z)V

    .line 204
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->scoutsAdapter:Lpl/mkrstudio/truefootball3/adapters/ScoutsAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$3;

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;Ljava/util/List;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080239

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method initView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->initScoutList(Landroid/view/View;)V

    .line 63
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->initRecommendations(Landroid/view/View;)V

    const v0, 0x7f0801aa

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 220
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 222
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 224
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnMenuButtonClickedListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
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

    const p3, 0x7f0a007c

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 56
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->initView(Landroid/view/View;)V

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

    .line 231
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->recommendations:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutingFragment;->pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    .line 233
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->show()V

    :cond_1
    return-void
.end method
