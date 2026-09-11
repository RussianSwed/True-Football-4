.class public Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;
.super Landroid/app/Dialog;
.source "TeamOptionsDialog.java"


# instance fields
.field clickedButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
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

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->requestWindowFeature(I)Z

    const p1, 0x7f0a005b

    .line 23
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 28
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f08031c

    .line 30
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0800f8

    .line 31
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f08021a

    .line 32
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    new-instance v1, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog$1;

    invoke-direct {v1, p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getClickedButton()Landroid/widget/Button;
    .locals 1

    .line 52
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->clickedButton:Landroid/widget/Button;

    return-object v0
.end method

.method public setClickedButton(Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickedButton"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->clickedButton:Landroid/widget/Button;

    return-void
.end method
