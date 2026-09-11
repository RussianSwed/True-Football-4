.class Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$4;
.super Ljava/lang/Object;
.source "TransfersFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->showTransferOffer(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$4;->val$view:Landroid/view/View;

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
            "dialog"
        }
    .end annotation

    .line 170
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$4;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$4;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->access$100(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V

    return-void
.end method
