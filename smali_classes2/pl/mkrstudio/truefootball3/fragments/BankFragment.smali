.class public Lpl/mkrstudio/truefootball3/fragments/BankFragment;
.super Landroidx/fragment/app/Fragment;
.source "BankFragment.java"


# instance fields
.field currency:Ljava/lang/String;

.field modifier:F

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->showLoans(Landroid/view/View;)V

    const v0, 0x7f080362

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 85
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const p3, 0x7f0a0064

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "tf3Settings"

    invoke-virtual {p2, p3, v0}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "currencyModifier"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->modifier:F

    const-string p3, "currencyName"

    const-string v0, "EUR"

    .line 48
    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->currency:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method showLoans(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f080232

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801ee

    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 60
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Finances;->getBankLoans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_1

    .line 64
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 66
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->getBankLoans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "monthlyFee"

    const-string v3, "monthsToEnd"

    const-string v4, "loanAmount"

    const-string v5, "date"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/BankLoan;

    .line 68
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->modifier:F

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->getLoanAmount()J

    move-result-wide v10

    long-to-float v10, v10

    mul-float v8, v8, v10

    float-to-long v10, v8

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->currency:Ljava/lang/String;

    invoke-static {v10, v11, v8}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->getMonthsToEnd()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->modifier:F

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->getMonthlyFee()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v4, v1

    float-to-long v4, v4

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->currency:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v7, 0x7f0a0099

    filled-new-array {v5, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x4

    new-array v9, v2, [I

    fill-array-data v9, :array_0

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x7f080138
        0x7f0801ed
        0x7f080215
        0x7f080211
    .end array-data
.end method

.method updateMonthlyInstalment(Landroid/app/Dialog;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "instalment"
        }
    .end annotation

    const v0, 0x7f080213

    .line 234
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0c03da

    .line 235
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float p2, p2

    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->modifier:F

    mul-float p2, p2, v2

    float-to-long v2, p2

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->currency:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
