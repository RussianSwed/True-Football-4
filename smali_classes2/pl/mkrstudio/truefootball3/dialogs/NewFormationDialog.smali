.class public Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;
.super Landroid/app/Dialog;
.source "NewFormationDialog.java"


# instance fields
.field amPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field cbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field cfPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field cmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field dmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field formationName:Ljava/lang/String;

.field initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

.field isCreated:Z

.field lbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field lmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field lwPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field lwbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field ok:Landroid/widget/Button;

.field rbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

.field rmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field rwPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field rwbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field swPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Formation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "formation"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string p1, "CUSTOM"

    .line 59
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->formationName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isCreated:Z

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0047

    .line 68
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    const/16 p2, 0xb

    new-array p2, p2, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 74
    :goto_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    aget-object v0, v0, p1

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/Formation;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->formationName:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lpl/mkrstudio/truefootball3/objects/Formation;-><init>(Ljava/lang/String;[Lpl/mkrstudio/truefootball3/enums/Position;)V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 78
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 17

    move-object/from16 v6, p0

    const v0, 0x7f08018f

    .line 82
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->formationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080345

    .line 84
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "SW"

    invoke-static {v2}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0801cc

    .line 85
    invoke-virtual {v6, v1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "LB"

    invoke-static {v3}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0800e8

    .line 86
    invoke-virtual {v6, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "CB"

    invoke-static {v4}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0802b3

    .line 87
    invoke-virtual {v6, v3}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "RB"

    invoke-static {v5}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f0801f4

    .line 88
    invoke-virtual {v6, v4}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v7, "LWB"

    invoke-static {v7}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f080157

    .line 89
    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "DM"

    invoke-static {v8}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v7, 0x7f0802e2

    .line 90
    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, "RWB"

    invoke-static {v9}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f0801e9

    .line 91
    invoke-virtual {v6, v8}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v10, "LM"

    invoke-static {v10}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x7f0800fe

    .line 92
    invoke-virtual {v6, v9}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v11, "CM"

    invoke-static {v11}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const v10, 0x7f0802d9

    .line 93
    invoke-virtual {v6, v10}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const-string v12, "RM"

    invoke-static {v12}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v11, 0x7f0801f2

    .line 94
    invoke-virtual {v6, v11}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v13, "LW"

    invoke-static {v13}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const v12, 0x7f080055

    .line 95
    invoke-virtual {v6, v12}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const-string v14, "AM"

    invoke-static {v14}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const v13, 0x7f0802e0

    .line 96
    invoke-virtual {v6, v13}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const-string v15, "RW"

    invoke-static {v15}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const v14, 0x7f0800ee

    .line 97
    invoke-virtual {v6, v14}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const-string v16, "CF"

    invoke-static/range {v16 .. v16}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getPositionColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v15, 0x1

    invoke-virtual {v14, v0, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 100
    invoke-virtual {v6, v1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 101
    invoke-virtual {v6, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 102
    invoke-virtual {v6, v3}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 103
    invoke-virtual {v6, v4}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 104
    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 105
    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 106
    invoke-virtual {v6, v8}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 107
    invoke-virtual {v6, v9}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 108
    invoke-virtual {v6, v10}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 109
    invoke-virtual {v6, v11}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 110
    invoke-virtual {v6, v12}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 111
    invoke-virtual {v6, v13}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v6, v13}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v0, 0x7f0800ee

    .line 112
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v0, 0x7f080344

    .line 114
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->swPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0801cb

    .line 115
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0800e7

    .line 116
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->cbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0802b2

    .line 117
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0801f3

    .line 118
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lwbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0802e1

    .line 119
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rwbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f080156

    .line 120
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->dmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0800fd

    .line 121
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->cmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0801e8

    .line 122
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0802d8

    .line 123
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f080054

    .line 124
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->amPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0801f1

    .line 125
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lwPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0802df

    .line 126
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rwPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v0, 0x7f0800ed

    .line 127
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->cfPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->swPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->cbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lwbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->dmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rwbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->cmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lwPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->amPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rwPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->cfPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->swPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    move-object v4, v7

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 148
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 149
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->cbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 150
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 151
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lwbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 152
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rwbPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 153
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->dmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 154
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->cmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 155
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 156
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rmPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 157
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->amPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 158
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->lwPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 159
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->rwPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    .line 160
    iget-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->cfPicker:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->initialFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B

    move-result v1

    iget-object v2, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    sget-object v3, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    const v0, 0x7f080259

    .line 162
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v6, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->ok:Landroid/widget/Button;

    .line 163
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;

    invoke-direct {v1, v6}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e0

    .line 209
    invoke-virtual {v6, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 210
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$2;

    invoke-direct {v1, v6}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getNumberOfPositionsInFormation(Lpl/mkrstudio/truefootball3/enums/Position;Lpl/mkrstudio/truefootball3/objects/Formation;)B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "formation"
        }
    .end annotation

    .line 221
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    if-ne v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isCreated()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isCreated:Z

    return v0
.end method

.method public isFormationPossible(Lpl/mkrstudio/truefootball3/enums/Position;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "change"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 229
    :goto_0
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 230
    iget-object v6, v0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 232
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 233
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    return v4

    :cond_2
    if-ne v2, v6, :cond_3

    .line 234
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_4

    return v4

    .line 253
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lpl/mkrstudio/truefootball3/enums/Position;

    move-object/from16 p1, v1

    .line 254
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 255
    :cond_5
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 256
    :cond_6
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_7

    add-int/lit8 v9, v9, 0x1

    .line 257
    :cond_7
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_8

    add-int/lit8 v7, v7, 0x1

    .line 258
    :cond_8
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_9

    add-int/lit8 v3, v3, 0x1

    .line 259
    :cond_9
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_a

    add-int/lit8 v8, v8, 0x1

    .line 260
    :cond_a
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_b

    add-int/lit8 v14, v14, 0x1

    .line 261
    :cond_b
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_c

    add-int/lit8 v15, v15, 0x1

    .line 262
    :cond_c
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_d

    add-int/lit8 v10, v10, 0x1

    .line 263
    :cond_d
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_e

    add-int/lit8 v11, v11, 0x1

    .line 264
    :cond_e
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_f

    add-int/lit8 v4, v4, 0x1

    .line 265
    :cond_f
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_10

    add-int/lit8 v12, v12, 0x1

    .line 266
    :cond_10
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_11

    add-int/lit8 v13, v13, 0x1

    .line 267
    :cond_11
    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    if-ne v0, v1, :cond_12

    add-int/lit8 v5, v5, 0x1

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1

    :cond_13
    const/4 v0, 0x1

    if-gt v2, v0, :cond_1d

    if-gt v3, v0, :cond_1d

    if-gt v7, v0, :cond_1d

    if-gt v8, v0, :cond_1d

    if-gt v10, v0, :cond_1d

    if-gt v11, v0, :cond_1d

    if-gt v12, v0, :cond_1d

    if-le v13, v0, :cond_14

    goto :goto_2

    :cond_14
    const/4 v0, 0x2

    if-le v6, v0, :cond_15

    const/4 v0, 0x0

    return v0

    :cond_15
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-le v9, v1, :cond_16

    return v0

    :cond_16
    if-le v14, v1, :cond_17

    return v0

    :cond_17
    if-le v15, v1, :cond_18

    return v0

    :cond_18
    if-le v4, v1, :cond_19

    return v0

    :cond_19
    const/4 v1, 0x4

    if-le v5, v1, :cond_1a

    return v0

    :cond_1a
    const/4 v1, 0x1

    if-ge v9, v1, :cond_1b

    return v0

    :cond_1b
    if-ge v5, v1, :cond_1c

    return v0

    :cond_1c
    return v1

    :cond_1d
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public modifyFormation(Lpl/mkrstudio/truefootball3/enums/Position;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "change"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 284
    :goto_0
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 285
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 287
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 288
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    :cond_2
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$3;

    invoke-direct {p1, p0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 303
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 p2, 0x0

    .line 304
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_3

    .line 305
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/enums/Position;

    aput-object v3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 308
    :cond_3
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Formation;->setPositions([Lpl/mkrstudio/truefootball3/enums/Position;)V

    .line 310
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->resultFormation:Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Formation;->getPositions()[Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p1

    array-length p1, p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->ok:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 311
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->ok:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method public setCreated(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "created"
        }
    .end annotation

    .line 319
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isCreated:Z

    return-void
.end method
