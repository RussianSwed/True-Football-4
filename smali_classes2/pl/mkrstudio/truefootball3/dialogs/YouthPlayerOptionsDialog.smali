.class public Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;
.super Landroid/app/Dialog;
.source "YouthPlayerOptionsDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;ILpl/mkrstudio/truefootball3/objects/YouthPlayer;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "youthSquadAdapter",
            "position",
            "youthPlayer"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->requestWindowFeature(I)Z

    const v0, 0x7f0a005e

    .line 33
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->setContentView(I)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    .line 37
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0802bd

    .line 39
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    const v0, 0x7f080219

    .line 40
    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    .line 42
    new-instance v8, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$1;-><init>(Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;I)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getAge()B

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/16 p1, 0x8

    .line 108
    invoke-virtual {v7, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v6, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog$2;-><init>(Lpl/mkrstudio/truefootball3/dialogs/YouthPlayerOptionsDialog;Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/adapters/YouthSquadAdapter;I)V

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
