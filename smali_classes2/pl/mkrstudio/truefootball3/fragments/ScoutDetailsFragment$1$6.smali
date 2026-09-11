.class Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;
.super Ljava/lang/Object;
.source "ScoutDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$scoutAssignment",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 261
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->scout:Lpl/mkrstudio/truefootball3/objects/Scout;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Scout;->assign(Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;)V

    .line 262
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getFinances()Lpl/mkrstudio/truefootball3/objects/Finances;

    move-result-object p1

    new-instance v0, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getTime()Lpl/mkrstudio/truefootball3/objects/Time;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    iget-object v3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object v3, v3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->calculateTotalCost(Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result v2

    neg-int v2, v2

    int-to-long v2, v2

    const-string v4, "scouting"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    .line 263
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;Landroid/view/View;)V

    .line 264
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
