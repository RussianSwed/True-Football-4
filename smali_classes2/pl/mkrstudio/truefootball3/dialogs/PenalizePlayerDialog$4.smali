.class Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;
.super Ljava/lang/Object;
.source "PenalizePlayerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

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

    .line 156
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 157
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 159
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->penaltyReason:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    .line 160
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->disableRightButton(Landroid/widget/Button;)V

    .line 161
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->enableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->enableLeftButton(Landroid/widget/Button;)V

    .line 164
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog$4;->this$0:Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/PenalizePlayerDialog;->enableRightButton(Landroid/widget/Button;)V

    :goto_0
    return-void
.end method
