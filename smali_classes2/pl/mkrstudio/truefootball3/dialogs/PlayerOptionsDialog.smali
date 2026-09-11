.class public Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;
.super Landroid/app/Dialog;
.source "PlayerOptionsDialog.java"


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/objects/Player;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "pid",
            "context",
            "squadAdapter",
            "position",
            "player",
            "owned"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    move-object/from16 v11, p5

    .line 32
    invoke-direct {v9, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v9, v1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a004e

    .line 34
    invoke-virtual {v9, v1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->setContentView(I)V

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 38
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f080262

    .line 41
    invoke-virtual {v9, v1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080242

    .line 42
    invoke-virtual {v9, v2}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 45
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v4

    invoke-virtual {v4, v11}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v4

    const/16 v5, 0x8

    if-nez p6, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    const v1, 0x7f0800de

    .line 59
    invoke-virtual {v9, v1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0801ec

    .line 60
    invoke-virtual {v9, v2}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v6, 0x7f08024e

    .line 61
    invoke-virtual {v9, v6}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f0802ed

    .line 62
    invoke-virtual {v9, v7}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v8, 0x7f0802c1

    .line 63
    invoke-virtual {v9, v8}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const v13, 0x7f08026c

    .line 64
    invoke-virtual {v9, v13}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    const v14, 0x7f0802cd

    .line 65
    invoke-virtual {v9, v14}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    const v15, 0x7f0802bd

    .line 66
    invoke-virtual {v9, v15}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    const v3, 0x7f080393

    .line 67
    invoke-virtual {v9, v3}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v5, 0x7f0803b5

    .line 68
    invoke-virtual {v9, v5}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object/from16 p6, v14

    const v14, 0x7f0802bf

    .line 69
    invoke-virtual {v9, v14}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v18, v13

    .line 71
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->canBeMovedToYouth(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Youth;)Z

    move-result v13

    if-nez v13, :cond_2

    const/16 v13, 0x8

    .line 72
    invoke-virtual {v14, v13}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 74
    invoke-virtual {v14, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    :goto_2
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getTransferList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x8

    .line 78
    invoke-virtual {v3, v13}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v13, 0x0

    .line 79
    invoke-virtual {v5, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 81
    invoke-virtual {v3, v13}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v13, 0x8

    .line 82
    invoke-virtual {v5, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :goto_3
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v13

    invoke-virtual {v13, v11}, Lpl/mkrstudio/truefootball3/objects/Transfers;->isOnLoan(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x8

    .line 86
    invoke-virtual {v15, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    invoke-virtual {v14, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_4
    const/16 v13, 0x8

    .line 90
    :goto_4
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v17

    if-nez v17, :cond_5

    .line 91
    invoke-virtual {v1, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    invoke-virtual {v2, v13}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v13, 0x0

    .line 93
    invoke-virtual {v6, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    .line 95
    invoke-virtual {v1, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    invoke-virtual {v2, v13}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v13, 0x8

    .line 97
    invoke-virtual {v6, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    :goto_5
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v13

    invoke-virtual {v13, v11}, Lpl/mkrstudio/truefootball3/objects/Transfers;->areOffers(Lpl/mkrstudio/truefootball3/objects/Player;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x8

    .line 101
    invoke-virtual {v1, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    invoke-virtual {v2, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    invoke-virtual {v6, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    :cond_6
    invoke-virtual {v12}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTransfers()Lpl/mkrstudio/truefootball3/objects/Transfers;

    move-result-object v13

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/Transfers;->getFuturePlayersIn()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;

    move-object/from16 v20, v13

    .line 107
    invoke-virtual/range {v19 .. v19}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v13

    if-ne v13, v11, :cond_7

    const/16 v13, 0x8

    .line 108
    invoke-virtual {v1, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    invoke-virtual {v2, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    invoke-virtual {v6, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    :cond_7
    const/16 v13, 0x8

    :goto_7
    move-object/from16 v13, v20

    goto :goto_6

    :cond_8
    const/16 v13, 0x8

    if-eqz v4, :cond_9

    .line 115
    invoke-virtual {v8, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    invoke-virtual {v15, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    invoke-virtual {v3, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    invoke-virtual {v5, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    invoke-virtual {v14, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    :cond_9
    new-instance v4, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$1;

    invoke-direct {v4, v9, v0, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$2;

    invoke-direct {v1, v9, v0, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$3;

    invoke-direct {v1, v9, v0, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;

    invoke-direct {v1, v9, v12, v0, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$5;

    invoke-direct {v1, v9, v0, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$5;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$6;

    invoke-direct {v1, v9, v0, v11, v10}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$6;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V

    move-object/from16 v13, v18

    invoke-virtual {v13, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;

    invoke-direct {v1, v9, v0, v11, v10}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$7;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "currencyModifier"

    .line 242
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v1, "currencyName"

    const-string v2, "EUR"

    .line 243
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    new-instance v13, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object v8, v3

    move v3, v4

    move-object v4, v6

    move-object v7, v5

    move-object v5, v12

    move-object/from16 v6, p3

    move-object v10, v7

    move/from16 v7, p4

    move-object/from16 p6, v14

    move-object v14, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$8;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/Player;FLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V

    invoke-virtual {v15, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$9;

    invoke-direct {v0, v9, v12, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$9;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$10;

    invoke-direct {v0, v9, v12, v11}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$10;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/objects/Player;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    new-instance v7, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;

    move-object v0, v7

    move-object v3, v12

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog$11;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;ILpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;)V

    move-object/from16 v14, p6

    invoke-virtual {v14, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/Youth;I)Lpl/mkrstudio/truefootball3/objects/YouthTeam;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->getYouthTeam(Lpl/mkrstudio/truefootball3/objects/Youth;I)Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object p0

    return-object p0
.end method

.method private canBeMovedToYouth(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Youth;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "player",
            "youth"
        }
    .end annotation

    .line 371
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-le v0, v2, :cond_0

    return v1

    .line 372
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result p1

    invoke-direct {p0, p2, p1}, Lpl/mkrstudio/truefootball3/dialogs/PlayerOptionsDialog;->getYouthTeam(Lpl/mkrstudio/truefootball3/objects/Youth;I)Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private getYouthTeam(Lpl/mkrstudio/truefootball3/objects/Youth;I)Lpl/mkrstudio/truefootball3/objects/YouthTeam;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "youth",
            "age"
        }
    .end annotation

    .line 353
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Youth;->getYouthTeams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    const/16 v1, 0x15

    if-eq p2, v1, :cond_1

    const/16 v2, 0x14

    if-ne p2, v2, :cond_2

    .line 354
    :cond_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getAgeLimit()B

    move-result v2

    if-ne v2, v1, :cond_2

    return-object v0

    :cond_2
    const/16 v1, 0x13

    if-eq p2, v1, :cond_3

    const/16 v2, 0x12

    if-ne p2, v2, :cond_4

    .line 357
    :cond_3
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getAgeLimit()B

    move-result v2

    if-ne v2, v1, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x11

    if-eq p2, v1, :cond_5

    const/16 v2, 0x10

    if-ne p2, v2, :cond_6

    .line 360
    :cond_5
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getAgeLimit()B

    move-result v2

    if-ne v2, v1, :cond_6

    return-object v0

    :cond_6
    const/16 v1, 0xf

    if-ne p2, v1, :cond_0

    .line 363
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getAgeLimit()B

    move-result v2

    if-ne v2, v1, :cond_0

    return-object v0

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
