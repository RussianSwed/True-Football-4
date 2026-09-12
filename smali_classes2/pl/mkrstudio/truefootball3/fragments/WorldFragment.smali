.class public Lpl/mkrstudio/truefootball3/fragments/WorldFragment;
.super Landroidx/fragment/app/Fragment;
.source "WorldFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field continentIndex:I

.field continents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Continent;",
            ">;"
        }
    .end annotation
.end field

.field root:Landroid/view/View;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method bindView()V
    .locals 6

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->root:Landroid/view/View;

    const v1, 0x7f0802ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->currentContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continentName(Lpl/mkrstudio/truefootball3/objects/Continent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->collectTiles(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lpl/mkrstudio/truefootball3/views/TileButton;->setVisibility(I)V

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "CC"

    invoke-virtual {p0, v0, v3, v1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->placeTile(Ljava/util/List;ILjava/lang/String;)I

    move-result v1

    const-string v2, "FC"

    invoke-virtual {p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->placeTile(Ljava/util/List;ILjava/lang/String;)I

    move-result v1

    const-string v2, "COM"

    invoke-virtual {p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->placeTile(Ljava/util/List;ILjava/lang/String;)I

    move-result v1

    const-string v2, "SUP"

    invoke-virtual {p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->placeTile(Ljava/util/List;ILjava/lang/String;)I

    move-result v1

    const-string v2, "RANK"

    invoke-virtual {p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->placeTile(Ljava/util/List;ILjava/lang/String;)I

    move-result v1

    const-string v2, "OTHER"

    invoke-virtual {p0, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->placeTile(Ljava/util/List;ILjava/lang/String;)I

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ViewHelper;->getScreenHeight(Landroid/app/Activity;)I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method collectTiles(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/views/TileButton;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f080092

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method continentName(Lpl/mkrstudio/truefootball3/objects/Continent;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EUR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0c026b

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "ASI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f0c0161

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "AFR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f0c013b

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "NAM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f0c0421

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "SAM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f0c05b6

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "OCE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f0c042f

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p1
.end method

.method currentContinent()Lpl/mkrstudio/truefootball3/objects/Continent;
    .locals 2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Continent;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getCompetitionsForTag(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            ">;"
        }
    .end annotation

    const-string v0, "CC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    goto :goto_0

    :cond_0
    const-string v0, "FC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->FEDERATION_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    goto :goto_0

    :cond_1
    const-string v0, "COM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->COMMUNITY_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    goto :goto_0

    :cond_2
    const-string v0, "SUP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SUPER_CUP_CONTINENTAL:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->currentContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->getCompetitionsByTypeAndContinent(Lpl/mkrstudio/truefootball3/objects/Competitions;Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;Lpl/mkrstudio/truefootball3/objects/Continent;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08005f

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continentIndex:I

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    rem-int/2addr p1, v0

    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continentIndex:I

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->bindView()V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f080067

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continentIndex:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continentIndex:I

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->bindView()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4

    return-void

    :cond_4
    check-cast p1, Ljava/lang/String;

    const-string v0, "RANK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->openRankings()V

    return-void

    :cond_5
    const-string v0, "OTHER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->openOtherLeagues()V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->openCup(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0a00e6

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->root:Landroid/view/View;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/World;->getContinents()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continentIndex:I

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    :goto_0
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continents:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Continent;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput p3, p0, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->continentIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const p2, 0x7f0801aa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f08005f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080067

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->bindView()V

    return-object p1
.end method

.method openCup(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getCompetitionsForTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MainActivity;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openStackedFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method openOtherLeagues()V
    .locals 1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MainActivity;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->showOtherCountriesCompetitionsDialog()V

    return-void
.end method

.method openRankings()V
    .locals 3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/activities/MainActivity;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->currentContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-direct {v1, v2}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;-><init>(Lpl/mkrstudio/truefootball3/objects/Continent;)V

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/activities/MainActivity;->openStackedFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method placeTile(Ljava/util/List;ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/views/TileButton;",
            ">;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-string v0, "CC"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getCompetitionsForTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    const v0, 0x7f0c01ad

    const v1, 0x7f070137

    goto :goto_0

    :cond_1
    const-string v0, "FC"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getCompetitionsForTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return p2

    :cond_2
    const v0, 0x7f0c0280

    const v1, 0x7f07013b

    goto :goto_0

    :cond_3
    const-string v0, "COM"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p3}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getCompetitionsForTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return p2

    :cond_4
    const v0, 0x7f0c01d1

    const v1, 0x7f070139

    goto :goto_0

    :cond_5
    const-string v0, "SUP"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p3}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getCompetitionsForTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return p2

    :cond_6
    const v0, 0x7f0c05ee

    const v1, 0x7f070141

    goto :goto_0

    :cond_7
    const-string v0, "RANK"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0c0529

    const v1, 0x7f070318

    goto :goto_0

    :cond_8
    const-string v0, "OTHER"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0c0679

    const v1, 0x7f07040b

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/TileButton;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/views/TileButton;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/WorldFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_9
    return p2
.end method
