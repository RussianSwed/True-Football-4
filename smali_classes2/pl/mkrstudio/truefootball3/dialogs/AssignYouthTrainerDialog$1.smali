.class Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;
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

.field final synthetic val$trainers:Ljava/util/List;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$trainers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;->val$trainers:Ljava/util/List;

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

    .line 84
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;->val$trainers:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    .line 85
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->setTrainer(Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V

    .line 86
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 87
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->previousTrainer:Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->previousTrainer:Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->dismiss()V

    return-void
.end method
