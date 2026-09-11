.class public Lpl/mkrstudio/truefootball3/dialogs/EditRivalsDialog;
.super Landroid/app/Dialog;
.source "EditRivalsDialog.java"


# instance fields
.field deleteButton:Landroid/widget/Button;

.field saveButton:Landroid/widget/Button;

.field team:Lpl/mkrstudio/truefootball3/objects/Team;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method
