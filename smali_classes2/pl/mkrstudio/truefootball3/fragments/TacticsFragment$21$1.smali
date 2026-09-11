.class Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21$1;
.super Ljava/lang/Object;
.source "TacticsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;

.field final synthetic val$newFormationDialog:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$newFormationDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21$1;->val$newFormationDialog:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

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

    .line 511
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21$1;->val$newFormationDialog:Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->isCreated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 512
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->initView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
