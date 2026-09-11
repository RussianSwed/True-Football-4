.class public Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;
.super Landroid/app/Dialog;
.source "UpgradeTribuneDialog.java"


# instance fields
.field maxValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "context",
            "tribune",
            "maxValue"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a005d

    .line 31
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iput p3, p0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->maxValue:I

    const p1, 0x7f080248

    .line 36
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 38
    invoke-virtual {p1, p0, p3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initSeatsPicker(Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;I)V

    .line 39
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->getLongValue()J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {p0, p3}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->addNotes(I)V

    const p3, 0x7f080259

    .line 41
    invoke-virtual {p0, p3}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 42
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;

    invoke-direct {v0, p0, p1, p2}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/objects/Tribune;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800e0

    .line 50
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 51
    new-instance p2, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$2;

    invoke-direct {p2, p0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public addNotes(I)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seatsAmount"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 72
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v1

    invoke-virtual {v1, p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateUpgradeCost(I)J

    move-result-wide v1

    const v3, 0x7f080259

    .line 73
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 74
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->getAccountBalance(D)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v1, v4

    if-lez v8, :cond_0

    .line 75
    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tf3Settings"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "currencyModifier"

    .line 81
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v5, "currencyName"

    const-string v8, "EUR"

    .line 82
    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080244

    .line 84
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0c0429

    .line 85
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    const-string v8, "\n"

    .line 86
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c063e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    long-to-float v1, v1

    mul-float v4, v4, v1

    float-to-long v1, v4

    invoke-static {v1, v2, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c063f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateUpgradeTime(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    add-int/lit16 p1, p1, 0x3e8

    .line 89
    iget v0, p0, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->maxValue:I

    if-le p1, v0, :cond_1

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method startUpgrading(ILpl/mkrstudio/truefootball3/enums/TribuneType;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatsAmount",
            "type"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 62
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v2

    invoke-virtual {v2, p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateUpgradeTime(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 64
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v2

    new-instance v3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object v5

    invoke-virtual {v5, p1}, Lpl/mkrstudio/truefootball3/objects/Stadium;->calculateUpgradeCost(I)J

    move-result-wide v5

    neg-long v5, v5

    const-string v7, "upgradeTribune"

    invoke-direct {v3, v4, v5, v6, v7}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 65
    new-instance v2, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {v3, v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getDateString(Ljava/util/GregorianCalendar;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;-><init>(ILjava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getStadium()Lpl/mkrstudio/truefootball3/objects/Stadium;

    move-result-object p1

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Stadium;->getTribune(Lpl/mkrstudio/truefootball3/enums/TribuneType;)Lpl/mkrstudio/truefootball3/objects/Tribune;

    move-result-object p1

    invoke-virtual {p1, v2}, Lpl/mkrstudio/truefootball3/objects/Tribune;->setUpgrade(Lpl/mkrstudio/truefootball3/objects/TribuneUpgrade;)V

    return-void
.end method
