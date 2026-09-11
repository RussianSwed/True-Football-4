.class Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1$1;
.super Ljava/lang/Object;
.source "DressingRoomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;

.field final synthetic val$tid:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$tid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1$1;->val$tid:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogInterface"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1$1;->val$tid:Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->isIntegrated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;->val$teamIntegration:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;->showNewsObservations(Landroid/view/View;)V

    :cond_0
    return-void
.end method
