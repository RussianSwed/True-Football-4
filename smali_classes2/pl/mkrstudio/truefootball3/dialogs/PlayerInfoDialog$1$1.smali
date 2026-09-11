.class Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1$1;
.super Ljava/lang/Object;
.source "PlayerInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->morale:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getMorale()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1$1;->this$1:Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog$1;->val$player:Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTemperament()B

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PlayerInfoDialog;->showCharacter(B)V

    return-void
.end method
