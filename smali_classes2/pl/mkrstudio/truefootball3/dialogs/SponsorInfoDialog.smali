.class public Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;
.super Landroid/app/Dialog;
.source "SponsorInfoDialog.java"


# instance fields
.field initLists:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Sponsorship;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "sponsor"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->initLists:Z

    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->requestWindowFeature(I)Z

    const v1, 0x7f0a0057

    .line 32
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 34
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "tf3Settings"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "currencyModifier"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    const-string v1, "currencyName"

    const-string v2, "EUR"

    .line 38
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f080221

    .line 40
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080115

    .line 41
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080212

    .line 42
    invoke-virtual {p0, v2}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080329

    .line 43
    invoke-virtual {p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getContractEnd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-double v0, v6

    .line 47
    invoke-virtual {p2, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getMonthlyIncome(D)J

    move-result-wide v0

    invoke-static {v0, v1, v7}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pl.mkrstudio.truefootball3:string/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getType()Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v4, "en"

    invoke-direct {v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lpl/mkrstudio/truefootball3/objects/UserData;

    const p1, 0x7f08037a

    .line 52
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 53
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;Lpl/mkrstudio/truefootball3/objects/Sponsorship;FLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/UserData;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isInitLists()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->initLists:Z

    return v0
.end method

.method public setInitLists(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initLists"
        }
    .end annotation

    .line 113
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SponsorInfoDialog;->initLists:Z

    return-void
.end method
