.class public Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;
.super Landroidx/fragment/app/Fragment;
.source "BalanceFragment.java"


# instance fields
.field leftButton:Landroid/widget/Button;

.field months:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rightButton:Landroid/widget/Button;

.field selectedMonth:I

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    return-void
.end method


# virtual methods
.method disableLeftButton()V
    .locals 2

    .line 179
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method disableRightButton()V
    .locals 2

    .line 189
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableLeftButton()V
    .locals 3

    .line 184
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->leftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method enableRightButton()V
    .locals 3

    .line 194
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->rightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

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

    const v0, 0x7f08005f

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->leftButton:Landroid/widget/Button;

    const v0, 0x7f080067

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->rightButton:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->leftButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->rightButton:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$2;

    invoke-direct {v1, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->disableRightButton()V

    .line 102
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->enableLeftButton()V

    .line 104
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->disableLeftButton()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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

    const p3, 0x7f0a0063

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    .line 47
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Finances;->getFinanceItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    .line 48
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDate()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x7

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 49
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 55
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->initView(Landroid/view/View;)V

    .line 57
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->selectedMonth:I

    .line 58
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 59
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    iget p3, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->selectedMonth:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->showFinances(Landroid/view/View;Ljava/lang/String;)V

    .line 60
    :cond_2
    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->months:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x2

    if-ge p2, p3, :cond_3

    .line 61
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->disableLeftButton()V

    .line 62
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->disableRightButton()V

    :cond_3
    return-object p1
.end method

.method showFinances(Landroid/view/View;Ljava/lang/String;)V
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "month"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 112
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "tf3Settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "currencyModifier"

    const/high16 v6, 0x3f800000    # 1.0f

    .line 113
    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v6, "currencyName"

    const-string v7, "EUR"

    .line 114
    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f08020e

    .line 116
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 117
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v2, v8, v7}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getMonthName(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f080029

    .line 119
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 120
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v7

    float-to-double v8, v4

    invoke-virtual {v7, v8, v9}, Lpl/mkrstudio/truefootball3/objects/Finances;->getAccountBalance(D)J

    move-result-wide v10

    invoke-static {v10, v11, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, v0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v10, v11}, Lpl/mkrstudio/truefootball3/objects/Finances;->getAccountBalance(D)J

    move-result-wide v12

    const v4, -0xff0100

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-lez v7, :cond_0

    .line 123
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v7, v0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v7}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Lpl/mkrstudio/truefootball3/objects/Finances;->getAccountBalance(D)J

    move-result-wide v10

    cmp-long v7, v10, v14

    if-gez v7, :cond_1

    const/16 v7, 0xe6

    const/16 v10, 0x32

    .line 125
    invoke-static {v7, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :cond_1
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v10, v0, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v10

    invoke-virtual {v10}, Lpl/mkrstudio/truefootball3/objects/Finances;->getFinanceItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v11, v14

    move-wide/from16 v16, v11

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v4, "cost"

    const-string v5, "thing"

    if-eqz v13, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    move-object/from16 v22, v10

    .line 136
    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDate()Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x7

    move-object/from16 v23, v7

    const/4 v7, 0x0

    invoke-virtual {v10, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {v13, v8, v9}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v24

    add-long v14, v14, v24

    .line 138
    invoke-virtual {v13, v8, v9}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v24

    const-string v1, "string"

    const-wide/16 v18, 0x0

    cmp-long v10, v24, v18

    if-lez v10, :cond_2

    .line 139
    invoke-virtual {v13, v8, v9}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v24

    add-long v11, v11, v24

    .line 140
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDescriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v24

    move-wide/from16 v25, v11

    invoke-virtual/range {v24 .. v24}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v2, v1, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v11

    invoke-static {v11, v12, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v23

    move-wide/from16 v11, v25

    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {v13, v8, v9}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v24

    const-wide/16 v18, 0x0

    cmp-long v2, v24, v18

    if-gez v2, :cond_3

    .line 145
    invoke-virtual {v13, v8, v9}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v24

    add-long v16, v16, v24

    .line 146
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v13}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getDescriptionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v24

    move-wide/from16 v25, v14

    invoke-virtual/range {v24 .. v24}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v10, v1, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;->getSum(D)J

    move-result-wide v13

    neg-long v13, v13

    invoke-static {v13, v14, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v23

    .line 149
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v14, v25

    goto :goto_2

    :cond_3
    move-wide/from16 v25, v14

    :cond_4
    move-object/from16 v1, v23

    :goto_2
    move-object/from16 v2, p2

    move-object v7, v1

    move-object/from16 v10, v22

    const v4, -0xff0100

    const/4 v5, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_5
    move-object v1, v7

    const v2, 0x7f0802ca

    move-object/from16 v7, p1

    .line 154
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 155
    invoke-static {v11, v12, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, -0xff0100

    .line 156
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f080175

    .line 158
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-wide/16 v8, -0x1

    mul-long v8, v8, v16

    .line 159
    invoke-static {v8, v9, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getRedColor()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f080210

    .line 162
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    invoke-static {v14, v15, v3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v8, 0x0

    cmp-long v3, v14, v8

    if-lez v3, :cond_6

    const v3, -0xff0100

    .line 166
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_6
    cmp-long v3, v14, v8

    if-gez v3, :cond_7

    .line 168
    invoke-static {}, Lpl/mkrstudio/truefootball3/helpers/ColorHelper;->getRedColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    :goto_3
    const v2, 0x7f080174

    .line 171
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 172
    new-instance v3, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v17

    const v19, 0x7f0a008e

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v20

    const/4 v8, 0x2

    new-array v9, v8, [I

    fill-array-data v9, :array_0

    move-object/from16 v16, v3

    move-object/from16 v18, v1

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0802cb

    .line 174
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 175
    new-instance v2, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {p0 .. p0}, Lpl/mkrstudio/truefootball3/fragments/BalanceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v17

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v20

    new-array v3, v8, [I

    fill-array-data v3, :array_1

    move-object/from16 v16, v2

    move-object/from16 v18, v6

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v21}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080387
        0x7f08011a
    .end array-data

    :array_1
    .array-data 4
        0x7f080387
        0x7f08011a
    .end array-data
.end method
