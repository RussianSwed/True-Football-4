.class public Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "MenuCompetitionsFragment.java"


# instance fields
.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstImage",
            "secondImage"
        }
    .end annotation

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 323
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p2, 0x0

    .line 324
    invoke-virtual {v1, p1, p2, p2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method


# virtual methods
.method existsChosenCountryCompetition(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "competitions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            ">;)Z"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 299
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "USA"

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 301
    :cond_1
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
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

    .line 311
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 313
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 315
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
    .locals 10
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

    const p3, 0x7f0a0073

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 41
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f080092

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009c

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009d

    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009e

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009f

    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800a0

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800a1

    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800a2

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0800a3

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080093

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080094

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080095

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080096

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080097

    .line 55
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080098

    .line 56
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080099

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009a

    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f08009b

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/Locale;

    const-string v6, "en"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {v2, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 82
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v5, 0x7f0c01ad

    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 83
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v5, 0x7f0800a8

    invoke-virtual {v2, v5}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 84
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v5, 0x7f070137

    invoke-virtual {v2, v5}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 88
    :goto_0
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->FEDERATION_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c0280

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 90
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800b3

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 91
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f07013b

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    add-int/lit8 v2, v2, 0x1

    .line 95
    :cond_1
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->COMMUNITY_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 96
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c01d1

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 97
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800ab

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 98
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f070139

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    add-int/lit8 v2, v2, 0x1

    .line 102
    :cond_2
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SUPER_CUP_CONTINENTAL:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const v6, 0x7f070141

    if-nez v5, :cond_3

    .line 103
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SUPER_CUP_CONTINENTAL:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 104
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v5, v8}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 105
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v7, 0x7f0800d4

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 107
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    add-int/lit8 v2, v2, 0x1

    .line 111
    :cond_3
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->WORLD_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 112
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v7, 0x7f0c065f

    invoke-virtual {p0, v7}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 113
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v7, 0x7f0800db

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 114
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v7, 0x7f070143

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    add-int/lit8 v2, v2, 0x1

    .line 118
    :cond_4
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->NATIONAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 119
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v7, 0x7f0c03e9

    invoke-virtual {p0, v7}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 121
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v7, 0x7f0800c1

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 123
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f07013d

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 124
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {p0, v5, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 125
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    .line 129
    :cond_5
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SUPER_CUP_DOMESTIC:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 130
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 131
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 132
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 133
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-static {v7, v9}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_7
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v7, 0x7f0800d5

    invoke-virtual {v5, v7}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 138
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 139
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v5, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 140
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    .line 145
    :cond_8
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 146
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 147
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c04fc

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 148
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800c5

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 149
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0702d3

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    add-int/lit8 v2, v2, 0x1

    .line 153
    :cond_9
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->FIRST_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 154
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 155
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c028c

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 156
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800b5

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 158
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070155

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 159
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v5, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 160
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    .line 165
    :cond_a
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SECOND_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 166
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 167
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c0578

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 168
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800cc

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 170
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070156

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 171
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v5, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 172
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    .line 176
    :cond_b
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->THIRD_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 177
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 178
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c060f

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 179
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800d8

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 181
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070157

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 182
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v5, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 183
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    .line 187
    :cond_c
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->FOURTH_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 188
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 189
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c0297

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 190
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800b6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 192
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070158

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 193
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v5, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 194
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    .line 198
    :cond_d
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->FIFTH_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 199
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 200
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c0284

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 201
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800b4

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 203
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070159

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 204
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v5, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 205
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    .line 209
    :cond_e
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SIXTH_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 210
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 211
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c05af

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 212
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800cf

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 214
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07015a

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 215
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v5, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 216
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    .line 220
    :cond_f
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;->SEVENTH_DIVISION:Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCompetitionByDetailedType(Lpl/mkrstudio/truefootball3/enums/CompetitionDetailedType;)Ljava/util/List;

    move-result-object v5

    .line 221
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->existsChosenCountryCompetition(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 222
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0c058a

    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 223
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v6, 0x7f0800ce

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 225
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07015b

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 226
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v5, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->createSingleImageFromMultipleImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 227
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    invoke-virtual {v1, v6}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    .line 231
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_11
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x5

    if-eqz v5, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 233
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "EUR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 234
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ASI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 235
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AFR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 236
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "NAM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 237
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SAM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 238
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "OCE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 239
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WORLD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 240
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 241
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    :cond_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v3, :cond_15

    .line 247
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_14

    .line 249
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v4, "USA"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v5, "CAN"

    if-eqz p2, :cond_13

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    .line 250
    :cond_13
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    .line 253
    :cond_14
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f0c065e

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 254
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f0800c4

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 255
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f07040b

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    add-int/lit8 v2, v2, 0x1

    .line 259
    :cond_15
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f0c0358

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 260
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f0800b8

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 261
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f07021f

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    add-int/2addr v2, v3

    .line 264
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f0c0529

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 265
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f0800c9

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 266
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f070318

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    add-int/2addr v2, v3

    .line 269
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f0c0137

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileText(Ljava/lang/String;)V

    .line 270
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f0800a4

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setId(I)V

    .line 271
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const v0, 0x7f07006e

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setTileDrawableResource(I)V

    .line 273
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lpl/mkrstudio/truefootball3/helpers/ViewHelper;->getScreenHeight(Landroid/app/Activity;)I

    move-result p2

    .line 275
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/TileButton;

    .line 276
    new-instance v4, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment$1;

    invoke-direct {v4, p0, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/MenuCompetitionsFragment;Lpl/mkrstudio/truefootball3/views/TileButton;)V

    invoke-virtual {v1, v4}, Lpl/mkrstudio/truefootball3/views/TileButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/views/TileButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    div-int/lit8 v4, p2, 0x5

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :cond_16
    :goto_4
    add-int/2addr v2, v3

    .line 287
    rem-int/lit8 p2, v2, 0x3

    if-eqz p2, :cond_17

    goto :goto_4

    .line 289
    :cond_17
    :goto_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_18

    .line 290
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/views/TileButton;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/views/TileButton;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    return-object p1
.end method
