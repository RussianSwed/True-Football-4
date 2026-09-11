.class Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;
.super Ljava/lang/Object;
.source "RankingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;Landroid/view/View;)V
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

    .line 57
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->val$view:Landroid/view/View;

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

    .line 60
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rankingsVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 61
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rankingsVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->disableLeftButton()V

    .line 63
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->enableRightButton()V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->enableLeftButton()V

    .line 66
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->disableRightButton()V

    .line 68
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment$1;->val$view:Landroid/view/View;

    iget-object v1, p1, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->rankingsVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/RankingsFragment;->showHeader(Landroid/view/View;I)V

    return-void
.end method
