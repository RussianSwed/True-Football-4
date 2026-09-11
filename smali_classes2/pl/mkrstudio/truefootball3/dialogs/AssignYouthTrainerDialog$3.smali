.class Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$3;
.super Ljava/lang/Object;
.source "AssignYouthTrainerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

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

    .line 102
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 103
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 105
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$3;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->disableEnableButtons()V

    return-void
.end method
