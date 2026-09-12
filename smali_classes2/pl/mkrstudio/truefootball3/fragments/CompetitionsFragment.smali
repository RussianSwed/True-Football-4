.class public Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "CompetitionsFragment.java"


# static fields
.field public static OCEANIAN_CHAMPIONS_CUP_BERTHS:[I


# instance fields
.field EAST_ASIA_CHAMPIONS_CUP_BERTHS_2021:[I

.field EAST_ASIA_CONTINENTAL_CUP_BERTHS_2021:[I

.field EUROPEAN_CHAMPIONS_CUP_BERTHS:[I

.field EUROPEAN_COMMUNITY_CUP_BERTHS:[I

.field EUROPEAN_CONTINENTAL_CUP_BERTHS:[I

.field WEST_ASIA_CHAMPIONS_CUP_BERTHS_2021:[I

.field WEST_ASIA_CONTINENTAL_CUP_BERTHS_2021:[I

.field arrowLeft:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowLeft3:Landroid/widget/Button;

.field arrowLeft4:Landroid/widget/Button;

.field arrowRight:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field arrowRight3:Landroid/widget/Button;

.field arrowRight4:Landroid/widget/Button;

.field competitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            ">;"
        }
    .end annotation
.end field

.field competitionsHeader:Landroid/widget/TextView;

.field displayTypeHeader:Landroid/widget/TextView;

.field displayTypeVF:Landroid/widget/ViewFlipper;

.field fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

.field groupLL:Landroid/widget/LinearLayout;

.field groupSpinner:Landroid/widget/Spinner;

.field leagueTables:Z

.field pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field showedCompetition:I

.field showedGroup:I

.field statsTypeHeader:Landroid/widget/TextView;

.field statsTypeVF:Landroid/widget/ViewFlipper;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;

.field weeksLeftButton:Landroid/widget/Button;

.field weeksRightButton:Landroid/widget/Button;

.field weeksSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 894
    fill-array-data v0, :array_0

    sput-object v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->OCEANIAN_CHAMPIONS_CUP_BERTHS:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "competitions",
            "leagueTables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Competition;",
            ">;Z)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedCompetition:I

    .line 67
    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedGroup:I

    const/16 v0, 0x37

    new-array v1, v0, [I

    .line 914
    fill-array-data v1, :array_0

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->EUROPEAN_CHAMPIONS_CUP_BERTHS:[I

    new-array v1, v0, [I

    .line 921
    fill-array-data v1, :array_1

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->EUROPEAN_CONTINENTAL_CUP_BERTHS:[I

    new-array v0, v0, [I

    .line 935
    fill-array-data v0, :array_2

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->EUROPEAN_COMMUNITY_CUP_BERTHS:[I

    const/16 v0, 0x3c

    new-array v1, v0, [I

    .line 944
    fill-array-data v1, :array_3

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->EAST_ASIA_CHAMPIONS_CUP_BERTHS_2021:[I

    new-array v1, v0, [I

    .line 946
    fill-array-data v1, :array_4

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->EAST_ASIA_CONTINENTAL_CUP_BERTHS_2021:[I

    new-array v1, v0, [I

    .line 948
    fill-array-data v1, :array_5

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->WEST_ASIA_CHAMPIONS_CUP_BERTHS_2021:[I

    new-array v0, v0, [I

    .line 950
    fill-array-data v0, :array_6

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->WEST_ASIA_CONTINENTAL_CUP_BERTHS_2021:[I

    .line 96
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    .line 97
    iput-boolean p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->leagueTables:Z

    return-void

    :array_0
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x3
        0x2
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showCompetitionDetails(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showPreviousDisplayType()V

    return-void
.end method

.method static synthetic access$200(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showNextDisplayType()V

    return-void
.end method

.method static synthetic access$300(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showPreviousStatsType()V

    return-void
.end method

.method static synthetic access$400(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showNextStatsType()V

    return-void
.end method

.method static synthetic access$500(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Lpl/mkrstudio/truefootball3/objects/Competition;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->initGroupSpinner(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    return-void
.end method

.method static synthetic access$600(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showTable(Landroid/view/View;)V

    return-void
.end method

.method private addDayListView(Landroid/widget/LinearLayout;Ljava/util/List;ZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "day",
            "international",
            "domesticCup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1098
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 1099
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1100
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    const v4, 0x7f0a00e4

    .line 1101
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelector(I)V

    const v4, 0x7f0a00ca

    .line 1102
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 1104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 1106
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 1107
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1113
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    const-string v9, "?"

    if-eqz v8, :cond_0

    .line 1114
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    move-object v8, v9

    :goto_1
    const-string v10, ""

    if-eqz p3, :cond_1

    .line 1116
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_1
    move-object v11, v10

    .line 1119
    :goto_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1120
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v9

    :cond_2
    if-eqz p3, :cond_3

    .line 1122
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v10

    .line 1124
    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeGoals()B

    move-result v12

    .line 1125
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayGoals()B

    move-result v13

    if-eqz p3, :cond_4

    .line 1128
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v7, Ljava/util/Locale;

    move-object/from16 v17, v2

    const-string v2, "en"

    invoke-direct {v7, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v4

    const-string v4, "drawable"

    invoke-virtual {v3, v7, v4, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "homeFlag"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v11, Ljava/util/Locale;

    invoke-direct {v11, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v2, v4, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "awayFlag"

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    :goto_3
    if-eqz p4, :cond_5

    .line 1134
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getDivision(Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "homeDivision"

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getDivision(Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "awayDivision"

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v2, "homeTeam"

    .line 1138
    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ":"

    const-string v3, "result"

    const/4 v4, -0x1

    if-le v12, v4, :cond_6

    .line 1140
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    const-string v4, "*"

    const/4 v7, -0x1

    if-le v12, v7, :cond_8

    .line 1142
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    const/4 v7, -0x1

    :cond_8
    if-le v12, v7, :cond_9

    .line 1144
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    const-string v2, "-:-"

    .line 1147
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const-string v2, "awayTeam"

    .line 1149
    invoke-interface {v6, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonByPenalties()Z

    move-result v2

    const-string v3, "none"

    const-string v4, "away"

    const-string v7, "home"

    const-string v8, "underline"

    if-nez v2, :cond_d

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isHomeTeamWonInExtraTime()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->homeTeamAdvanced()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_6

    .line 1153
    :cond_a
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonByPenalties()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->isAwayTeamWonInExtraTime()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->awayTeamAdvanced()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    .line 1156
    :cond_b
    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1154
    :cond_c
    :goto_5
    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1152
    :cond_d
    :goto_6
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :goto_7
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    if-ne v2, v8, :cond_e

    const/16 v16, 0x0

    goto :goto_8

    :cond_e
    const/16 v16, -0x1

    .line 1163
    :goto_8
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    const/4 v9, 0x1

    if-ne v2, v8, :cond_f

    const/4 v2, 0x1

    goto :goto_9

    :cond_f
    move/from16 v2, v16

    :goto_9
    const-string v8, "player"

    if-nez v2, :cond_10

    .line 1168
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    move-object/from16 v2, v18

    goto :goto_b

    :cond_10
    if-ne v2, v9, :cond_11

    .line 1170
    invoke-interface {v6, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 1172
    :cond_11
    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 1175
    :goto_b
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object v4, v2

    move-object/from16 v2, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_12
    move-object/from16 v17, v2

    move-object v2, v4

    if-eqz p3, :cond_13

    .line 1178
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/InternationalFixtureAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lpl/mkrstudio/truefootball3/adapters/InternationalFixtureAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v3, v17

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_c

    :cond_13
    move-object/from16 v3, v17

    const/4 v4, 0x0

    .line 1180
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/FixtureAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5, v4, v2}, Lpl/mkrstudio/truefootball3/adapters/FixtureAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_c
    const/4 v1, -0x2

    move-object/from16 v2, p1

    const/4 v4, -0x1

    .line 1181
    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private addDayTextView(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "day"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;)V"
        }
    .end annotation

    .line 1197
    new-instance v0, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1198
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/Match;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    .line 1199
    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextColor(I)V

    const/16 v2, 0x11

    .line 1200
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setGravity(I)V

    .line 1201
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const/high16 v2, 0x41900000    # 18.0f

    .line 1202
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextSize(F)V

    goto :goto_0

    .line 1203
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_1

    const/high16 v2, 0x41400000    # 12.0f

    .line 1204
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextSize(F)V

    goto :goto_0

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    const/high16 v2, 0x41c00000    # 24.0f

    .line 1206
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setTextSize(F)V

    .line 1208
    :cond_2
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1209
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p2, p2, 0xf

    if-eq p2, v3, :cond_3

    const/16 p2, 0xa

    .line 1210
    invoke-virtual {v2, v1, p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1213
    :cond_3
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTableListView(Landroid/widget/LinearLayout;Lpl/mkrstudio/truefootball3/objects/Competition;IIIIZ)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "c",
            "startWeek",
            "endWeek",
            "numberOfTeamsInGroup",
            "groupNr",
            "international"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1022
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 1023
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1024
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    const v3, 0x7f0a00e4

    .line 1025
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 1026
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    const/16 v6, 0x14

    .line 1028
    invoke-virtual {v3, v2, v2, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1031
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0a00ca

    .line 1032
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 1034
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static {v6, v8, v9, v11, v10}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getChampionsCupTable(Lpl/mkrstudio/truefootball3/fixtures/Fixtures;IIII)Ljava/util/List;

    move-result-object v6

    .line 1037
    new-instance v8, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-direct {v8}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;-><init>()V

    invoke-interface {v6, v2, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v8, p2

    .line 1039
    invoke-virtual {v0, v8}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->updateHighlightedPlaces(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 v9, 0x0

    .line 1041
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 1042
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 1043
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1044
    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "false"

    const-string v14, "none"

    const-string v15, "flag"

    const-string v4, "points"

    const-string v5, "goals"

    const-string v7, "losses"

    const-string v2, "draws"

    move-object/from16 p3, v6

    const-string v6, "wins"

    const-string v8, "matches"

    move-object/from16 v16, v1

    const-string v1, "team"

    move-object/from16 v17, v3

    const-string v3, "place"

    const-string v0, "player"

    move-object/from16 p4, v10

    const-string v10, "color"

    move/from16 p5, v9

    const-string v9, ""

    if-nez v12, :cond_1

    .line 1045
    invoke-interface {v11, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    invoke-interface {v11, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c03ca

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c065d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0244

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c032a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0503

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    invoke-interface {v11, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-interface {v11, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move/from16 v0, p5

    move-object/from16 v2, v17

    const/4 v4, 0x1

    goto/16 :goto_3

    .line 1057
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p6, v0

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 p5, v14

    const-string v14, "."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v12

    add-int/2addr v3, v12

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v12

    add-int/2addr v3, v12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v2

    const/4 v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getFlag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Locale;

    const-string v6, "en"

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {v2, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v11, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    .line 1066
    iget-object v4, v1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "true"

    .line 1067
    invoke-interface {v11, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1069
    :cond_2
    invoke-interface {v11, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    const/4 v4, 0x0

    aget-byte v2, v2, v4

    if-lt v0, v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    if-gt v0, v2, :cond_4

    const-string v2, "green"

    .line 1073
    invoke-interface {v11, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object/from16 v2, v17

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    .line 1074
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    if-lt v0, v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    aget-byte v2, v2, v3

    if-gt v0, v2, :cond_5

    const-string v2, "blue"

    .line 1075
    invoke-interface {v11, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1076
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    if-lt v0, v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    if-gt v0, v2, :cond_6

    const-string v2, "orange"

    .line 1077
    invoke-interface {v11, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1078
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    if-lt v0, v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    if-gt v0, v2, :cond_7

    const-string v2, "red"

    .line 1079
    invoke-interface {v11, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-object/from16 v2, p5

    .line 1081
    invoke-interface {v11, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1083
    :goto_3
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v0, 0x1

    move-object/from16 v8, p2

    move-object/from16 v6, p3

    move-object v0, v1

    move-object v3, v2

    move-object/from16 v1, v16

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v16, v1

    move-object v2, v3

    move-object v1, v0

    if-eqz p7, :cond_9

    .line 1087
    new-instance v0, Lpl/mkrstudio/truefootball3/adapters/InternationalTableAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lpl/mkrstudio/truefootball3/adapters/InternationalTableAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v3, v16

    .line 1088
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4

    :cond_9
    move-object/from16 v3, v16

    const/4 v4, 0x0

    .line 1090
    new-instance v0, Lpl/mkrstudio/truefootball3/adapters/TableAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5, v4, v2}, Lpl/mkrstudio/truefootball3/adapters/TableAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1091
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_4
    move-object/from16 v0, p1

    const/4 v2, -0x2

    const/4 v4, -0x1

    .line 1094
    invoke-virtual {v0, v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private initGroupSpinner(Lpl/mkrstudio/truefootball3/objects/Competition;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    .line 418
    invoke-virtual {p0, v0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getGroupAmountForCompetition(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competition;)I

    move-result v0

    .line 419
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0337

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v3, 0x41

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupLeftButton()Landroid/widget/Button;

    move-result-object v0

    .line 424
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupRightButton()Landroid/widget/Button;

    move-result-object v3

    .line 426
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0a00d5

    invoke-direct {v4, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 427
    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 428
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 429
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 432
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;

    invoke-direct {v2, p0, v3, v0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/widget/Button;Landroid/widget/Button;Lpl/mkrstudio/truefootball3/objects/Competition;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 457
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;

    invoke-direct {p1, p0, v0, v3}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$11;

    invoke-direct {p1, p0, v0, v3}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$11;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWeeksSpinner(Lpl/mkrstudio/truefootball3/objects/Competition;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    .line 490
    if-nez p1, :cond_ok

    return-void

    :cond_ok
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_fail

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_fail

    goto :cond_ready

    :cond_fail
    return-void

    :cond_ready

    .line 492
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 495
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Week;

    :goto_1
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Week;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getStringForWeek(Lpl/mkrstudio/truefootball3/objects/Week;Lpl/mkrstudio/truefootball3/objects/Week;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0a00d5

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 499
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 501
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_fail

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 502
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 504
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Lpl/mkrstudio/truefootball3/objects/Competition;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 539
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksLeftButton:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$13;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$13;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksRightButton:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCompetitionDetails(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 239
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    if-eqz v1, :fail

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :fail

    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedCompetition:I

    if-ltz v2, :fail

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :fail

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Competition;

    if-eqz v1, :fail

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v0

    if-eqz v0, :fail

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitionsHeader:Landroid/widget/TextView;

    if-eqz v2, :header_ok

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v3}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :header_ok
    invoke-static {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionHelper;->showsLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeHeader:Landroid/widget/TextView;

    const v2, 0x7f0c05f3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 244
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showTable(Landroid/view/View;)V

    .line 245
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showFixtures(Landroid/view/View;)V

    .line 246
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStats(Landroid/view/View;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeHeader:Landroid/widget/TextView;

    const v2, 0x7f0c0291

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cup_child

    const/4 v1, 0x1

    :cup_child
    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 250
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showFixtures(Landroid/view/View;)V

    .line 251
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStats(Landroid/view/View;)V

    .line 254
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft2:Landroid/widget/Button;

    if-eqz p1, :skip_l2

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$4;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :skip_l2
    .line 263
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight2:Landroid/widget/Button;

    if-eqz p1, :skip_r2

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$5;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :skip_r2
    .line 272
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft2:Landroid/widget/Button;

    if-eqz p1, :skip_dis

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableLeftButton(Landroid/widget/Button;)V

    :skip_dis
    .line 273
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight2:Landroid/widget/Button;

    if-eqz p1, :fail

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableRightButton(Landroid/widget/Button;)V

    :fail
    return-void
.end method

.method private showDisplayHeader()V
    .locals 5

    .line 205
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const v1, 0x7f0c05d6

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 206
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeHeader:Landroid/widget/TextView;

    const v1, 0x7f0c05f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 209
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0290

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 211
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 214
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_3

    .line 215
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0291

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 217
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private showFixtures(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedCompetition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    const v1, 0x7f08018a

    .line 405
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 406
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 408
    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->initWeeksSpinner(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    .line 409
    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->initGroupSpinner(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    .line 411
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showNextDisplayType()V
    .locals 1

    .line 185
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 186
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showDisplayHeader()V

    return-void
.end method

.method private showNextStatsType()V
    .locals 1

    .line 195
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 196
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStatsHeader()V

    return-void
.end method

.method private showPreviousDisplayType()V
    .locals 1

    .line 190
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 191
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showDisplayHeader()V

    return-void
.end method

.method private showPreviousStatsType()V
    .locals 1

    .line 200
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 201
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStatsHeader()V

    return-void
.end method

.method private showStats(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedCompetition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    const v1, 0x7f08028d

    .line 279
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {p0, v1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStatsList(Landroid/widget/ListView;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    const v1, 0x7f08028b

    .line 280
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {p0, v1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStatsList(Landroid/widget/ListView;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    const v1, 0x7f080292

    .line 281
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {p0, v1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStatsList(Landroid/widget/ListView;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    const v1, 0x7f080290

    .line 282
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {p0, v1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStatsList(Landroid/widget/ListView;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    const v1, 0x7f08028c

    .line 283
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->CLEAN_SHEET:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-direct {p0, v1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStatsList(Landroid/widget/ListView;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    const v1, 0x7f08028f

    .line 284
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showStatsList(Landroid/widget/ListView;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V

    .line 286
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft3:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$6;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight3:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$7;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft3:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 306
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeHeader:Landroid/widget/TextView;

    const v0, 0x7f0c0329

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showStatsHeader()V
    .locals 2

    .line 223
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0329

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0166

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 228
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeHeader:Landroid/widget/TextView;

    const v1, 0x7f0c04dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 230
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0664

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 232
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeHeader:Landroid/widget/TextView;

    const v1, 0x7f0c0532

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 233
    :cond_4
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 234
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeHeader:Landroid/widget/TextView;

    const v1, 0x7f0c01ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private showStatsList(Landroid/widget/ListView;Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "listView",
            "competition",
            "matchEventType"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 310
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 311
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    const v5, 0x7f0a00e4

    .line 312
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSelector(I)V

    const/16 v5, 0x19

    if-nez v3, :cond_0

    .line 317
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v6

    invoke-static {v2, v4, v6, v5}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getPlayerRatingsList(Lpl/mkrstudio/truefootball3/objects/Competition;BBI)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCurrentWeek()B

    move-result v6

    invoke-static {v2, v3, v4, v6, v5}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getPlayerStatsList(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/enums/MatchEventType;BBI)Ljava/util/List;

    move-result-object v2

    .line 322
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 323
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 324
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 325
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "false"

    const-string v9, "true"

    const-string v10, "-"

    const-string v11, "edited"

    const-string v12, "country"

    const-string v13, "name"

    const-string v14, "result"

    const-string v15, "player"

    const-string v4, "team"

    if-nez v3, :cond_5

    .line 328
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lpl/mkrstudio/truefootball3/objects/PlayerRating;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 330
    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getRating()F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v3, v16

    const-string v1, "%.2f"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    if-nez v1, :cond_1

    .line 336
    invoke-interface {v7, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 338
    :cond_1
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 341
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-eq v1, v3, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/PlayerRating;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v1, v3, :cond_3

    goto :goto_3

    .line 348
    :cond_3
    invoke-interface {v7, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 346
    :cond_4
    :goto_3
    invoke-interface {v7, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 351
    :cond_5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    .line 353
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getResult()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v7, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-nez v3, :cond_6

    .line 359
    invoke-interface {v7, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 361
    :cond_6
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v10

    invoke-virtual {v3, v10}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 362
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v10

    invoke-virtual {v3, v10}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 364
    :cond_7
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :goto_4
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    if-eq v3, v4, :cond_9

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v1, v3, :cond_8

    goto :goto_5

    .line 371
    :cond_8
    invoke-interface {v7, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 369
    :cond_9
    :goto_5
    invoke-interface {v7, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :goto_6
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 376
    :cond_a
    new-instance v1, Lpl/mkrstudio/truefootball3/adapters/PlayerStatsAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v5}, Lpl/mkrstudio/truefootball3/adapters/PlayerStatsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 380
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;

    move-object/from16 v4, p3

    invoke-direct {v1, v0, v4, v2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Lpl/mkrstudio/truefootball3/enums/MatchEventType;Ljava/util/List;)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    return-void
.end method

.method private showTable(Landroid/view/View;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1273
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    iget v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedCompetition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Competition;

    .line 1274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f08034b

    .line 1277
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1279
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USA_1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1280
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedGroup:I

    invoke-static {v0, v5, v2, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getAmericanLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BBI)Ljava/util/List;

    move-result-object v2

    const v3, 0x7f08034a

    .line 1281
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {p0, v3, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->initSpinner(Landroid/widget/Spinner;Landroid/view/View;)V

    const v3, 0x7f08034b

    .line 1282
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1283
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->SOUTH_AMERICAN:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v3, v6, :cond_1

    .line 1284
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1286
    :try_start_0
    iget-object v6, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_1_1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v7, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_1_2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_1_1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_1_2"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v8, v3

    int-to-byte v3, v8

    invoke-static {v6, v7, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 1288
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1290
    :cond_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->SCOTTISH:Lpl/mkrstudio/truefootball3/enums/OrderType;

    const-string v7, "FIN_1"

    if-ne v3, v6, :cond_d

    .line 1291
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SCO"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "SCO_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "SCO_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1292
    :cond_2
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "VIE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "VIE_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "VIE_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1293
    :cond_3
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "NIR_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1294
    :cond_4
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "NIR_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1295
    :cond_5
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1296
    :cond_6
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "FIN_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1297
    :cond_7
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "BEL_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1298
    :cond_8
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "AND"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "AND_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "AND_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1299
    :cond_9
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "WAL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "WAL_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "WAL_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1300
    :cond_a
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "UKR"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "UKR_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "UKR_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1301
    :cond_b
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "UZB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "UZB_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "UZB_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1302
    :cond_c
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "AUT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "AUT_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "AUT_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 1303
    :cond_d
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->KOREAN:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v3, v6, :cond_e

    .line 1304
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "KOR_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "KOR_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 1305
    :cond_e
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->SLOVAK:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v3, v6, :cond_f

    .line 1306
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "SVK_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "SVK_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 1307
    :cond_f
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->POLISH:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v3, v6, :cond_22

    .line 1308
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "POL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "POL_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "POL_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1309
    :cond_10
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SRB_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1310
    :cond_11
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SRB_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1311
    :cond_12
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "CZE_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1312
    :cond_13
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "BUL_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1313
    :cond_14
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ROM_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1314
    :cond_15
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "LTU_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1316
    :cond_16
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "BIH"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "BIH_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "BIH_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1317
    :cond_17
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "MLT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "MLT_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "MLT_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1318
    :cond_18
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "DEN_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1319
    :cond_19
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "DEN_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "DEN_2"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "DEN_2"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1320
    :cond_1a
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "DEN_3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "DEN_3"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "DEN_3"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1321
    :cond_1b
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SVN_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "SVN_2"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "SVN_2"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1322
    :cond_1c
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ARM"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ARM_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "ARM_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1323
    :cond_1d
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "FIN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1324
    :cond_1e
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "LTU_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "LTU_2"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "LTU_2"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1325
    :cond_1f
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ISL_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ISL_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "ISL_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1326
    :cond_20
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "KUW_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "KUW_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "KUW_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1327
    :cond_21
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "TJK_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "TJK_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "TJK_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 1328
    :cond_22
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->ROMANIAN:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v3, v6, :cond_23

    .line 1329
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ROM_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "ROM_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 1330
    :cond_23
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->ROMANIAN_2A:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v3, v6, :cond_24

    .line 1331
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ROM_2A"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "ROM_2A"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 1332
    :cond_24
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->ROMANIAN_2B:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v3, v6, :cond_25

    .line 1333
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "ROM_2B"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "ROM_2B"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 1334
    :cond_25
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->CYPRIOT:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v3, v6, :cond_2b

    .line 1335
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "CYP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "CYP_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "CYP_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1336
    :cond_26
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GIB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "GIB_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "GIB_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1337
    :cond_27
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "LIB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "LIB_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "LIB_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1338
    :cond_28
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GRE_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1339
    :cond_29
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "HKG_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1340
    :cond_2a
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "GRE_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 1341
    :cond_2b
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v3

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/OrderType;->ISRAELI:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v3, v6, :cond_2d

    .line 1342
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ISR_1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1343
    :cond_2c
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ISR_2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 1344
    :cond_2d
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/OrderType;->KAZAKH:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v2, v3, :cond_2e

    .line 1345
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "KAZ_1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "KAZ_1"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    int-to-byte v3, v3

    invoke-static {v0, v2, v5, v3}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getSumOfTables(Lpl/mkrstudio/truefootball3/objects/Competition;Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 1346
    :cond_2e
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getOrderType()Lpl/mkrstudio/truefootball3/enums/OrderType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/OrderType;->GREEK:Lpl/mkrstudio/truefootball3/enums/OrderType;

    if-ne v2, v3, :cond_2f

    .line 1347
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v2

    invoke-static {v2}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getGreekPlayoffTable(Lpl/mkrstudio/truefootball3/objects/Competitions;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 1349
    :cond_2f
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v0, v5, v2}, Lpl/mkrstudio/truefootball3/helpers/TableHelper;->getStandardLeagueTable(Lpl/mkrstudio/truefootball3/objects/Competition;BB)Ljava/util/List;

    move-result-object v2

    .line 1351
    :cond_30
    :goto_0
    new-instance v3, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    invoke-direct {v3}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;-><init>()V

    invoke-interface {v2, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1353
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->updateHighlightedPlaces(Lpl/mkrstudio/truefootball3/objects/Competition;)V

    const/4 v3, 0x0

    .line 1355
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_37

    .line 1356
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;

    .line 1357
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1358
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "player"

    const-string v10, "color"

    const-string v11, ""

    if-nez v8, :cond_31

    const-string v6, "place"

    .line 1359
    invoke-interface {v7, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "team"

    .line 1360
    invoke-interface {v7, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c03ca

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "matches"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c065d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "wins"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0244

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "draws"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c03ba

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "losses"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c032a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "goals"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0503

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "points"

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "none"

    .line 1367
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "false"

    .line 1368
    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1370
    :cond_31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "place"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v8

    const-string v12, "team"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v12

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "matches"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "wins"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "draws"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getLosses()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "losses"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsScored()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getGoalsLost()I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "goals"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getWins()I

    move-result v12

    mul-int/lit8 v12, v12, 0x3

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getDraws()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "points"

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/LeagueTableItem;->getTeamName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    const-string v6, "true"

    .line 1379
    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_32
    const-string v6, "false"

    .line 1381
    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    :goto_2
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v6

    aget-byte v6, v6, v5

    if-lt v3, v6, :cond_33

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v6

    const/4 v8, 0x1

    aget-byte v6, v6, v8

    if-gt v3, v6, :cond_33

    const-string v6, "green"

    .line 1384
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1385
    :cond_33
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v6

    const/4 v8, 0x2

    aget-byte v6, v6, v8

    if-lt v3, v6, :cond_34

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v6

    aget-byte v6, v6, v4

    if-gt v3, v6, :cond_34

    const-string v6, "blue"

    .line 1386
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1387
    :cond_34
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v6

    const/4 v8, 0x4

    aget-byte v6, v6, v8

    if-lt v3, v6, :cond_35

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v6

    const/4 v8, 0x5

    aget-byte v6, v6, v8

    if-gt v3, v6, :cond_35

    const-string v6, "orange"

    .line 1388
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1389
    :cond_35
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v6

    const/4 v8, 0x6

    aget-byte v6, v6, v8

    if-lt v3, v6, :cond_36

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v6

    const/4 v8, 0x7

    aget-byte v6, v6, v8

    if-gt v3, v6, :cond_36

    const-string v6, "red"

    .line 1390
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_36
    const-string v6, "none"

    .line 1392
    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    :goto_3
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_37
    const v0, 0x7f08034d

    .line 1397
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 1399
    new-instance v0, Lpl/mkrstudio/truefootball3/adapters/TableAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v5, v1}, Lpl/mkrstudio/truefootball3/adapters/TableAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1400
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method disableLeftButton(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1470
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1471
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton(Landroid/widget/Button;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1480
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1481
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton(Landroid/widget/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 1475
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 1476
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton(Landroid/widget/Button;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "button"
        }
    .end annotation

    .line 1485
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 1486
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method getDaysForWeek(Lpl/mkrstudio/truefootball3/objects/Week;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "week"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Week;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;>;"
        }
    .end annotation

    .line 1404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1405
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Match;

    const/4 v2, 0x0

    .line 1409
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1410
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1411
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 1412
    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    .line 1414
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1415
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1418
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 1419
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-nez v2, :cond_0

    .line 1423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1424
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1429
    :cond_5
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$18;

    invoke-direct {p1, p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$18;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method getDaysForWeekForGroup(Lpl/mkrstudio/truefootball3/objects/Week;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "week",
            "groupNr",
            "numberOfTeamsInGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Week;",
            "II)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Match;",
            ">;>;"
        }
    .end annotation

    .line 1441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1442
    div-int/lit8 p3, p3, 0x2

    mul-int p2, p2, p3

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_6

    .line 1443
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Match;

    const/4 v3, 0x0

    .line 1447
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1448
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 1450
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1452
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1453
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 1456
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/Match;

    .line 1457
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    .line 1461
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method getDivision(Lpl/mkrstudio/truefootball3/objects/Team;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation

    .line 1185
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1187
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getTeamGroups()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x4

    const/4 v0, 0x5

    .line 1188
    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "O"

    .line 1189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    .line 1190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v3
.end method

.method public getGroupAmountForCompetition(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competition;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userCountry",
            "c"
        }
    .end annotation

    .line 646
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 650
    :goto_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "11.0"

    const-string v3, "10.0"

    const-string v4, "9.0"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v1, v5, :cond_2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v1, v5, :cond_3

    :cond_2
    const/16 p1, 0xa

    return p1

    .line 653
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v5, "africa"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v1, v7, :cond_4

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v1, v7, :cond_7

    .line 654
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "3.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "4.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "5.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "6.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "7.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "8.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v6

    :cond_6
    :goto_1
    return v5

    .line 657
    :cond_7
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oceania"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v1, v3, :cond_8

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v1, v3, :cond_a

    .line 658
    :cond_8
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-gt p1, v6, :cond_9

    return v2

    :cond_9
    return v5

    .line 663
    :cond_a
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "europe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq p1, v3, :cond_b

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v3, :cond_c

    :cond_b
    return v1

    :cond_c
    if-eqz v0, :cond_14

    .line 667
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "TUR"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v3, :cond_d

    return v6

    .line 671
    :cond_d
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "COL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v3, :cond_e

    return v6

    .line 674
    :cond_e
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "IDN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v3, :cond_f

    return v6

    .line 677
    :cond_f
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "PER"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v3, :cond_10

    return v6

    .line 680
    :cond_10
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MAS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v3, :cond_11

    return v5

    .line 683
    :cond_11
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "IND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v3, :cond_12

    return v5

    .line 686
    :cond_12
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v3, "CRC"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, v3, :cond_13

    return v5

    .line 689
    :cond_13
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PHI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object p1

    sget-object p2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne p1, p2, :cond_14

    return v2

    :cond_14
    return v1
.end method

.method public getGroupPhaseEndWeekForCompetition(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competition;I)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCountry",
            "c",
            "weekNumber"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 798
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 799
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-eqz v2, :cond_1

    .line 802
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "COL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v4, v5, :cond_1

    return v3

    :cond_1
    if-eqz v2, :cond_2

    .line 804
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IDN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v4, v5, :cond_2

    return v3

    .line 806
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v4, v5, :cond_1e

    .line 807
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "africa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0xb

    const/16 v5, 0x9

    const-string v10, "7.0"

    const-string v11, "6.0"

    const-string v12, "5.0"

    const/4 v13, 0x7

    const-string v14, "8.0"

    const-string v15, "11.0"

    const-string v7, "10.0"

    const-string v8, "9.0"

    if-eqz v2, :cond_8

    .line 808
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-string v3, "4.0"

    const-string v6, "3.0"

    if-ne v2, v9, :cond_5

    .line 809
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    return v5

    :cond_4
    :goto_1
    return v13

    .line 811
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v2, v9, :cond_8

    .line 812
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    return v4

    :cond_7
    :goto_2
    return v5

    .line 816
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 817
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v2, v3, :cond_b

    .line 818
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    const/16 v1, 0x8

    return v1

    :cond_a
    :goto_3
    return v13

    .line 823
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v2, v3, :cond_c

    return v13

    .line 827
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "north_america"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x5

    return v2

    .line 830
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "oceania"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 831
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v2, 0x2

    return v2

    :cond_f
    :goto_4
    const/4 v2, 0x2

    if-ltz v1, :cond_10

    if-gt v1, v2, :cond_10

    return v2

    :cond_10
    const/4 v1, 0x5

    return v1

    .line 841
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "south_america"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 842
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_5

    :cond_12
    return v13

    .line 843
    :cond_13
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_CC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v4

    :cond_14
    return v13

    .line 850
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "europe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 851
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const/16 v3, 0xf

    if-ne v1, v2, :cond_18

    .line 852
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_16

    goto :goto_6

    :cond_16
    const/16 v1, 0xd

    return v1

    :cond_17
    :goto_6
    return v3

    .line 855
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v1, v2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EUR_EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 856
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_8

    .line 858
    :cond_19
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1a

    goto :goto_7

    :cond_1a
    const/16 v1, 0xd

    return v1

    :cond_1b
    :goto_7
    return v3

    :cond_1c
    :goto_8
    return v5

    .line 861
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v1, v2, :cond_26

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EUR_FC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v1, 0xd

    return v1

    :cond_1e
    if-eqz v2, :cond_26

    .line 866
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TUR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0x8

    return v1

    .line 869
    :cond_1f
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SWE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    return v1

    .line 872
    :cond_20
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PER"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/16 v1, 0xd

    return v1

    .line 875
    :cond_21
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MAS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x5

    return v1

    .line 878
    :cond_22
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x2

    return v1

    :cond_23
    const/4 v1, 0x2

    .line 881
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CRC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    return v1

    .line 884
    :cond_24
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CHI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x5

    return v1

    .line 887
    :cond_25
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x6

    return v1

    :cond_26
    const/4 v1, 0x6

    return v1
.end method

.method public getGroupPhaseStartWeekForCompetition(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competition;I)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCountry",
            "c",
            "weekNumber"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 698
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 699
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 702
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "COL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v4, v5, :cond_1

    return v3

    :cond_1
    if-eqz v2, :cond_2

    .line 704
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IDN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->LEAGUE_PLAYOFF:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v4, v5, :cond_2

    return v3

    .line 706
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v4

    sget-object v5, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-eq v4, v5, :cond_1e

    .line 708
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "africa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x6

    const/4 v5, 0x4

    const-string v7, "7.0"

    const-string v8, "6.0"

    const-string v9, "5.0"

    const-string v10, "8.0"

    const/4 v11, 0x2

    const-string v12, "11.0"

    const-string v13, "10.0"

    const-string v14, "9.0"

    if-eqz v2, :cond_8

    .line 709
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const-string v3, "4.0"

    const-string v6, "3.0"

    if-ne v2, v15, :cond_5

    .line 710
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    return v5

    :cond_4
    :goto_1
    return v11

    .line 712
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    sget-object v15, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v2, v15, :cond_8

    .line 713
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    return v4

    :cond_7
    :goto_2
    return v5

    .line 718
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 719
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v2, v3, :cond_b

    .line 720
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x3

    return v1

    :cond_a
    :goto_3
    return v11

    .line 725
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v2

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v2, v3, :cond_c

    return v11

    .line 729
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "north_america"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    return v2

    .line 732
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "oceania"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 733
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    return v2

    :cond_f
    :goto_4
    const/4 v2, 0x0

    if-ltz v1, :cond_10

    if-gt v1, v11, :cond_10

    return v2

    :cond_10
    const/4 v1, 0x3

    return v1

    .line 743
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "south_america"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 744
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_5

    :cond_12
    return v11

    .line 745
    :cond_13
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_CC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v4

    :cond_14
    return v11

    .line 752
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "europe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 753
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const/16 v3, 0xa

    const/16 v4, 0x8

    if-ne v1, v2, :cond_18

    .line 754
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_16

    goto :goto_6

    :cond_16
    return v4

    :cond_17
    :goto_6
    return v3

    .line 757
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v1, v2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EUR_EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 758
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_8

    .line 760
    :cond_19
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1a

    goto :goto_7

    :cond_1a
    return v4

    :cond_1b
    :goto_7
    return v3

    :cond_1c
    :goto_8
    return v5

    .line 763
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v1, v2, :cond_26

    invoke-virtual/range {p2 .. p2}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EUR_FC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    return v4

    :cond_1e
    if-eqz v2, :cond_26

    .line 768
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TUR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x3

    return v1

    .line 771
    :cond_1f
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SWE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    return v1

    :cond_20
    const/4 v1, 0x0

    .line 774
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    return v1

    .line 777
    :cond_21
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MAS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return v1

    .line 780
    :cond_22
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    return v1

    .line 783
    :cond_23
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CRC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    return v1

    .line 786
    :cond_24
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return v1

    .line 789
    :cond_25
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PHI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    return v1

    :cond_26
    const/4 v1, 0x1

    return v1
.end method

.method initSpinner(Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "spinner",
            "view"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1218
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0657

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1219
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0253

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 1221
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0a00d4

    invoke-direct {v1, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 1222
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1223
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1224
    iget v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedGroup:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1225
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1226
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getLeagueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1228
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showedGroup:I

    goto :goto_0

    .line 1230
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1235
    :goto_0
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15;

    invoke-direct {v0, p0, p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$15;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 1252
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft4:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$16;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$16;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/widget/Spinner;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight4:Landroid/widget/Button;

    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$17;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$17;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/widget/Spinner;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    if-nez v0, :keep_list

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    :keep_list
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v0, 0x7f080107

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitionsHeader:Landroid/widget/TextView;

    const v0, 0x7f08005f

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight:Landroid/widget/Button;

    const v0, 0x7f080152

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeHeader:Landroid/widget/TextView;

    const v0, 0x7f080061

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight2:Landroid/widget/Button;

    const v0, 0x7f080337

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeHeader:Landroid/widget/TextView;

    const v0, 0x7f080062

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft3:Landroid/widget/Button;

    const v0, 0x7f08006a

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight3:Landroid/widget/Button;

    const v0, 0x7f080063

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft4:Landroid/widget/Button;

    const v0, 0x7f08006b

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight4:Landroid/widget/Button;

    const v0, 0x7f080153

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f080338

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->statsTypeVF:Landroid/widget/ViewFlipper;

    .line 144
    new-instance v0, Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/views/FixturesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    .line 145
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getWeekSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    .line 146
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    .line 147
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupLL()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupLL:Landroid/widget/LinearLayout;

    .line 148
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getWeekLeftButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksLeftButton:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getWeekRightButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksRightButton:Landroid/widget/Button;

    .line 151
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->leagueTables:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->competitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 181
    :goto_0
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showCompetitionDetails(Landroid/view/View;)V

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

    const p3, 0x7f0a0067

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 107
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showWeek(ILpl/mkrstudio/truefootball3/views/FixturesView;Lpl/mkrstudio/truefootball3/objects/Competition;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "weekNumber",
            "fv",
            "c",
            "groupNr"
        }
    .end annotation

    .line 573
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getLlayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 576
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getFixtures()Lpl/mkrstudio/truefootball3/fixtures/Fixtures;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fixtures/Fixtures;->getWeeks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/Week;

    .line 578
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupSpinner()Landroid/widget/Spinner;

    move-result-object v2

    .line 579
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupLeftButton()Landroid/widget/Button;

    move-result-object v3

    .line 580
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupRightButton()Landroid/widget/Button;

    move-result-object v4

    const/16 v5, 0x8

    .line 581
    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 582
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 583
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 584
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupLL()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getNoMatches()Landroid/widget/TextView;

    move-result-object v6

    .line 588
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getMatches()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-lez v7, :cond_5

    .line 589
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CHAMPIONS_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    const/4 v9, 0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v6

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->CONTINENTAL_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 596
    :goto_1
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/CompetitionType;->DOMESTIC_CUP:Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    if-ne v6, v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 600
    :goto_2
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Week;->getTableType()Lpl/mkrstudio/truefootball3/enums/TableType;

    move-result-object v6

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/TableType;->GROUP_TABLE:Lpl/mkrstudio/truefootball3/enums/TableType;

    if-eq v6, v10, :cond_3

    .line 604
    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 605
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 606
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupLL()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 609
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getDaysForWeek(Lpl/mkrstudio/truefootball3/objects/Week;)Ljava/util/List;

    move-result-object p1

    .line 611
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 612
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->addDayTextView(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 613
    invoke-direct {p0, v1, p2, v7, v9}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->addDayListView(Landroid/widget/LinearLayout;Ljava/util/List;ZZ)V

    goto :goto_3

    .line 618
    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 619
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 620
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 621
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupLL()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 623
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    .line 625
    invoke-virtual {p0, p2, p3, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getGroupPhaseStartWeekForCompetition(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competition;I)I

    move-result v3

    .line 626
    invoke-virtual {p0, p2, p3, p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getGroupPhaseEndWeekForCompetition(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competition;I)I

    move-result v4

    .line 627
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lpl/mkrstudio/truefootball3/objects/World;->getNumberOfTeamsInGroupPhaseForCompetition(Lpl/mkrstudio/truefootball3/objects/Country;Lpl/mkrstudio/truefootball3/objects/Competition;)I

    move-result v5

    .line 629
    invoke-virtual {p0, v0, p4, v5}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->getDaysForWeekForGroup(Lpl/mkrstudio/truefootball3/objects/Week;II)Ljava/util/List;

    move-result-object p1

    .line 631
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 632
    invoke-direct {p0, v1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->addDayTextView(Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 633
    invoke-direct {p0, v1, p2, v7, v9}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->addDayListView(Landroid/widget/LinearLayout;Ljava/util/List;ZZ)V

    goto :goto_4

    :cond_4
    move-object v0, p0

    move-object v2, p3

    move v6, p4

    .line 635
    invoke-direct/range {v0 .. v7}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->addTableListView(Landroid/widget/LinearLayout;Lpl/mkrstudio/truefootball3/objects/Competition;IIIIZ)V

    goto :goto_5

    .line 638
    :cond_5
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0c040d

    .line 639
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_5
    return-void
.end method

.method updateHighlightedPlaces(Lpl/mkrstudio/truefootball3/objects/Competition;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 953
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-nez v1, :cond_13

    .line 954
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    .line 955
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object v3

    .line 957
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 958
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "east_asia"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "middle_east"

    const-string v8, "south_asia"

    const-string v9, "central_asia"

    const-string v10, "australia"

    const-string v11, "south_east_asia"

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 960
    :cond_0
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v12, "TUR"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 963
    invoke-virtual {v3, v5}, Lpl/mkrstudio/truefootball3/objects/Continent;->getRanking(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_2
    :goto_0
    const-string v5, "west_asia"

    .line 961
    invoke-virtual {v3, v5}, Lpl/mkrstudio/truefootball3/objects/Continent;->getRanking(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    .line 959
    :cond_3
    :goto_1
    invoke-virtual {v3, v6}, Lpl/mkrstudio/truefootball3/objects/Continent;->getRanking(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 970
    :goto_2
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v12

    const-string v13, "europe"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, -0x1

    const/4 v14, 0x1

    if-eqz v12, :cond_4

    .line 971
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getWorld()Lpl/mkrstudio/truefootball3/objects/World;

    move-result-object v3

    const-string v6, "LIE"

    invoke-virtual {v3, v6}, Lpl/mkrstudio/truefootball3/objects/World;->getCountryByCode(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    .line 972
    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 973
    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 975
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->EUROPEAN_CHAMPIONS_CUP_BERTHS:[I

    aget v13, v3, v1

    .line 976
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->EUROPEAN_CONTINENTAL_CUP_BERTHS:[I

    aget v1, v3, v1

    :goto_3
    sub-int/2addr v1, v14

    goto/16 :goto_a

    .line 977
    :cond_4
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v12

    const-string v15, "africa"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 978
    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 979
    sget-object v3, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->AFRICA_CHAMPIONS_CUP_BERTHS:[I

    aget v13, v3, v1

    .line 980
    sget-object v3, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->AFRICA_CONTINENTAL_CUP_BERTHS:[I

    aget v1, v3, v1

    goto :goto_3

    .line 981
    :cond_5
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v12

    const-string v15, "oceania"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 982
    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 983
    sget-object v3, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->OCEANIA_CHAMPIONS_CUP_BERTHS:[I

    aget v1, v3, v1

    move v13, v1

    :cond_6
    const/4 v1, -0x1

    goto/16 :goto_a

    .line 985
    :cond_7
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v12

    const-string v15, "asia"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 986
    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 987
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "11.0"

    const-string v12, "10.0"

    const-string v15, "9.0"

    if-nez v5, :cond_d

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_6

    .line 995
    :cond_8
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Country;->getZone()Lpl/mkrstudio/truefootball3/objects/Zone;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Zone;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, -0x1

    goto/16 :goto_9

    .line 996
    :cond_a
    :goto_4
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 1000
    :cond_b
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->WEST_ASIA_CHAMPIONS_CUP_BERTHS:[I

    aget v1, v1, v3

    .line 1001
    sget-object v5, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->WEST_ASIA_CONTINENTAL_CUP_BERTHS:[I

    aget v3, v5, v3

    goto :goto_8

    .line 997
    :cond_c
    :goto_5
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->WEST_ASIA_CHAMPIONS_CUP_BERTHS_2021:[I

    aget v1, v1, v3

    .line 998
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->WEST_ASIA_CONTINENTAL_CUP_BERTHS_2021:[I

    aget v3, v5, v3

    goto :goto_8

    .line 988
    :cond_d
    :goto_6
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7

    .line 992
    :cond_e
    sget-object v1, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->EAST_ASIA_CHAMPIONS_CUP_BERTHS:[I

    aget v1, v1, v3

    .line 993
    sget-object v5, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->EAST_ASIA_CONTINENTAL_CUP_BERTHS:[I

    aget v3, v5, v3

    goto :goto_8

    .line 989
    :cond_f
    :goto_7
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->EAST_ASIA_CHAMPIONS_CUP_BERTHS_2021:[I

    aget v1, v1, v3

    .line 990
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->EAST_ASIA_CONTINENTAL_CUP_BERTHS_2021:[I

    aget v3, v5, v3

    :goto_8
    sub-int/2addr v3, v14

    move v13, v1

    :goto_9
    move v1, v3

    goto :goto_a

    .line 1004
    :cond_10
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v6, "north_america"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1005
    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1006
    sget-object v3, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->NORTH_AMERICA_CHAMPIONS_CUP_BERTHS:[I

    aget v13, v3, v1

    .line 1007
    sget-object v3, Lpl/mkrstudio/truefootball3/objects/CompetitionQuery;->NORTH_AMERICA_CONTINENTAL_CUP_BERTHS:[I

    aget v1, v3, v1

    goto/16 :goto_3

    .line 1014
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v3

    if-lez v13, :cond_11

    const/4 v5, 0x1

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    :goto_b
    aput-byte v5, v3, v2

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    int-to-byte v3, v13

    aput-byte v3, v2, v14

    .line 1016
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v5

    if-lez v1, :cond_12

    aget-byte v5, v5, v14

    goto :goto_c

    :cond_12
    aget-byte v5, v5, v14

    add-int/2addr v5, v14

    int-to-byte v5, v5

    :goto_c
    aput-byte v5, v2, v3

    .line 1017
    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getHighlightedPlaces()[B

    move-result-object v3

    aget-byte v3, v3, v14

    add-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    :cond_13
    return-void
.end method
