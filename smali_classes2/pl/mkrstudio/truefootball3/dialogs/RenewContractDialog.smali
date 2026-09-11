.class public Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;
.super Landroid/app/Dialog;
.source "RenewContractDialog.java"


# instance fields
.field player:Lpl/mkrstudio/truefootball3/objects/Player;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Player;)V
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

    .line 26
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0050

    .line 28
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 30
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 33
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->init()V

    return-void
.end method


# virtual methods
.method init()V
    .locals 10

    .line 37
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f080116

    .line 38
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    const v2, 0x7f0802e4

    .line 39
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 41
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 43
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Contract;->getMonthSalary(D)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v3, v0, v4}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initValuePicker(JLandroid/content/SharedPreferences;Z)V

    .line 44
    invoke-virtual {v9}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    iget-object v4, p0, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initContractPicker(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;ZIZ)V

    const v0, 0x7f08010c

    .line 46
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    new-instance v2, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog$1;

    invoke-direct {v2, p0, v9, v8, v1}, Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/RenewContractDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/views/ValuePicker;Lpl/mkrstudio/truefootball3/views/ValuePicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
