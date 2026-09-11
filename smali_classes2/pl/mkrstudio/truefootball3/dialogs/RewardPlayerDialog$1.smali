.class Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;
.super Ljava/lang/Object;
.source "RewardPlayerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 104
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 105
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 107
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->rewardType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->disableLeftButton(Landroid/widget/Button;)V

    .line 109
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->enableLeftButton(Landroid/widget/Button;)V

    .line 112
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/RewardPlayerDialog;->enableRightButton(Landroid/widget/Button;)V

    :goto_0
    return-void
.end method
