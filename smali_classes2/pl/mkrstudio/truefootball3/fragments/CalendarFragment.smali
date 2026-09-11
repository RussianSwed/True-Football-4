.class public Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;
.super Landroidx/fragment/app/Fragment;
.source "CalendarFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
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

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0a0065

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 38
    invoke-virtual {p0, p2, p1}, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;->renderCalendar(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V

    return-object p1
.end method

.method public renderCalendar(Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/view/View;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ud",
            "view"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v0

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    :goto_0
    const/4 v1, 0x7

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x6

    if-eq v2, v3, :cond_0

    const/4 v1, -0x1

    .line 47
    invoke-virtual {v0, v4, v1}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x7

    .line 50
    invoke-virtual {v0, v4, v2}, Ljava/util/GregorianCalendar;->add(II)V

    const v2, 0x7f0800df

    .line 52
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_c

    .line 55
    new-instance v5, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_b

    const/4 v7, 0x5

    .line 57
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->setDay(II)V

    .line 59
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v7

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->areDatesEqual(Ljava/lang/String;Ljava/util/GregorianCalendar;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, -0x100

    .line 60
    invoke-virtual {v5, v6, v7}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->setDayTextColor(II)V

    goto :goto_3

    .line 62
    :cond_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, -0x777778

    .line 63
    invoke-virtual {v5, v6, v7}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->setDayTextColor(II)V

    .line 66
    :cond_2
    :goto_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v7

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v9

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v10

    invoke-virtual {v10, v0}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lpl/mkrstudio/truefootball3/objects/Competitions;->isMatchInDay(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 68
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v8

    const/16 v9, 0x96

    const/16 v10, 0x50

    const/16 v11, 0xc8

    if-nez v8, :cond_3

    .line 69
    invoke-static {v9, v11, v11, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->setDayBackgroundColor(II)V

    goto/16 :goto_5

    .line 70
    :cond_3
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v8

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v8, v12, :cond_8

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v8

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v8, v12, :cond_4

    goto :goto_4

    .line 72
    :cond_4
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v8

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v8, v12, :cond_5

    .line 73
    invoke-static {v9, v11, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->setDayBackgroundColor(II)V

    goto :goto_5

    .line 74
    :cond_5
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v8

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v8, v12, :cond_6

    .line 75
    invoke-static {v9, v10, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->setDayBackgroundColor(II)V

    goto :goto_5

    .line 76
    :cond_6
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v8

    sget-object v12, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v8, v12, :cond_9

    .line 77
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v12, "WORLD_CUP"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 78
    invoke-static {v9, v11, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->setDayBackgroundColor(II)V

    goto :goto_5

    .line 80
    :cond_7
    invoke-static {v9, v10, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->setDayBackgroundColor(II)V

    goto :goto_5

    .line 71
    :cond_8
    :goto_4
    invoke-static {v9, v10, v11, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v5, v6, v8}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->setDayBackgroundColor(II)V

    .line 83
    :cond_9
    :goto_5
    new-instance v8, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment$1;

    invoke-direct {v8, p0, v7}, Lpl/mkrstudio/truefootball3/fragments/CalendarFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/CalendarFragment;Lpl/mkrstudio/truefootball3/objects/Match;)V

    invoke-virtual {v5, v6, v8}, Lpl/mkrstudio/truefootball3/views/CalendarWeekView;->addOnClickListener(ILandroid/view/View$OnClickListener;)V

    :cond_a
    const/4 v7, 0x1

    .line 94
    invoke-virtual {v0, v4, v7}, Ljava/util/GregorianCalendar;->add(II)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 96
    :cond_b
    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_c
    return-void
.end method
