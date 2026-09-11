.class public Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;
.super Landroid/app/Dialog;
.source "TeamIntegrationDialog.java"


# instance fields
.field cancel:Landroid/widget/Button;

.field confirm:Landroid/widget/Button;

.field dinnerRB:Landroid/widget/RadioButton;

.field integrated:Z

.field partyRB:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->integrated:Z

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a005a

    .line 45
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->init()V

    return-void
.end method


# virtual methods
.method init()V
    .locals 11

    const v0, 0x7f080150

    .line 53
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->dinnerRB:Landroid/widget/RadioButton;

    const v0, 0x7f080268

    .line 54
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->partyRB:Landroid/widget/RadioButton;

    .line 56
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->dinnerRB:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->dinnerRB:Landroid/widget/RadioButton;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$1;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->partyRB:Landroid/widget/RadioButton;

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$2;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f08014f

    .line 72
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$3;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$3;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080267

    .line 81
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$4;

    invoke-direct {v2, p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$4;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 92
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "tf3Settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "currencyModifier"

    const/high16 v5, 0x3f800000    # 1.0f

    .line 93
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v5, "currencyName"

    const-string v6, "EUR"

    .line 94
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f08025e

    .line 96
    invoke-virtual {p0, v5}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f08025f

    .line 97
    invoke-virtual {p0, v6}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c046c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float v9, v9, v3

    float-to-long v9, v9

    .line 100
    invoke-static {v9, v10, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 99
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0c0471

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v3, v3, v7

    float-to-long v7, v3

    .line 103
    invoke-static {v7, v8, v2}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 102
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080259

    .line 105
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->confirm:Landroid/widget/Button;

    .line 106
    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;

    invoke-direct {v2, p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$5;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e0

    .line 118
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->cancel:Landroid/widget/Button;

    .line 119
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$6;

    invoke-direct {v1, p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog$6;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isIntegrated()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->integrated:Z

    return v0
.end method

.method public setIntegrated(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "integrated"
        }
    .end annotation

    .line 134
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->integrated:Z

    return-void
.end method
