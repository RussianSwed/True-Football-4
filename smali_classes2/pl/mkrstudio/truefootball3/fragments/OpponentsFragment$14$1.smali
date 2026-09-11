.class Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;
.super Ljava/lang/Object;
.source "OpponentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$selectedTeam",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->val$selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->val$dialog:Landroid/app/Dialog;

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

    .line 385
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->val$selectedTeam:Lpl/mkrstudio/truefootball3/objects/Team;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->addAnalyzedTeam(Lpl/mkrstudio/truefootball3/objects/Team;)V

    .line 387
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;Landroid/view/View;)V

    .line 388
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->showAnalysedOpponents(Landroid/view/View;)V

    .line 389
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$14$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
