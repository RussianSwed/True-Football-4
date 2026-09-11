.class public Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;
.super Landroid/app/Dialog;
.source "PenalizePlayerDialog.java"


# instance fields
.field arrowLeft1:Landroid/widget/Button;

.field arrowLeft2:Landroid/widget/Button;

.field arrowRight1:Landroid/widget/Button;

.field arrowRight2:Landroid/widget/Button;

.field confirm:Landroid/widget/Button;

.field label:Landroid/widget/TextView;

.field penaltyReason:Landroid/widget/Spinner;

.field penaltyType:Landroid/widget/Spinner;

.field player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

.field reaction:Landroid/widget/TextView;

.field reactionsLL:Landroid/widget/LinearLayout;

.field spinnersLL:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/PlayerExtended;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "player"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a004c

    .line 52
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 54
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    .line 57
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->react(Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V

    return-void
.end method

.method private getMoraleDiffString(I)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moraleDiff"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    if-ltz p1, :cond_0

    .line 522
    :goto_0
    div-int/lit8 v3, p1, 0xa

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_1

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    neg-int v3, p1

    .line 526
    div-int/lit8 v3, v3, 0xa

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_1

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private getNewValue(IB)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "diff",
            "oldValue"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x3

    const/4 p2, 0x6

    .line 572
    invoke-virtual {v0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    const/16 p1, 0x64

    :cond_0
    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    int-to-byte p1, p1

    return p1
.end method

.method private getTemperamentString(I)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "temperamentDiff"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, ""

    if-ltz p1, :cond_0

    .line 508
    :goto_0
    div-int/lit8 v3, p1, 0xa

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_1

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    neg-int v3, p1

    .line 512
    div-int/lit8 v3, v3, 0xa

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_1

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private react(Lpl/mkrstudio/truefootball3/enums/PlayerReaction;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerReaction",
            "moraleDiff",
            "temperamentDiff"
        }
    .end annotation

    .line 426
    invoke-virtual {p0, p2, p3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->initReaction(II)V

    .line 427
    sget-object v0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$7;->$SwitchMap$pl$mkrstudio$truefootball3$enums$PlayerReaction:[I

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/PlayerReaction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 453
    :pswitch_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f0c0647

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 450
    :pswitch_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f0c0641

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 447
    :pswitch_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f0c041c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 444
    :pswitch_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f0c03e2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 441
    :pswitch_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f0c0341

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 438
    :pswitch_5
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f0c0227

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 435
    :pswitch_6
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f0c01dc

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 432
    :pswitch_7
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f0c0160

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 429
    :pswitch_8
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f0c0155

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 458
    :goto_0
    invoke-virtual {p0, p2, p3}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->fillReactionLabels(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected checkRating(FF)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentRating",
            "chosenTeamSkill"
        }
    .end annotation

    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_0

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 400
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v2

    :goto_0
    double-to-float p1, p1

    return p1

    :cond_0
    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v0, v4

    if-lez v8, :cond_1

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 404
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v6

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x4016000000000000L    # 5.5

    cmpl-double v8, v0, v4

    if-lez v8, :cond_2

    sub-float/2addr p1, p2

    return p1

    :cond_2
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v8, v0, v4

    if-lez v8, :cond_3

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 412
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v6

    goto :goto_0

    :cond_3
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    cmpl-double v6, v0, v4

    if-lez v6, :cond_4

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 416
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v2

    goto :goto_0

    :cond_4
    cmpl-double v4, v0, v2

    if-lez v4, :cond_5

    sub-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 420
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    sub-double/2addr p1, v0

    goto :goto_0

    :cond_5
    sub-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 422
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1
.end method

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

    .line 581
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 582
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

    .line 591
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 592
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

    .line 586
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 587
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

    .line 596
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 597
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method fillReactionLabels(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moraleDiff",
            "temperamentDiff"
        }
    .end annotation

    const v0, 0x7f080217

    .line 485
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080379

    .line 486
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c03df

    .line 487
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0c01b5

    .line 488
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 489
    invoke-direct {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getMoraleDiffString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 490
    invoke-direct {p0, p2}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getTemperamentString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/high16 v3, -0x10000

    const v4, -0xff0100

    const/16 v5, 0x8

    if-nez p1, :cond_0

    .line 492
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    const/high16 p1, -0x10000

    goto :goto_0

    :cond_1
    const p1, -0xff0100

    .line 494
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-nez p2, :cond_2

    .line 498
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_2
    if-lez p2, :cond_3

    goto :goto_2

    :cond_3
    const v3, -0xff0100

    .line 500
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 501
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method init()V
    .locals 12

    const v0, 0x7f080324

    .line 61
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->spinnersLL:Landroid/widget/LinearLayout;

    const v0, 0x7f0802b4

    .line 62
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reactionsLL:Landroid/widget/LinearLayout;

    .line 64
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->spinnersLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reactionsLL:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080288

    .line 67
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reaction:Landroid/widget/TextView;

    const v0, 0x7f080289

    .line 68
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->label:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080060

    .line 72
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowLeft1:Landroid/widget/Button;

    const v0, 0x7f080061

    .line 73
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowLeft2:Landroid/widget/Button;

    const v0, 0x7f080068

    .line 74
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowRight1:Landroid/widget/Button;

    const v0, 0x7f080069

    .line 75
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowRight2:Landroid/widget/Button;

    const v0, 0x7f080270

    .line 76
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    const v0, 0x7f08026f

    .line 77
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    .line 79
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 81
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "tf3Settings"

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "currencyModifier"

    const/high16 v5, 0x3f800000    # 1.0f

    .line 82
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v6, "currencyName"

    const-string v7, "EUR"

    .line 83
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c051b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0522

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v7, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v7

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getDaysToNextPenalty()B

    move-result v7

    if-nez v7, :cond_0

    .line 89
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0289

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v9, v3, [Ljava/lang/Object;

    mul-float v5, v5, v4

    float-to-long v10, v5

    invoke-static {v10, v11, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v1

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v4, v4, v7

    float-to-long v7, v4

    invoke-static {v7, v8, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00d4

    invoke-direct {v1, v2, v3, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 95
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyType:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c063d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c0504

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 102
    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 103
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 105
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowLeft1:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$1;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowRight1:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$2;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowLeft2:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$3;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowRight2:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->disableLeftButton(Landroid/widget/Button;)V

    .line 170
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->enableRightButton(Landroid/widget/Button;)V

    .line 172
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->disableLeftButton(Landroid/widget/Button;)V

    .line 173
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->enableRightButton(Landroid/widget/Button;)V

    const v1, 0x7f08010c

    .line 175
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->confirm:Landroid/widget/Button;

    .line 176
    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$5;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method initReaction(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moraleDiff",
            "temperamentDiff"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getMorale()B

    move-result v1

    invoke-direct {p0, p1, v1}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getNewValue(IB)B

    move-result p1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setMorale(B)V

    .line 463
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getTemperament()B

    move-result v0

    invoke-direct {p0, p2, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->getNewValue(IB)B

    move-result p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setTemperament(B)V

    .line 465
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->spinnersLL:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 466
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->reactionsLL:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->confirm:Landroid/widget/Button;

    const p2, 0x7f0c045a

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 469
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->confirm:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$6;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$6;-><init>(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected payPenalty(ILpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "howMuch",
            "finances",
            "time"
        }
    .end annotation

    .line 480
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p3

    int-to-long v1, p1

    const-string p1, "playerPunishments"

    invoke-direct {v0, p3, v1, v2, p1}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p2, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 481
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->player:Lpl/mkrstudio/truefootball3/objects/PlayerExtended;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setDaysToNextPenalty(B)V

    return-void
.end method
