.class public Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;
.super Landroidx/fragment/app/Fragment;
.source "FriendliesFragment.java"


# instance fields
.field acceptOffer:Landroid/widget/Button;

.field childToDisplay:I

.field friendlyVF:Landroid/widget/ViewFlipper;

.field leftButton:Landroid/widget/Button;

.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

.field rightButton:Landroid/widget/Button;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "childToDisplay"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->childToDisplay:I

    .line 46
    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->childToDisplay:I

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->initFriendlies(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->initFriendlyOffers(Landroid/view/View;)V

    return-void
.end method

.method private initFriendlies(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getCurrentFriendlyMatches()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 192
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    :goto_2
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "rival"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 197
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    :goto_3
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "rivalOriginalName"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v4

    const-string v6, "date"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v3, :cond_3

    const v6, 0x7f0c0359

    goto :goto_4

    :cond_3
    const v6, 0x7f0c016e

    :goto_4
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "homeAway"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    const-string v4, "-:-"

    goto :goto_6

    :cond_4
    const-string v4, ":"

    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    goto :goto_5

    :cond_5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    const-string v6, "result"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    const-string v7, "no"

    const-string v8, "yes"

    if-le v4, v6, :cond_6

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v4, v6, :cond_6

    :goto_7
    move-object v4, v8

    goto :goto_8

    :cond_6
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    if-le v4, v6, :cond_7

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v4, v6, :cond_7

    goto :goto_7

    :cond_7
    move-object v4, v7

    :goto_8
    const-string v6, "win"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v6

    if-le v4, v6, :cond_8

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v4, v6, :cond_8

    :goto_9
    move-object v7, v8

    goto :goto_a

    :cond_8
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v4

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v6

    if-le v4, v6, :cond_9

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v4, v6, :cond_9

    goto :goto_9

    :cond_9
    :goto_a
    const-string v4, "loss"

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 203
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    goto :goto_b

    :cond_a
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    :goto_b
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "teamEmblem"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 204
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    goto :goto_c

    :cond_b
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    :goto_c
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "countryCode"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 209
    :cond_c
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$5;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v1, 0x7f080197

    .line 217
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const v2, 0x7f080230

    .line 219
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 221
    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getCurrentFriendlyMatches()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_d

    .line 222
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_d

    .line 225
    :cond_d
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 226
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    :goto_d
    new-instance v2, Lpl/mkrstudio/truefootball3/adapters/FriendlyMatchAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5, v4, v0}, Lpl/mkrstudio/truefootball3/adapters/FriendlyMatchAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 231
    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/adapters/FriendlyMatchAdapter;->setNotifyOnChange(Z)V

    .line 233
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f08005e

    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 236
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$6;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFriendlyOffers(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080007

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->acceptOffer:Landroid/widget/Button;

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getFriendlyOffers()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$3;

    invoke-direct {v3, p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getFriendlyOffers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;

    .line 130
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    .line 134
    :goto_1
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rival"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "rivalOriginalName"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDate()Ljava/lang/String;

    move-result-object v6

    const-string v7, "date"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->isHome()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c016e

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0359

    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "homeAway"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    if-ne v6, v7, :cond_2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0586

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c052d

    :goto_3
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "status"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getFrom()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    if-ne v3, v6, :cond_3

    const-string v3, "false"

    goto :goto_4

    :cond_3
    const-string v3, "true"

    :goto_4
    const-string v6, "received"

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "teamEmblem"

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v5, "countryCode"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f080198

    .line 146
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const v3, 0x7f080231

    .line 147
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 149
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Friendlies;->getFriendlyOffers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_5

    .line 150
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_5

    .line 153
    :cond_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 157
    :goto_5
    new-instance v3, Lpl/mkrstudio/truefootball3/adapters/FriendlyOfferAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v1, v0}, Lpl/mkrstudio/truefootball3/adapters/FriendlyOfferAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x1

    .line 158
    invoke-virtual {v3, v0}, Lpl/mkrstudio/truefootball3/adapters/FriendlyOfferAdapter;->setNotifyOnChange(Z)V

    .line 160
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;

    invoke-direct {v0, p0, v3, p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;Lpl/mkrstudio/truefootball3/adapters/FriendlyOfferAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initViewFlipper(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->showHeader(Landroid/view/View;I)V

    const v0, 0x7f080196

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->friendlyVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f08005f

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->leftButton:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->rightButton:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->leftButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->rightButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->disableLeftButton()V

    .line 99
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->enableRightButton()V

    .line 101
    iget v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->childToDisplay:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->friendlyVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 103
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->friendlyVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->showHeader(Landroid/view/View;I)V

    .line 104
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->enableLeftButton()V

    .line 105
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->disableRightButton()V

    :cond_0
    return-void
.end method


# virtual methods
.method disableLeftButton()V
    .locals 2

    .line 245
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton()V
    .locals 2

    .line 255
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton()V
    .locals 3

    .line 250
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->leftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton()V
    .locals 3

    .line 260
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

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

    .line 280
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 282
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 284
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

    const p3, 0x7f0a006a

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 56
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->initFriendlies(Landroid/view/View;)V

    .line 57
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->initFriendlyOffers(Landroid/view/View;)V

    .line 58
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->initViewFlipper(Landroid/view/View;)V

    return-object p1
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/FriendliesFragment;->friendlyVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    return-void
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

    const v0, 0x7f080195

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c02ae

    .line 272
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c02a0

    .line 268
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
