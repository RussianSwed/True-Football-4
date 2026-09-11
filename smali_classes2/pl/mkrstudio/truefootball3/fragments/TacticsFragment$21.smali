.class Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;
.super Ljava/lang/Object;
.source "TacticsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

.field final synthetic val$formations:Ljava/util/List;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$formations",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 503
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;->val$formations:Ljava/util/List;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;->val$view:Landroid/view/View;

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
            "vieww"
        }
    .end annotation

    .line 506
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;->val$formations:Ljava/util/List;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->formation:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Formation;

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Formation;)V

    .line 508
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21$1;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$21;Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 516
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/NewFormationDialog;->show()V

    return-void
.end method
