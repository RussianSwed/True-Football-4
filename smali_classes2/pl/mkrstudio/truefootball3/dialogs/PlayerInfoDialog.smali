.class public Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;
.super Landroid/app/Dialog;
.source "PlayerInfoDialog.java"


# instance fields
.field character:Landroid/widget/TextView;

.field leftButton:Landroid/widget/Button;

.field morale:Landroid/widget/TextView;

.field player:Lpl/mkrstudio/truefootball3/objects/Player;

.field playerInfoVF:Landroid/widget/ViewFlipper;

.field rightButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "squadAdapter",
            "position",
            "player"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    .line 49
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    .line 50
    invoke-virtual {v7, v9}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a004d

    .line 51
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->setContentView(I)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x0

    invoke-direct {v1, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "tf3Settings"

    move-object/from16 v11, p1

    .line 55
    invoke-virtual {v11, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "currencyModifier"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 56
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v2, "currencyName"

    const-string v3, "EUR"

    .line 57
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080222

    .line 59
    invoke-virtual {v7, v2}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pl.mkrstudio.truefootball3:drawable/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Locale;

    const-string v12, "en"

    invoke-direct {v6, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v13, 0x7f080221

    .line 61
    invoke-virtual {v7, v13}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080364

    .line 62
    invoke-virtual {v7, v3}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08016b

    .line 63
    invoke-virtual {v7, v4}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f08004a

    .line 64
    invoke-virtual {v7, v5}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0803c2

    .line 65
    invoke-virtual {v7, v6}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v14, 0x7f080318

    .line 66
    invoke-virtual {v7, v14}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0802a0

    .line 67
    invoke-virtual {v7, v15}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v9, 0x7f080301

    .line 68
    invoke-virtual {v7, v9}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v13, 0x7f0800f3

    .line 70
    invoke-virtual {v7, v13}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v12, 0x7f080309

    .line 71
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v10, 0x7f08010b

    .line 72
    invoke-virtual {v7, v10}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f080216

    .line 73
    invoke-virtual {v7, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->morale:Landroid/widget/TextView;

    const v11, 0x7f0800f1

    .line 74
    invoke-virtual {v7, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v7, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    .line 75
    iput-object v8, v7, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const v11, 0x7f080115

    .line 77
    invoke-virtual {v7, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v16, v10

    const v10, 0x7f080214

    .line 78
    invoke-virtual {v7, v10}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v17, v12

    const v12, 0x7f0801a0

    .line 80
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v18, v12

    const v12, 0x7f080350

    .line 81
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v19, v12

    const v12, 0x7f08033b

    .line 82
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v20, v12

    const v12, 0x7f0801a7

    .line 83
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v21, v12

    const v12, 0x7f08026a

    .line 84
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v22, v12

    const v12, 0x7f08012c

    .line 85
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v23, v12

    const v12, 0x7f080377

    .line 86
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v24, v12

    const v12, 0x7f08004e

    .line 87
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v25, v12

    const v12, 0x7f08030c

    .line 88
    invoke-virtual {v7, v12}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v26, v12

    .line 90
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    const-string v12, "-"

    move-object/from16 v27, v13

    const/16 v13, 0x8

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-direct {v7, v4, v2}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 100
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, v0}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-double v1, v1

    .line 112
    invoke-virtual {v8, v1, v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/enums/Position;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getShape()Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getDrawableForShape(Lpl/mkrstudio/truefootball3/enums/Shape;Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v12, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, v7, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->morale:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getMorale()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTemperament()B

    move-result v0

    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->showCharacter(B)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTackling()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getStrength()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v20

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getHeading()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCrossing()B

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v24

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getAgility()B

    move-result v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, v25

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, v26

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCharisma()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getConditionColor(B)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, v7, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->morale:Landroid/widget/TextView;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getMorale()B

    move-result v1

    invoke-static {v1}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getGoalkeeping()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTackling()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getStrength()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getHeading()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getPassing()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCrossing()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTechnique()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getAgility()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getShooting()B

    move-result v0

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v0, 0x7f080285

    .line 156
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Button;

    .line 158
    new-instance v12, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08027e

    .line 177
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 180
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 183
    :goto_2
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v2

    invoke-virtual {v2, v8}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v2

    invoke-virtual {v2, v8}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getLoanContract(Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 190
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    .line 192
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    const v0, 0x7f08028e

    .line 195
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 196
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v2, v8, v4}, Lpl/mkrstudio/truefootball3/objects/NationalTeamUi;->addPlayerNationalRows(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lpl/mkrstudio/truefootball3/objects/Player;Landroid/content/Context;)V

    .line 198
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getCurrentCompetitions()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/mkrstudio/truefootball3/objects/Competition;

    if-eqz v1, :cond_6

    .line 199
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getAllTeams()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    if-nez v1, :cond_d

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getAllTeams()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getTeams()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_7
    const v5, 0x7f0a009e

    const/4 v6, 0x0

    .line 200
    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v11, 0x7f080221

    .line 201
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f080204

    .line 202
    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0801a1

    .line 203
    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f080074

    .line 204
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v6, 0x7f0803cf

    .line 205
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v11, 0x7f0802b9

    .line 206
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 p2, v2

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object v17

    move-object/from16 p3, v3

    invoke-virtual/range {v17 .. v17}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v3, v7}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    goto :goto_5

    :cond_8
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    :goto_5
    invoke-virtual {v4, v8, v3}, Lpl/mkrstudio/truefootball3/objects/Competition;->getPlayerApps(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    goto :goto_6

    :cond_9
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    :goto_6
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->GOAL:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-virtual {v4, v8, v3, v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getStatsForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    goto :goto_7

    :cond_a
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    :goto_7
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->ASSIST:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-virtual {v4, v8, v3, v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getStatsForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    goto :goto_8

    :cond_b
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    :goto_8
    sget-object v7, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->YELLOW_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-virtual {v4, v8, v3, v7}, Lpl/mkrstudio/truefootball3/objects/Competition;->getStatsForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_c

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    goto :goto_9

    :cond_c
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    :goto_9
    sget-object v6, Lpl/mkrstudio/truefootball3/enums/MatchEventType;->RED_CARD:Lpl/mkrstudio/truefootball3/enums/MatchEventType;

    invoke-virtual {v4, v8, v3, v6}, Lpl/mkrstudio/truefootball3/objects/Competition;->getStatsForPlayer(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/enums/MatchEventType;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a

    :cond_d
    move-object/from16 p2, v2

    move-object/from16 p3, v3

    :goto_a
    move-object/from16 v7, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto/16 :goto_4

    :cond_e
    const v0, 0x7f0801c0

    move-object/from16 v1, p0

    .line 296
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0801bf

    .line 297
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080343

    .line 298
    invoke-virtual {v1, v3}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 300
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getCompetitions()Lpl/mkrstudio/truefootball3/objects/Competitions;

    move-result-object v4

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v5

    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFriendlies()Lpl/mkrstudio/truefootball3/objects/Friendlies;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/Competitions;->getNextMatch(Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Friendlies;)Lpl/mkrstudio/truefootball3/objects/Match;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 302
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 303
    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Match;->getCompetition()Lpl/mkrstudio/truefootball3/objects/Competition;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionType()Lpl/mkrstudio/truefootball3/enums/CompetitionType;

    move-result-object v12

    goto :goto_b

    :cond_f
    const/4 v12, 0x0

    .line 305
    :goto_b
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v8, v12}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_d

    :cond_10
    const/16 v4, 0x8

    .line 327
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 328
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_f

    :cond_12
    :goto_d
    const/4 v4, 0x0

    .line 306
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->isInjured()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 308
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c0366

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getInjury()Lpl/mkrstudio/truefootball3/objects/Injury;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Injury;->getDaysLeft()I

    move-result v7

    div-int/lit8 v7, v7, 0x7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_13
    const/16 v0, 0x8

    const/4 v6, 0x0

    .line 311
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :goto_e
    invoke-virtual {v8, v12}, Lpl/mkrstudio/truefootball3/objects/Player;->isSuspended(Lpl/mkrstudio/truefootball3/enums/CompetitionType;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 314
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0c05ef

    .line 315
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 316
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSuspension()Lpl/mkrstudio/truefootball3/objects/Suspension;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getType()Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->DOMESTIC_CUPS:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    const-string v4, ")"

    const-string v5, " ("

    if-ne v0, v2, :cond_14

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0237

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 318
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSuspension()Lpl/mkrstudio/truefootball3/objects/Suspension;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getType()Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->INTERNATIONAL:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    if-ne v0, v2, :cond_15

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c01dd

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 320
    :cond_15
    invoke-virtual/range {p4 .. p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getSuspension()Lpl/mkrstudio/truefootball3/objects/Suspension;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Suspension;->getType()Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    move-result-object v0

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/SuspensionType;->LEAGUE:Lpl/mkrstudio/truefootball3/enums/SuspensionType;

    if-ne v0, v2, :cond_11

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0397

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_16
    const/16 v0, 0x8

    .line 324
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 332
    :goto_f
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->showView(I)V

    const v0, 0x7f080281

    .line 334
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->playerInfoVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f08005f

    .line 335
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->leftButton:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 336
    invoke-virtual {v1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->rightButton:Landroid/widget/Button;

    .line 337
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->leftButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;

    invoke-direct {v2, v1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->rightButton:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$3;

    invoke-direct {v2, v1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->disableLeftButton()V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->enableRightButton()V

    return-void
.end method

.method private showEmblem(Landroid/widget/ImageView;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "team"
        }
    .end annotation

    .line 428
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "True Football 3"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 435
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getOriginalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 440
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 441
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 443
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 445
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getEmblemFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 446
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method disableLeftButton()V
    .locals 2

    .line 370
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton()V
    .locals 2

    .line 380
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton()V
    .locals 3

    .line 375
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->leftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton()V
    .locals 3

    .line 385
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public showCharacter(B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperament"
        }
    .end annotation

    const/16 v0, 0x14

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 405
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const v0, 0x7f0c02c1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 406
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const/16 v0, 0x5a

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 408
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const v0, 0x7f0c0198

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 409
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const/16 v0, 0x46

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-lt p1, v1, :cond_2

    if-ge p1, v0, :cond_2

    .line 411
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const v0, 0x7f0c016d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 412
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const/16 v0, 0x32

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    if-lt p1, v0, :cond_3

    if-ge p1, v1, :cond_3

    .line 414
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const v0, 0x7f0c015f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 415
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const/16 v0, 0x1e

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    if-lt p1, v1, :cond_4

    const/16 v0, 0x64

    if-gt p1, v0, :cond_4

    .line 417
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const v0, 0x7f0c052c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->character:Landroid/widget/TextView;

    const/16 v0, 0xa

    invoke-static {v0}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getColor(B)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method showView(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f08027f

    .line 390
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0c05d6

    .line 397
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0c04c9

    .line 393
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public updateMorale()V
    .locals 3

    .line 423
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->morale:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getMorale()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
