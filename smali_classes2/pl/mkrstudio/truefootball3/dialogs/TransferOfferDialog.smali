.class public Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;
.super Landroid/app/Dialog;
.source "TransferOfferDialog.java"

# interfaces
.implements Lpl/mkrstudio/truefootball3/dialogs/IPickerDialog;


# instance fields
.field agentWillBePaid:Landroid/widget/TextView;

.field contractUntilLL:Landroid/widget/LinearLayout;

.field currency:Ljava/lang/String;

.field modifier:F

.field negotiation:Z

.field no:Landroid/widget/Button;

.field offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

.field offeredSalaryLL:Landroid/widget/LinearLayout;

.field offeredValueLL:Landroid/widget/LinearLayout;

.field pid:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

.field player:Landroid/widget/TextView;

.field sp:Landroid/content/SharedPreferences;

.field title:Landroid/widget/TextView;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;

.field yes:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/TransferOffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "offer"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->negotiation:Z

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a005c

    .line 41
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 43
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tf3Settings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->sp:Landroid/content/SharedPreferences;

    const-string v0, "currencyModifier"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->modifier:F

    .line 47
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->sp:Landroid/content/SharedPreferences;

    const-string v0, "currencyName"

    const-string v1, "EUR"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->currency:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 50
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 52
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->initViews()V

    return-void
.end method

.method private initBuyView()V
    .locals 6

    .line 173
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->contractUntilLL:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredValueLL:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredSalaryLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->no:Landroid/widget/Button;

    const v3, 0x7f0c0535

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 178
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    const v3, 0x7f0c0106

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 180
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->agentWillBePaid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c0196

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v4

    long-to-float v2, v4

    iget v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->modifier:F

    mul-float v2, v2, v4

    float-to-int v2, v2

    int-to-long v4, v2

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->currency:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08024d

    .line 184
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 185
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v1

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initValuePicker(JLandroid/content/SharedPreferences;Z)V

    .line 186
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->addPickerDialog(Lpl/mkrstudio/truefootball3/dialogs/IPickerDialog;)V

    .line 188
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$6;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;Lpl/mkrstudio/truefootball3/views/ValuePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->no:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$7;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$7;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initContractView()V
    .locals 10

    .line 135
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->contractUntilLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredValueLL:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredSalaryLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->no:Landroid/widget/Button;

    const v2, 0x7f0c019a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 140
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    const v2, 0x7f0c03c3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 142
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c01f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v5

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0802e4

    .line 144
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 145
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide v4

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->sp:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v4, v5, v2, v3}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initValuePicker(JLandroid/content/SharedPreferences;Z)V

    const v2, 0x7f080116

    .line 146
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 147
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v5

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v6

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initContractPicker(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;ZIZ)V

    .line 149
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->agentWillBePaid:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->agentWillBePaid:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0143

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v6}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getAgentsFee()J

    move-result-wide v6

    long-to-float v6, v6

    iget v7, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->modifier:F

    mul-float v6, v6, v7

    float-to-long v6, v6

    iget-object v8, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->currency:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    new-instance v3, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;

    invoke-direct {v3, p0, v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/views/ValuePicker;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->no:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$5;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$5;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initLoanView()V
    .locals 6

    .line 105
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->contractUntilLL:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredValueLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredSalaryLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->no:Landroid/widget/Button;

    const v2, 0x7f0c0534

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 110
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    const v2, 0x7f0c0105

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 112
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c03af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v4

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v5}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result v5

    invoke-virtual {v4, v5}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->agentWillBePaid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->no:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$3;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initNegotiationView()V
    .locals 6

    .line 211
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->contractUntilLL:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredValueLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredSalaryLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->no:Landroid/widget/Button;

    const v2, 0x7f0c0535

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 216
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    const v2, 0x7f0c0106

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 218
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->agentWillBePaid:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c03f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v3

    long-to-float v3, v3

    iget v4, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->modifier:F

    mul-float v3, v3, v4

    float-to-long v3, v3

    iget-object v5, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->currency:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$8;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$8;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->no:Landroid/widget/Button;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$9;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$9;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public initViews()V
    .locals 2

    const v0, 0x7f08022d

    .line 58
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->no:Landroid/widget/Button;

    const v0, 0x7f0803d0

    .line 59
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    const v0, 0x7f08024f

    .line 60
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->title:Landroid/widget/TextView;

    const v0, 0x7f08004b

    .line 61
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->agentWillBePaid:Landroid/widget/TextView;

    const v0, 0x7f080117

    .line 63
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->contractUntilLL:Landroid/widget/LinearLayout;

    const v0, 0x7f080252

    .line 64
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredValueLL:Landroid/widget/LinearLayout;

    const v0, 0x7f080253

    .line 65
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offeredSalaryLL:Landroid/widget/LinearLayout;

    const v0, 0x7f080276

    .line 67
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->player:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->player:Landroid/widget/TextView;

    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$1;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    sget-object v0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog$10;->$SwitchMap$pl$mkrstudio$truefootball3$enums$TransferOfferType:[I

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getType()Lpl/mkrstudio/truefootball3/enums/TransferOfferType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/TransferOfferType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->initLoanView()V

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->initContractView()V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 85
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->initNegotiationView()V

    goto :goto_0

    .line 87
    :cond_3
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->initBuyView()V

    :goto_0
    return-void
.end method

.method public onValueChanged(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->offer:Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 243
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    const p2, 0x7f0c03ee

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->negotiation:Z

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->yes:Landroid/widget/Button;

    const p2, 0x7f0c0106

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TransferOfferDialog;->negotiation:Z

    :goto_0
    return-void
.end method
