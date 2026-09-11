.class public Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;
.super Landroid/app/Dialog;
.source "LanguageDialog.java"


# instance fields
.field listener:Lpl/mkrstudio/truefootball3/activities/ILanguageChooseListener;


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

    .line 21
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    check-cast p1, Lpl/mkrstudio/truefootball3/activities/ILanguageChooseListener;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->listener:Lpl/mkrstudio/truefootball3/activities/ILanguageChooseListener;

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a0040

    .line 24
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 26
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->init()V

    return-void
.end method


# virtual methods
.method init()V
    .locals 35

    move-object/from16 v0, p0

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f080090

    .line 35
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080086

    .line 36
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0800e6

    .line 37
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080134

    .line 38
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f08019e

    .line 39
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0801a3

    .line 40
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080171

    .line 41
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080322

    .line 42
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080191

    .line 43
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f08012b

    .line 44
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0801b5

    .line 45
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f08005d

    .line 46
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0801bd

    .line 47
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0801c1

    .line 48
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0801c6

    .line 49
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0801e4

    .line 50
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0801c9

    .line 51
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0801ff

    .line 52
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080162

    .line 53
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f08029b

    .line 54
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f08029c

    .line 55
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f08008a

    .line 56
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0802dc

    .line 57
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0802de

    .line 58
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080319

    .line 59
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080306

    .line 60
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080050

    .line 61
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f080386

    .line 62
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0803b1

    .line 63
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0803b4

    .line 64
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0803c5

    .line 65
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0800f6

    .line 66
    invoke-virtual {v0, v2}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "bg"

    const-string v4, "bs"

    const-string v5, "ca"

    const-string v6, "cs"

    const-string v7, "de"

    const-string v8, "el"

    const-string v9, "en"

    const-string v10, "es"

    const-string v11, "fr"

    const-string v12, "hr"

    const-string v13, "hu"

    const-string v14, "hy"

    const-string v15, "in"

    const-string v16, "it"

    const-string v17, "ko"

    const-string v18, "lt"

    const-string v19, "lv"

    const-string v20, "ms"

    const-string v21, "nl"

    const-string v22, "pl"

    const-string v23, "pt_PT"

    const-string v24, "pt_BR"

    const-string v25, "ro"

    const-string v26, "ru"

    const-string v27, "sk"

    const-string v28, "sr"

    const-string v29, "sq"

    const-string v30, "th"

    const-string v31, "tr"

    const-string v32, "ua"

    const-string v33, "vi"

    const-string v34, "zh"

    .line 68
    filled-new-array/range {v3 .. v34}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 76
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 78
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;

    invoke-direct {v5, v0, v2, v3}, Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/LanguageDialog;[Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
