.class public Lpl/mkrstudio/truefootball3/objects/NationalTeams;
.super Ljava/lang/Object;
.source "NationalTeams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCareerHistoryRows(Landroid/widget/LinearLayout;Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 10

    if-eqz p0, :goto_1

    if-eqz p1, :goto_1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCareerSeasons()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const v2, 0x7f0a009e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080221

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080204

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0801a1

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f080074

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->getSeason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->getClub()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->getTransfers()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->getTransfers()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->getApps()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->getGoals()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->getAssists()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static addTeams(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/World;)V
    .locals 8

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->ensure(Lpl/mkrstudio/truefootball3/objects/World;)V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NTEUR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    const-string v2, "NTEUQ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v4, "NTWCQ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "NTEUQ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/16 v1, 0x8

    :cond_6
    invoke-static {p1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->eligibleTeams(Lpl/mkrstudio/truefootball3/objects/World;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v4, 0x8

    const/4 v6, 0x0

    if-ge v5, v4, :cond_7

    invoke-static {p1, v2, v6}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->eligibleTeams(Lpl/mkrstudio/truefootball3/objects/World;ZZ)Ljava/util/List;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_8

    invoke-static {p1, v6, v6}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->eligibleTeams(Lpl/mkrstudio/truefootball3/objects/World;ZZ)Ljava/util/List;

    move-result-object v0

    :cond_8
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->clear()V

    move p1, v1

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_b

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_b
    const/4 p1, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_d

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method private static addPlayerToMap(Ljava/util/Map;Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private static eligibleTeams(Lpl/mkrstudio/truefootball3/objects/World;ZZ)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xb

    if-ge v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "europe"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p0, Lpl/mkrstudio/truefootball3/objects/NationalTeams$TeamSkillComparator;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/NationalTeams$TeamSkillComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static ensure(Lpl/mkrstudio/truefootball3/objects/World;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/World;->getNationalTeams()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Continent;

    if-nez v3, :cond_2

    goto :cond_1

    :cond_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCountries()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    goto :cond_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Country;

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/Locale;

    const-string v6, "en"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Country;->getSkill()F

    move-result v5

    float-to-double v8, v5

    new-instance v5, Lpl/mkrstudio/truefootball3/objects/Team;

    const/16 v10, 0x7530

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v14, v4

    move-object v6, v13

    invoke-direct/range {v5 .. v15}, Lpl/mkrstudio/truefootball3/objects/Team;-><init>(Ljava/lang/String;Ljava/lang/String;DIIBLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/Country;Z)V

    invoke-virtual {v1, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lpl/mkrstudio/truefootball3/objects/World;->getKnownTeams(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-static {v2, v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addPlayerToMap(Ljava/util/Map;Lpl/mkrstudio/truefootball3/objects/Player;)V

    goto :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/objects/World;->getFreeAgents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-static {v2, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->addPlayerToMap(Ljava/util/Map;Lpl/mkrstudio/truefootball3/objects/Player;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eqz v1, :cond_b

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_3

    :cond_d
    invoke-interface {v4}, Ljava/util/List;->clear()V

    new-instance v5, Ljava/util/Locale;

    const-string v6, "en"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lpl/mkrstudio/truefootball3/objects/NationalTeams$PlayerSkillComparator;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams$PlayerSkillComparator;-><init>()V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0x17

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_f

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->calculateSkill()F

    move-result v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Team;->setSkill(F)V

    goto :goto_3

    :cond_10
    return-void
.end method

.method public static recordMove(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;JLpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const-string v1, "Free"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string v6, "0"

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " -> "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    invoke-static/range {v2 .. v7}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->recordStat(Lpl/mkrstudio/truefootball3/objects/Player;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCareerSeasons()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v3}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->findSeason(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v8}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->appendTransfer(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static recordMatchEvent(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;I)V
    .locals 7

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_3

    move v2, p3

    goto :goto_0

    :cond_3
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, p1, :cond_4

    move v3, p3

    goto :goto_0

    :cond_4
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    if-ne p2, p1, :cond_5

    move v4, p3

    :goto_0
    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->recordStat(Lpl/mkrstudio/truefootball3/objects/Player;Ljava/lang/String;IIILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static recordStat(Lpl/mkrstudio/truefootball3/objects/Player;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getCareerSeasons()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lpl/mkrstudio/truefootball3/objects/NationalTeams;->findSeason(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;-><init>()V

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->setSeason(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0, p5}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->setClub(Ljava/lang/String;)V

    :cond_3
    iget p0, v0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->apps:I

    add-int/2addr p0, p2

    iput p0, v0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->apps:I

    iget p0, v0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->goals:I

    add-int/2addr p0, p3

    iput p0, v0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->goals:I

    iget p0, v0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->assists:I

    add-int/2addr p0, p4

    iput p0, v0, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->assists:I

    return-void
.end method

.method private static findSeason(Ljava/util/List;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerSeasonRecord;->getSeason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
