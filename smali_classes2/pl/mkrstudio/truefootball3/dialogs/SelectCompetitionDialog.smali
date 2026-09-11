.class public Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;
.super Landroid/app/Dialog;
.source "SelectCompetitionDialog.java"


# instance fields
.field competitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lpl/mkrstudio/truefootball3/listeners/ISelectCompetitionDialog;

.field selectedCompetitionCode:Ljava/lang/String;

.field ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lpl/mkrstudio/truefootball3/listeners/ISelectCompetitionDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "competitions",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lpl/mkrstudio/truefootball3/listeners/ISelectCompetitionDialog;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->competitions:Ljava/util/List;

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0055

    .line 34
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 39
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->competitions:Ljava/util/List;

    .line 40
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->listener:Lpl/mkrstudio/truefootball3/listeners/ISelectCompetitionDialog;

    .line 42
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->initCompetitionList()V

    return-void
.end method


# virtual methods
.method public getSelectedCompetitionCode()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->selectedCompetitionCode:Ljava/lang/String;

    return-object v0
.end method

.method initCompetitionList()V
    .locals 11

    const v0, 0x7f080108

    .line 46
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 47
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 48
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->competitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v4, 0x7f0a0030

    const/4 v5, 0x0

    .line 49
    invoke-virtual {v1, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f080106

    .line 50
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v3, v7}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getNameForCompetition(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 54
    :catch_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v6, 0x7f08018b

    .line 57
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.resource://pl.mkrstudio.truefootball3/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/util/Locale;

    const-string v10, "en"

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    invoke-virtual {v8, v5, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 60
    new-instance v5, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;

    invoke-direct {v5, p0, v3}, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedCompetitionCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedCompetitionCode"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/SelectCompetitionDialog;->selectedCompetitionCode:Ljava/lang/String;

    return-void
.end method
