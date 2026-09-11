.class public Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;
.super Landroid/app/Dialog;
.source "BuyOfferDialog.java"


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

    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0038

    .line 27
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 29
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    .line 32
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->init()V

    return-void
.end method


# virtual methods
.method init()V
    .locals 5

    .line 37
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tf3Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f08024d

    .line 39
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;

    .line 41
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->player:Lpl/mkrstudio/truefootball3/objects/Player;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lpl/mkrstudio/truefootball3/views/ValuePicker;->initValuePicker(JLandroid/content/SharedPreferences;Z)V

    .line 43
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/objects/UserData;

    const v2, 0x7f08010c

    .line 45
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 46
    new-instance v3, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;

    invoke-direct {v3, p0, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/BuyOfferDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/views/ValuePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
