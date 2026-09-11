.class public Lpl/mkrstudio/truefootball3/fragments/JobsFragment;
.super Landroidx/fragment/app/Fragment;
.source "JobsFragment.java"


# instance fields
.field fromMessage:Z

.field mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromMessage"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 38
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->fromMessage:Z

    return-void
.end method


# virtual methods
.method initView(Landroid/view/View;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080236

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getJobs()Lpl/mkrstudio/truefootball3/objects/Jobs;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Jobs;->getJobOffers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getJobs()Lpl/mkrstudio/truefootball3/objects/Jobs;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Jobs;->getJobOffers()Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "tf3Settings"

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "currencyModifier"

    .line 68
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v5, "currencyName"

    const-string v6, "EUR"

    .line 69
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpl/mkrstudio/truefootball3/objects/JobOffer;

    .line 72
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "teamName"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "teamOriginalName"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "teamEmblem"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v8

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v9

    if-eq v8, v9, :cond_1

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/Locale;

    const-string v12, "en"

    invoke-direct {v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "string"

    invoke-virtual {v9, v10, v12, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    const-string v8, "teamInfo"

    .line 81
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7f0c05f9

    .line 82
    invoke-virtual {p0, v7}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Team;->getBudget()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-long v9, v5

    invoke-static {v9, v10, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "teamInfo2"

    .line 85
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    const v1, 0x7f0801c4

    .line 89
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 91
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/JobOfferAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0, p0}, Lpl/mkrstudio/truefootball3/adapters/JobOfferAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lpl/mkrstudio/truefootball3/fragments/JobsFragment;)V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/adapters/JobOfferAdapter;->setNotifyOnChange(Z)V

    .line 94
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/JobsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

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

    .line 111
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    :try_start_0
    move-object v0, p1

    check-cast v0, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 115
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

    const p3, 0x7f0a0070

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 48
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public showJobOffer(Lpl/mkrstudio/truefootball3/objects/JobOffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jobOffer"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    iget-boolean v1, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->fromMessage:Z

    invoke-interface {v0, p1, v1}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;->onJobOfferSelected(Lpl/mkrstudio/truefootball3/objects/JobOffer;Z)V

    return-void
.end method
