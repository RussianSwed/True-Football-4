.class Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;
.super Ljava/lang/Object;
.source "YouthTeamFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 204
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainer()Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V

    .line 205
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->setTrainer(Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V

    .line 206
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getYouth()Lpl/mkrstudio/truefootball3/objects/Youth;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Youth;->getYouthTeams()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 207
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 208
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$5$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
