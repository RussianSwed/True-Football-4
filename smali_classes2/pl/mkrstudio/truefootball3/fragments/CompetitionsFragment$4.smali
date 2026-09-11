.class Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$4;
.super Ljava/lang/Object;
.source "CompetitionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showCompetitionDetails(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

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
            "v"
        }
    .end annotation

    .line 257
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->access$100(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    .line 258
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_0

    .line 259
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 260
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableRightButton(Landroid/widget/Button;)V

    return-void
.end method
