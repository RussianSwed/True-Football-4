.class public Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;
.super Landroidx/fragment/app/Fragment;
.source "StadiumFragment.java"


# instance fields
.field continentalCupsCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field continentalCupsCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field continentalCupsCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field currency:Ljava/lang/String;

.field domesticCupsCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field domesticCupsCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field domesticCupsCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field friendliesCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field friendliesCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field friendliesCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field gastronomyEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field gastronomyMonthlyCost:Landroid/widget/TextView;

.field leagueCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field leagueCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field leagueCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field leftButton:Landroid/widget/Button;

.field maintenanceEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field maintenanceMonthlyCost:Landroid/widget/TextView;

.field modifier:F

.field rightButton:Landroid/widget/Button;

.field securityEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field securityMonthlyCost:Landroid/widget/TextView;

.field shopEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field shopMonthlyCost:Landroid/widget/TextView;

.field stadiumVF:Landroid/widget/ViewFlipper;

.field tours:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field toursEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field toursMonthlyCost:Landroid/widget/TextView;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private calculateMaxNumberOfGastronomyEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stadium"
        }
    .end annotation

    .line 408
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result p1

    const/16 v0, 0x9c4

    if-ge p1, v0, :cond_0

    const/16 p1, 0x16

    return p1

    .line 412
    :cond_0
    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x14

    return p1
.end method

.method private calculateMaxNumberOfMaintenanceEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stadium"
        }
    .end annotation

    .line 387
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result p1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_0

    const/16 p1, 0x16

    return p1

    .line 391
    :cond_0
    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x14

    return p1
.end method

.method private calculateMaxNumberOfSecurityEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stadium"
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result p1

    .line 404
    div-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p1, p1, 0x14

    return p1
.end method

.method private calculateMaxNumberOfShopEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stadium"
        }
    .end annotation

    .line 416
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result p1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_0

    const/16 p1, 0x16

    return p1

    :cond_0
    const/16 v1, 0xa

    .line 420
    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x14

    return p1
.end method

.method private calculateMaxNumberOfToursEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stadium"
        }
    .end annotation

    .line 395
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result p1

    const/16 v0, 0x14

    const/16 v1, 0x3a98

    if-ge p1, v1, :cond_0

    return v0

    .line 399
    :cond_0
    div-int/lit16 p1, p1, 0x1388

    add-int/2addr p1, v0

    return p1
.end method

.method private initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "view",
            "button",
            "tribune",
            "maxCapacity"
        }
    .end annotation

    .line 302
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getUpgrade()Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x3e8

    if-le v0, p4, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;

    invoke-direct {v0, p0, p3, p4, p1}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;Lpl/mkrstudio/truefootball3/objects/Tribune;ILandroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 303
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const p1, 0x7f0703c9

    .line 304
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method disableLeftButton()V
    .locals 2

    .line 367
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton()V
    .locals 2

    .line 377
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton()V
    .locals 3

    .line 372
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton()V
    .locals 3

    .line 382
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080241

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08023f

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080240

    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0803c8

    .line 82
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080163

    .line 83
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080320

    .line 84
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f08031e

    .line 85
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f08031f

    .line 86
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v10

    sget-object v11, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v10, v11}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v8

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v8, v10}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v8}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803ba

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v2

    iget v2, v2, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_NORTH_CAPACITY:I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V

    const v0, 0x7f0803bb

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v2

    iget v2, v2, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_NORTH_WEST_CAPACITY:I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V

    const v0, 0x7f0803b9

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v2

    iget v2, v2, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_NORTH_EAST_CAPACITY:I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TribuneType;->NORTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V

    const v0, 0x7f0803bd

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v2

    iget v2, v2, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_SOUTH_CAPACITY:I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V

    const v0, 0x7f0803be

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v2

    iget v2, v2, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_SOUTH_WEST_CAPACITY:I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V

    const v0, 0x7f0803bc

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v2

    iget v2, v2, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_SOUTH_EAST_CAPACITY:I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TribuneType;->SOUTH_EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V

    const v0, 0x7f0803bf

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v2

    iget v2, v2, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_WEST_CAPACITY:I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TribuneType;->WEST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V

    const v0, 0x7f0803b8

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v2

    iget v2, v2, Lpl/mkrstudio/truefootball3/objects/Stadium;->MAX_EAST_CAPACITY:I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    sget-object v4, Lpl/mkrstudio/truefootball3/enums/TribuneType;->EAST:Lpl/mkrstudio/truefootball3/enums/TribuneType;

    invoke-virtual {v3, v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Tribune;->getCapacity()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V

    .line 106
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "currencyModifier"

    const/high16 v3, 0x3f800000    # 1.0f

    .line 107
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->modifier:F

    const-string v1, "currencyName"

    const-string v3, "EUR"

    .line 108
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->currency:Ljava/lang/String;

    const v1, 0x7f0801d3

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leagueCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 111
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getLeague()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f0801d4

    .line 113
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leagueCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 114
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getLeague()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f0801d5

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leagueCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 117
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getLeague()[I

    move-result-object v3

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f080158

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->domesticCupsCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 120
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getDomesticCups()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f080159

    .line 122
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->domesticCupsCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 123
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getDomesticCups()[I

    move-result-object v3

    aget v3, v3, v4

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f08015a

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->domesticCupsCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 126
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getDomesticCups()[I

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f080111

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->continentalCupsCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 129
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getContinentalCups()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f080112

    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->continentalCupsCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 132
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getContinentalCups()[I

    move-result-object v3

    aget v3, v3, v4

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f080113

    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->continentalCupsCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 135
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getContinentalCups()[I

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f080192

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->friendliesCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 138
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getFriendlies()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f080193

    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->friendliesCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 141
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getFriendlies()[I

    move-result-object v3

    aget v3, v3, v4

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f080194

    .line 143
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->friendliesCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 144
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->getFriendlies()[I

    move-result-object v3

    aget v3, v3, v5

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v1, 0x7f08039b

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->tours:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 147
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTourPrice()I

    move-result v3

    invoke-virtual {v1, v3, v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    const v0, 0x7f08030e

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->shopEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 150
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getShopEmployees()I

    move-result v4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->SHOP:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->calculateMaxNumberOfShopEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I

    move-result v8

    move-object v7, p0

    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initEmployeesNumberPicker(ILpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    const v0, 0x7f080302

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->securityEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 153
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getSecurityEmployees()I

    move-result v4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->SECURITY:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->calculateMaxNumberOfSecurityEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initEmployeesNumberPicker(ILpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    const v0, 0x7f0801fc

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->maintenanceEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 156
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getMaintenanceEmployees()I

    move-result v4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->MAINTENANCE:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->calculateMaxNumberOfMaintenanceEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initEmployeesNumberPicker(ILpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    const v0, 0x7f08019c

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->gastronomyEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 159
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getGastronomyEmployees()I

    move-result v4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->GASTRONOMY:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->calculateMaxNumberOfGastronomyEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initEmployeesNumberPicker(ILpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    const v0, 0x7f080399

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->toursEmployees:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 162
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getToursEmployees()I

    move-result v4

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v5

    sget-object v6, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->TOURS:Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->calculateMaxNumberOfToursEmployees(Lpl/mkrstudio/truefootball3/objects/Stadium;)I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initEmployeesNumberPicker(ILpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    const v0, 0x7f0800e4

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getCapacity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08039a

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->toursMonthlyCost:Landroid/widget/TextView;

    const v0, 0x7f0801fd

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->maintenanceMonthlyCost:Landroid/widget/TextView;

    const v0, 0x7f08019d

    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->gastronomyMonthlyCost:Landroid/widget/TextView;

    const v0, 0x7f08030f

    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->shopMonthlyCost:Landroid/widget/TextView;

    const v0, 0x7f080303

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->securityMonthlyCost:Landroid/widget/TextView;

    .line 248
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->showMonthlyCosts()V

    .line 250
    invoke-virtual {p0, p1, v2}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->showHeader(Landroid/view/View;I)V

    const v0, 0x7f080332

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->stadiumVF:Landroid/widget/ViewFlipper;

    const v0, 0x7f08005f

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leftButton:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 254
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->rightButton:Landroid/widget/Button;

    .line 255
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leftButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->rightButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->disableLeftButton()V

    .line 290
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->enableRightButton()V

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

    const p3, 0x7f0a007f

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 72
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showHeader(Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "whichView"
        }
    .end annotation

    const v0, 0x7f080331

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801aa

    .line 333
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/16 v1, 0x8

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0614

    .line 359
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 360
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0c0266

    .line 341
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, 0x0

    .line 342
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 343
    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$4;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0c05cb

    .line 336
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 337
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showMonthlyCosts()V
    .locals 6

    .line 294
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->toursMonthlyCost:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->modifier:F

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getToursEmployees()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getToursEmployeeSalary()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v3, v3

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->currency:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->maintenanceMonthlyCost:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->modifier:F

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getMaintenanceEmployees()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getMaintenanceEmployeeSalary()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v3, v3

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->currency:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->gastronomyMonthlyCost:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->modifier:F

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getGastronomyEmployees()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getGastronomyEmployeeSalary()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v3, v3

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->currency:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->shopMonthlyCost:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->modifier:F

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getShopEmployees()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getShopEmployeeSalary()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-long v3, v3

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->currency:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->securityMonthlyCost:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->modifier:F

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getSecurityEmployees()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getSecurityEmployeeSalary()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-long v2, v2

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->currency:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTicketPrices()V
    .locals 7

    .line 324
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leagueCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leagueCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v3

    const/4 v5, 0x1

    aput v3, v2, v5

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->leagueCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v3

    const/4 v6, 0x2

    aput v3, v2, v6

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->setLeague([I)V

    .line 325
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v0

    new-array v2, v1, [I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->domesticCupsCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v3

    aput v3, v2, v4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->domesticCupsCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->domesticCupsCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->setDomesticCups([I)V

    .line 326
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v0

    new-array v2, v1, [I

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->continentalCupsCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v3

    aput v3, v2, v4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->continentalCupsCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->continentalCupsCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v3

    aput v3, v2, v6

    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->setContinentalCups([I)V

    .line 327
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTicketPrices()Lpl/mkrstudio/truefootball3/objects/TicketPrices;

    move-result-object v0

    new-array v1, v1, [I

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->friendliesCat1:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->friendliesCat2:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v2

    aput v2, v1, v5

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->friendliesCat3:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v2

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/TicketPrices;->setFriendlies([I)V

    .line 328
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->tours:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->setTourPrice(I)V

    return-void
.end method
