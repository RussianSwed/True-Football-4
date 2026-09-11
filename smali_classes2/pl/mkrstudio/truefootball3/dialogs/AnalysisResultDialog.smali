.class public Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;
.super Landroid/app/Dialog;
.source "AnalysisResultDialog.java"


# instance fields
.field notRecommendedTacticsTV:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field openTacticsFragment:Z

.field recommendedTacticsTV:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field resultsTV:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

.field tacticsButton:Landroid/widget/Button;

.field teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "ud",
            "teamAnalysis"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0034

    .line 46
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->setContentView(I)V

    const p1, 0x7f080177

    .line 48
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-static {p2}, Lpl/mkrstudio/truefootball3/helpers/ResourceHelper;->getAssistantFaceResource(Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 51
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 53
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->initViews()V

    return-void
.end method


# virtual methods
.method initViews()V
    .locals 16

    move-object/from16 v0, p0

    const v1, 0x7f080057

    .line 57
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->resultsTV:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v1, 0x7f0802b8

    .line 58
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->recommendedTacticsTV:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    const v1, 0x7f080243

    .line 59
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->notRecommendedTacticsTV:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    .line 61
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->resultsTV:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0151

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 67
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 68
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    iget-object v8, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    .line 69
    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalyzedTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Team;->getTactics()Lpl/mkrstudio/truefootball3/objects/Tactics;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tactics;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ordinal()I

    move-result v8

    aget-object v8, v1, v8

    const/4 v11, 0x2

    aput-object v8, v7, v11

    .line 66
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->recommendedTacticsTV:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0294

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v11

    invoke-virtual {v11}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0c02bf

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ordinal()I

    move-result v14

    aget-object v14, v1, v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0c0518

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/enums/Pressing;->ordinal()I

    move-result v14

    aget-object v14, v2, v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0c0615

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v14

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->ordinal()I

    move-result v14

    aget-object v14, v4, v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0c0458

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v14}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->ordinal()I

    move-result v9

    aget-object v9, v3, v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v5, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->notRecommendedTacticsTV:Lpl/mkrstudio/truefootball3/views/CustomFontTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Formation;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/enums/Gameplay;->ordinal()I

    move-result v7

    aget-object v1, v1, v7

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v7, 0x7f0c0518

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/Pressing;->ordinal()I

    move-result v1

    aget-object v1, v2, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0615

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/TimeWasting;->ordinal()I

    move-result v1

    aget-object v1, v4, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->teamAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;->getAnalysisResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/OffsideTraps;->ordinal()I

    move-result v1

    aget-object v1, v3, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v5, v1}, Lpl/mkrstudio/truefootball3/views/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080353

    .line 85
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->tacticsButton:Landroid/widget/Button;

    .line 86
    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog$1;

    invoke-direct {v2, v0}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
