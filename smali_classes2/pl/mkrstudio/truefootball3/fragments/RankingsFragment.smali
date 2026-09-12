.class public Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "RankingsFragment.java"


# instance fields
.field leftButton:Landroid/widget/Button;

.field rankingsVF:Landroid/widget/ViewFlipper;

.field rightButton:Landroid/widget/Button;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;

.field continent:Lpl/mkrstudio/truefootball3/objects/Continent;

.field continents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Continent;",
            ">;"
        }
    .end annotation
.end field

.field continentIndex:I

.field rankingRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Continent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continent"
        }
    .end annotation

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continent:Lpl/mkrstudio/truefootball3/objects/Continent;

    return-void
.end method

.method private initClubRanking(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getRankingContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "USA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "CAN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getPlayableLeagues()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 107
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 108
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 109
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Team;

    .line 110
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getAllTeams()Ljava/util/List;

    move-result-object v3

    .line 102
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 103
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 118
    :cond_7
    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$3;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eqz v4, :goto_3

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    if-eqz v5, :goto_3

    .line 129
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 130
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    const-string v7, "player"

    if-ne v6, v4, :cond_8

    const-string v6, "true"

    .line 131
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    const-string v6, "false"

    .line 133
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_4
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getRank()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "points"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rank"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :goto_3

    new-instance v8, Ljava/util/Locale;

    const-string v9, "en"

    invoke-direct {v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :goto_3

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    .line 139
    invoke-virtual {v7, v4, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "flag"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v2

    .line 142
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    const v1, 0x7f0800fc

    .line 145
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    if-eqz p1, :cond_a

    .line 146
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/RankingAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/RankingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 147
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_a
    return-void
.end method

.method private initCountryRanking(Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getRankingContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$4;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Country;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getOriginalContinentalRankPoints()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    .line 163
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 164
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    const/4 v6, 0x0

    if-eqz v5, :cond_player_null

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    if-eqz v5, :cond_player_null

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v6

    :cond_player_null
    move-object v5, v6

    const-string v6, "player"

    if-ne v5, v3, :cond_1

    const-string v5, "true"

    .line 165
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v5, "false"

    .line 167
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_1
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinentalRankPoints()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "points"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rank"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Ljava/util/Locale;

    const-string v8, "en"

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "string"

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_name_ok

    move-object v5, v6

    goto :goto_name

    :cond_name_ok
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_name
    const-string v6, "name"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    .line 173
    invoke-virtual {v6, v3, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "flag"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 176
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f08011e

    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    if-eqz p1, :cond_list

    .line 180
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/RankingAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lpl/mkrstudio/truefootball3/adapters/RankingAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 181
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_list
    return-void
.end method


# virtual methods
.method disableLeftButton()V
    .locals 2

    .line 185
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->leftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method disableRightButton()V
    .locals 2

    .line 195
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method enableLeftButton()V
    .locals 3

    .line 190
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->leftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method enableRightButton()V
    .locals 3

    .line 200
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0802af

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rankingsVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f08005f

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->leftButton:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rightButton:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->leftButton:Landroid/widget/Button;

    if-eqz v0, :skip_left

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :skip_left
    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rightButton:Landroid/widget/Button;

    if-eqz v0, :skip_right

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :skip_right

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->showHeader(Landroid/view/View;I)V

    .line 88
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->disableLeftButton()V

    .line 89
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->enableRightButton()V

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initContinentPager(Landroid/view/View;)V

    .line 91
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initCountryRanking(Landroid/view/View;)V

    .line 92
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initClubRanking(Landroid/view/View;)V

    return-void
.end method

.method getRankingContinent()Lpl/mkrstudio/truefootball3/objects/Continent;
    .locals 2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continent:Lpl/mkrstudio/truefootball3/objects/Continent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    if-eqz v0, :cond_team

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-eqz v0, :cond_team

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    if-eqz v0, :cond_team

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v0

    if-eqz v0, :cond_team

    return-object v0

    :cond_team
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continents:Ljava/util/List;

    if-eqz v0, :cond_null

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_null

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Continent;

    return-object v0

    :cond_null
    const/4 v0, 0x0

    return-object v0
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

    const p3, 0x7f0a007a

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 48
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showHeader(Landroid/view/View;I)V
    .locals 2
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

    const v0, 0x7f0802ae

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801aa

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c01bc

    .line 227
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/16 p2, 0x8

    .line 228
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c020b

    .line 209
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x0

    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$5;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method continentName(Lpl/mkrstudio/truefootball3/objects/Continent;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "string"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method initContinentPager(Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rankingRoot:Landroid/view/View;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    const/4 v1, 0x0

    if-eqz v0, :no_world

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v0

    if-eqz v0, :no_world

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continents:Ljava/util/List;

    goto :got_world

    :no_world
    const/4 v0, 0x0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continents:Ljava/util/List;

    :got_world
    iput v1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continentIndex:I

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continent:Lpl/mkrstudio/truefootball3/objects/Continent;

    if-nez v2, :cond_0

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continents:Ljava/util/List;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Continent;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continentIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continents:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continentIndex:I

    if-ltz v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Continent;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continent:Lpl/mkrstudio/truefootball3/objects/Continent;

    :cond_4
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->bindContinentHeader(Landroid/view/View;)V

    if-nez p1, :cond_arrows

    return-void

    :cond_arrows
    const v0, 0x7f080061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :skip_left

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$6;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :skip_left
    const v0, 0x7f080069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :skip_right

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$7;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :skip_right
    return-void
.end method

.method bindContinentHeader(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f080107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->getRankingContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continentName(Lpl/mkrstudio/truefootball3/objects/Continent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method cycleContinent(I)V
    .locals 2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continents:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continentIndex:I

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    iput v1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continentIndex:I

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continents:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Continent;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->continent:Lpl/mkrstudio/truefootball3/objects/Continent;

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rankingRoot:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->bindContinentHeader(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initCountryRanking(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initClubRanking(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
