.class public Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;
.super Landroid/app/Dialog;
.source "EmployeeInfoDialog.java"


# instance fields
.field employee:Lpl/mkrstudio/truefootball3/objects/Employee;

.field initLists:Z

.field toHire:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Employee;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "context",
            "employee",
            "toHire"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->initLists:Z

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a003d

    .line 45
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 47
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    .line 50
    iput-boolean p3, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->toHire:Z

    .line 52
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->initViews()V

    return-void
.end method


# virtual methods
.method public initLists()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->initLists:Z

    return v0
.end method

.method public initViews()V
    .locals 10

    .line 57
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "currencyModifier"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const-string v2, "currencyName"

    const-string v3, "EUR"

    .line 59
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080222

    .line 61
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pl.mkrstudio.truefootball3:drawable/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Employee;->getNationality()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Locale;

    const-string v7, "en"

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f080221

    .line 63
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08004a

    .line 64
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0802e3

    .line 65
    invoke-virtual {p0, v4}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0802e5

    .line 66
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 67
    iget-boolean v6, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->toHire:Z

    if-eqz v6, :cond_0

    const v6, 0x7f0c0274

    .line 68
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v5, 0x7f080176

    .line 70
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0802da

    .line 71
    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 73
    iget-object v8, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Employee;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object v8

    invoke-virtual {v8}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {v2, v7, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/Employee;->getAge()B

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Employee;->getMonthlySalary()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v2, v2, v1

    float-to-long v2, v2

    invoke-static {v2, v3, v0}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->employee:Lpl/mkrstudio/truefootball3/objects/Employee;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Employee;->getExperience()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v3, 0x7f08002d

    .line 82
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 83
    iget-boolean v4, p0, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;->toHire:Z

    if-eqz v4, :cond_1

    const v4, 0x7f0c0356

    .line 84
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 85
    new-instance v4, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;

    invoke-direct {v4, p0, v2, v1, v0}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;Lpl/mkrstudio/truefootball3/objects/UserData;FLjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v4, 0x7f0c060c

    .line 175
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 176
    new-instance v4, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;

    invoke-direct {v4, p0, v1, v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/EmployeeInfoDialog;FLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
