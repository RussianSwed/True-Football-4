.class Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;
.super Ljava/lang/Object;
.source "BankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/BankFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 90
    iget-object v0, v7, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->getBankLoans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/BankLoan;

    int-to-long v4, v2

    .line 91
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/BankLoan;->getLoanAmount()J

    move-result-wide v2

    add-long/2addr v4, v2

    long-to-int v2, v4

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    const v8, 0x7f080259

    const/4 v3, 0x1

    if-le v2, v0, :cond_1

    .line 94
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, v7, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0033

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f08010f

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0c066b

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 101
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 102
    new-instance v2, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$1;

    invoke-direct {v2, v7, v0}, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 112
    :cond_1
    new-instance v9, Landroid/app/Dialog;

    iget-object v0, v7, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v9, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a0046

    .line 114
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f080060

    .line 116
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    const v0, 0x7f080068

    .line 117
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Button;

    const v0, 0x7f080061

    .line 118
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    const v0, 0x7f080069

    .line 119
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    const v0, 0x7f080056

    .line 121
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Spinner;

    const/4 v0, 0x4

    new-array v15, v0, [I

    .line 123
    fill-array-data v15, :array_0

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v1, v0, :cond_2

    .line 127
    aget v3, v15, v1

    int-to-float v3, v3

    iget-object v4, v7, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget v4, v4, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->modifier:F

    mul-float v3, v3, v4

    float-to-long v3, v3

    iget-object v5, v7, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object v5, v5, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->currency:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, v7, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f0a00d4

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 132
    invoke-virtual {v14, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f08020f

    .line 134
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    const-string v0, "6"

    const-string v2, "12"

    const-string v4, "24"

    const-string v5, "36"

    .line 135
    filled-new-array {v0, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 138
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, v7, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 140
    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    iget-object v0, v7, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/BankFragment;

    iget-object v1, v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object v1

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v2

    long-to-int v3, v2

    aget-object v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v3

    long-to-int v4, v3

    aget v3, v15, v4

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Finances;->calculateInstalment(IJ)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lpl/mkrstudio/truefootball3/fragments/BankFragment;->updateMonthlyInstalment(Landroid/app/Dialog;I)V

    .line 144
    new-instance v4, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v5

    move-object v8, v4

    move-object v4, v6

    move-object/from16 v16, v5

    move-object v5, v15

    move-object/from16 v17, v15

    move-object v15, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;Landroid/app/Dialog;[Ljava/lang/String;Landroid/widget/Spinner;[ILandroid/widget/Spinner;)V

    .line 158
    invoke-virtual {v15, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 159
    invoke-virtual {v14, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 161
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$3;

    invoke-direct {v0, v7, v14}, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$3;-><init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;Landroid/widget/Spinner;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$4;

    invoke-direct {v0, v7, v14}, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$4;-><init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;Landroid/widget/Spinner;)V

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$5;

    invoke-direct {v0, v7, v15}, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$5;-><init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;Landroid/widget/Spinner;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$6;

    invoke-direct {v0, v7, v15}, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$6;-><init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;Landroid/widget/Spinner;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080259

    .line 205
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    .line 206
    new-instance v10, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;

    move-object v0, v10

    move-object/from16 v2, v16

    move-object v3, v15

    move-object/from16 v4, v17

    move-object v5, v14

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$7;-><init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;[Ljava/lang/String;Landroid/widget/Spinner;[ILandroid/widget/Spinner;Landroid/app/Dialog;)V

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e0

    .line 218
    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 219
    new-instance v1, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$8;

    invoke-direct {v1, v7, v9}, Lpl/mkrstudio/truefootball3/fragments/BankFragment$1$8;-><init>(Lpl/mkrstudio/truefootball3/fragments/BankFragment$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x1f4
        0x3e8
        0x1388
        0x2710
    .end array-data
.end method
