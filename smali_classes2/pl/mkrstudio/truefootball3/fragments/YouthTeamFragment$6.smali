.class Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;
.super Ljava/lang/Object;
.source "YouthTeamFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 234
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainer()Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getTrainer()Lpl/mkrstudio/truefootball3/objects/YouthTrainer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 236
    :goto_0
    new-instance v0, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeamName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/YouthTrainer;)V

    .line 237
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6$1;

    invoke-direct {p1, p0}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;)V

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 248
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/dialogs/AssignYouthTrainerDialog;->show()V

    return-void
.end method
