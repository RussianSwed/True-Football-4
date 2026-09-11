.class public Lpl/mkrstudio/truefootball3/views/ValuePicker;
.super Landroid/widget/LinearLayout;
.source "ValuePicker.java"


# instance fields
.field chosenContractEnd:I

.field dialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/dialogs/IPickerDialog;",
            ">;"
        }
    .end annotation
.end field

.field maxValue:I

.field numberInput:Z

.field possibleContractEnds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field step:I

.field value:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrSet"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->possibleContractEnds:Ljava/util/List;

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->chosenContractEnd:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->dialogs:Ljava/util/List;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->numberInput:Z

    .line 58
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lpl/mkrstudio/truefootball3/R$styleable;->ValuePicker:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 61
    :try_start_0
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "layout_inflater"

    .line 62
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a00e3

    goto :goto_0

    :cond_0
    const v1, 0x7f0a00e2

    :goto_0
    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0803c2

    .line 71
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 67
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    throw p1
.end method

.method static synthetic access$000(Lpl/mkrstudio/truefootball3/views/ValuePicker;JLpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p7}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->setEmployeesValue(JLpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    return-void
.end method

.method private setEmployeesValue(JLpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "stadiumEmployeeType",
            "et",
            "stadium",
            "fragment",
            "maxEmployees"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 498
    sget-object p4, Lpl/mkrstudio/truefootball3/views/ValuePicker$17;->$SwitchMap$pl$mkrstudio$truefootball3$enums$StadiumEmployeeType:[I

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;->ordinal()I

    move-result p3

    aget p3, p4, p3

    const/4 p4, 0x1

    if-eq p3, p4, :cond_4

    const/4 p4, 0x2

    if-eq p3, p4, :cond_3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_2

    const/4 p4, 0x4

    if-eq p3, p4, :cond_1

    const/4 p4, 0x5

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p3, p1

    .line 512
    invoke-virtual {p5, p3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->setToursEmployees(I)V

    goto :goto_0

    :cond_1
    long-to-int p3, p1

    .line 509
    invoke-virtual {p5, p3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->setShopEmployees(I)V

    goto :goto_0

    :cond_2
    long-to-int p3, p1

    .line 506
    invoke-virtual {p5, p3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->setSecurityEmployees(I)V

    goto :goto_0

    :cond_3
    long-to-int p3, p1

    .line 503
    invoke-virtual {p5, p3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->setMaintenanceEmployees(I)V

    goto :goto_0

    :cond_4
    long-to-int p3, p1

    .line 500
    invoke-virtual {p5, p3}, Lpl/mkrstudio/truefootball3/objects/Stadium;->setGastronomyEmployees(I)V

    .line 517
    :goto_0
    invoke-virtual {p6}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->showMonthlyCosts()V

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    int-to-long p3, p7

    cmp-long p5, p1, p3

    if-ltz p5, :cond_5

    .line 519
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disable()V

    goto :goto_1

    .line 521
    :cond_5
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->enable()V

    :goto_1
    return-void
.end method


# virtual methods
.method public addPickerDialog(Lpl/mkrstudio/truefootball3/dialogs/IPickerDialog;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pickerDialog"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->dialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method calculateStep()V
    .locals 5

    const/4 v0, 0x1

    .line 125
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    .line 126
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7a120

    .line 127
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto/16 :goto_0

    :cond_0
    const-wide/32 v2, 0xf4240

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const v0, 0x186a0

    .line 129
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto/16 :goto_0

    :cond_1
    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const v0, 0xc350

    .line 131
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x186a0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    const/16 v0, 0x2710

    .line 133
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0xc350

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    const/16 v0, 0x1388

    .line 135
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    const/16 v0, 0x3e8

    .line 137
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    const/16 v0, 0x1f4

    .line 139
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto :goto_0

    :cond_6
    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    const/16 v0, 0x64

    .line 141
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto :goto_0

    :cond_7
    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-lez v4, :cond_8

    const/16 v0, 0x32

    .line 143
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto :goto_0

    :cond_8
    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    const/16 v0, 0xa

    .line 145
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    goto :goto_0

    :cond_9
    const-wide/16 v2, 0x32

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    const/4 v0, 0x5

    .line 147
    iput v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->step:I

    :cond_a
    :goto_0
    return-void
.end method

.method public disable()V
    .locals 2

    const v0, 0x7f0802d1

    .line 539
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 540
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v1, 0x7f0702d6

    .line 541
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public disableLeftButton()V
    .locals 2

    const v0, 0x7f0801da

    .line 551
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 552
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v1, 0x7f070281

    .line 553
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public disableRightButton()V
    .locals 2

    const v0, 0x7f0802d1

    .line 563
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 564
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v1, 0x7f0702d6

    .line 565
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public enable()V
    .locals 2

    const v0, 0x7f0802d1

    .line 545
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x1

    .line 546
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v1, 0x7f0702d5

    .line 547
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public enableLeftButton()V
    .locals 2

    const v0, 0x7f0801da

    .line 557
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x1

    .line 558
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v1, 0x7f070280

    .line 559
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public enableRightButton()V
    .locals 2

    const v0, 0x7f0802d1

    .line 569
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v1, 0x1

    .line 570
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v1, 0x7f0702d5

    .line 571
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public getIntValue()I
    .locals 2

    .line 526
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    long-to-int v1, v0

    return v1
.end method

.method public getLongValue()J
    .locals 2

    .line 530
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    return-wide v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 575
    iget v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->maxValue:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0803c2

    .line 534
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 535
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initContractPicker(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;ZIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "player",
            "loan",
            "endDate",
            "renew"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getNextAndNotCurrentTransferWindowDateString()Ljava/lang/String;

    move-result-object p2

    if-eqz p5, :cond_0

    .line 82
    invoke-virtual {p1, p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object p2

    .line 84
    :cond_0
    invoke-static {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object p2

    const/4 p4, 0x1

    if-nez p3, :cond_1

    .line 87
    invoke-virtual {p2, p4, p4}, Ljava/util/GregorianCalendar;->add(II)V

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x5

    if-nez p5, :cond_2

    .line 89
    invoke-virtual {p2, v1, v0}, Ljava/util/GregorianCalendar;->add(II)V

    .line 90
    :cond_2
    iget-object p5, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->possibleContractEnds:Ljava/util/List;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p2, v1, p4}, Ljava/util/GregorianCalendar;->add(II)V

    const/4 p5, 0x6

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x6

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_4

    const/4 v3, 0x2

    .line 94
    invoke-virtual {p2, v3, p5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 95
    invoke-virtual {p2, v1, v0}, Ljava/util/GregorianCalendar;->add(II)V

    .line 96
    iget-object v3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->possibleContractEnds:Ljava/util/List;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p2, v1, p4}, Ljava/util/GregorianCalendar;->add(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const p1, 0x7f0803c2

    .line 100
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 101
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->possibleContractEnds:Ljava/util/List;

    iget p3, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->chosenContractEnd:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0801da

    .line 103
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 104
    new-instance p3, Lpl/mkrstudio/truefootball3/views/ValuePicker$1;

    invoke-direct {p3, p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker$1;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0802d1

    .line 113
    invoke-virtual {p0, p2}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 114
    new-instance p3, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;

    invoke-direct {p3, p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initEmployeesNumberPicker(ILpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "initValue",
            "stadium",
            "stadiumEmployeeType",
            "fragment",
            "maxEmployees"
        }
    .end annotation

    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->numberInput:Z

    const v1, 0x7f0803c2

    .line 419
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    int-to-long v2, p1

    .line 421
    iput-wide v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const p1, 0x7f0801da

    .line 423
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 424
    new-instance v9, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p3

    move-object v5, v1

    move-object v6, p2

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lpl/mkrstudio/truefootball3/views/ValuePicker$13;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;I)V

    invoke-virtual {p1, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0802d1

    .line 434
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 435
    new-instance v9, Lpl/mkrstudio/truefootball3/views/ValuePicker$14;

    move-object v2, v9

    move v4, p5

    move-object v5, p3

    move-object v6, v1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lpl/mkrstudio/truefootball3/views/ValuePicker$14;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;ILpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    invoke-virtual {p1, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 447
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 448
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    const/4 p1, 0x2

    .line 449
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 450
    new-instance p1, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;

    move-object v2, p1

    move-object v4, v1

    move v5, p5

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lpl/mkrstudio/truefootball3/views/ValuePicker$15;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;ILpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 470
    new-instance p1, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lpl/mkrstudio/truefootball3/views/ValuePicker$16;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;ILpl/mkrstudio/truefootball3/enums/StadiumEmployeeType;Lpl/mkrstudio/truefootball3/objects/Stadium;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 488
    iget-wide p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    int-to-long p3, p5

    cmp-long p5, p1, p3

    if-ltz p5, :cond_0

    .line 489
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disable()V

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->enable()V

    :goto_0
    return-void
.end method

.method public initFormationPicker(BLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "initValue",
            "formation",
            "position",
            "valuePickers",
            "newFormationDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lpl/mkrstudio/truefootball3/objects/Formation;",
            "Lpl/mkrstudio/truefootball3/enums/Position;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/views/ValuePicker;",
            ">;",
            "Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    const v1, 0x7f0803c2

    .line 359
    invoke-virtual {v7, v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/EditText;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    int-to-long v0, v0

    .line 361
    iput-wide v0, v7, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const/16 v11, 0xe

    new-array v12, v11, [Lpl/mkrstudio/truefootball3/enums/Position;

    .line 363
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->SW:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v14, 0x1

    aput-object v0, v12, v14

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v1, 0x2

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v1, 0x3

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LWB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v1, 0x4

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->DM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v1, 0x5

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RWB:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v1, 0x6

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/4 v1, 0x7

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v1, 0x8

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v1, 0x9

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->LW:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v1, 0xa

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->AM:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v1, 0xb

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->RW:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v1, 0xc

    aput-object v0, v12, v1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Position;->CF:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 v1, 0xd

    aput-object v0, v12, v1

    const v0, 0x7f0801da

    .line 367
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/ImageButton;

    .line 368
    new-instance v6, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move-object v4, v10

    move-object v5, v12

    move-object v13, v6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/views/ValuePicker$11;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;Lpl/mkrstudio/truefootball3/enums/Position;Landroid/widget/EditText;[Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;)V

    invoke-virtual {v15, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802d1

    .line 388
    invoke-virtual {v7, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageButton;

    .line 389
    new-instance v15, Lpl/mkrstudio/truefootball3/views/ValuePicker$12;

    move-object v0, v15

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/views/ValuePicker$12;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;Lpl/mkrstudio/truefootball3/enums/Position;Landroid/widget/EditText;[Lpl/mkrstudio/truefootball3/enums/Position;Ljava/util/List;)V

    invoke-virtual {v13, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_2

    .line 410
    aget-object v0, v12, v13

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isFormationPossible(Lpl/mkrstudio/truefootball3/enums/Position;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->enableLeftButton()V

    goto :goto_1

    .line 411
    :cond_0
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableLeftButton()V

    .line 412
    :goto_1
    aget-object v0, v12, v13

    invoke-virtual {v9, v0, v14}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isFormationPossible(Lpl/mkrstudio/truefootball3/enums/Position;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->enableRightButton()V

    goto :goto_2

    .line 413
    :cond_1
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->disableRightButton()V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public initIntensityPicker(BLpl/mkrstudio/truefootball3/objects/Training;BLjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "initValue",
            "training",
            "i",
            "valuePickers",
            "modifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lpl/mkrstudio/truefootball3/objects/Training;",
            "B",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/views/ValuePicker;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f0803c2

    .line 265
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-lez p5, :cond_0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    int-to-long v1, p1

    .line 271
    iput-wide v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const p1, 0x7f0801da

    .line 273
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 274
    new-instance v8, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move-object v4, v0

    move v5, p3

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/views/ValuePicker$9;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;ILandroid/widget/EditText;BLpl/mkrstudio/truefootball3/objects/Training;Ljava/util/List;)V

    invoke-virtual {p1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0802d1

    .line 314
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 315
    new-instance v8, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;

    move-object v1, v8

    move-object v3, p2

    move v4, p5

    move-object v5, v0

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lpl/mkrstudio/truefootball3/views/ValuePicker$10;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/objects/Training;ILandroid/widget/EditText;BLjava/util/List;)V

    invoke-virtual {p1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initSeatsPicker(Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "dialog",
            "maxValue"
        }
    .end annotation

    const v0, 0x7f0803c2

    .line 233
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "1000"

    .line 235
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v1, 0x3e8

    .line 236
    iput-wide v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 237
    iput p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->maxValue:I

    const v1, 0x7f0801da

    .line 239
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 240
    new-instance v2, Lpl/mkrstudio/truefootball3/views/ValuePicker$7;

    invoke-direct {v2, p0, v0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker$7;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0802d1

    .line 251
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 252
    new-instance v2, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;

    invoke-direct {v2, p0, p2, v0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker$8;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;ILandroid/widget/EditText;Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initTicketValuePicker(ILandroid/content/SharedPreferences;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "initValue",
            "sp",
            "fragment"
        }
    .end annotation

    const-string v0, "currencyModifier"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 200
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const-string v1, "currencyName"

    const-string v2, "EUR"

    .line 201
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0803c2

    .line 205
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    int-to-float v2, p1

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 206
    invoke-static {v2, p2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->formatSmallSum(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    int-to-long v2, p1

    .line 207
    iput-wide v2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    const p1, 0x7f0801da

    .line 209
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 210
    new-instance v8, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;

    move-object v2, v8

    move-object v3, p0

    move-object v4, v1

    move v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lpl/mkrstudio/truefootball3/views/ValuePicker$5;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;FLjava/lang/String;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    invoke-virtual {p1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0802d1

    .line 221
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 222
    new-instance v8, Lpl/mkrstudio/truefootball3/views/ValuePicker$6;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lpl/mkrstudio/truefootball3/views/ValuePicker$6;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;FLjava/lang/String;Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;)V

    invoke-virtual {p1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initValuePicker(JLandroid/content/SharedPreferences;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "initValue",
            "sp",
            "money"
        }
    .end annotation

    const-string v0, "currencyModifier"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 151
    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const-string v1, "currencyName"

    const-string v2, "EUR"

    .line 152
    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const v1, 0x7f0803c2

    .line 154
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz p4, :cond_0

    long-to-float v2, p1

    mul-float v2, v2, v0

    float-to-long v2, v2

    .line 156
    invoke-static {v2, v3, p3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_0
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->value:J

    .line 161
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->calculateStep()V

    const p1, 0x7f0801da

    .line 163
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 164
    new-instance p2, Lpl/mkrstudio/truefootball3/views/ValuePicker$3;

    move-object v2, p2

    move-object v3, p0

    move v4, p4

    move-object v5, v1

    move v6, v0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lpl/mkrstudio/truefootball3/views/ValuePicker$3;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;ZLandroid/widget/EditText;FLjava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0802d1

    .line 181
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 182
    new-instance p2, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lpl/mkrstudio/truefootball3/views/ValuePicker$4;-><init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;ZLandroid/widget/EditText;FLjava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxValue"
        }
    .end annotation

    .line 579
    iput p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->maxValue:I

    return-void
.end method
