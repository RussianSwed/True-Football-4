.class Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;
.super Ljava/lang/Object;
.source "NewYouthTeamDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;

.field final synthetic val$trainers:Ljava/util/List;

.field final synthetic val$types:Ljava/util/List;

.field final synthetic val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;Lpl/mkrstudio/truefootball3/objects/UserData;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$ud",
            "val$types",
            "val$trainers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->val$types:Ljava/util/List;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->val$trainers:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 91
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->val$types:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/mkrstudio/truefootball3/enums/YouthTeamType;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->val$trainers:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->youthTeamTrainerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->val$ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lpl/mkrstudio/truefootball3/objects/Youth;->addYouthTeam(Lpl/mkrstudio/truefootball3/enums/YouthTeamType;Lpl/mkrstudio/truefootball3/objects/YouthTrainer;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V

    .line 92
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog$1;->this$0:Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/NewYouthTeamDialog;->dismiss()V

    return-void
.end method
