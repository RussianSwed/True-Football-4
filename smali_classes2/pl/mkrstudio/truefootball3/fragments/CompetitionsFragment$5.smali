.class Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$5;
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

    .line 263
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

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

    .line 266
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->access$200(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;)V

    .line 267
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->displayTypeVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 268
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowRight2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 269
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->arrowLeft2:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableLeftButton(Landroid/widget/Button;)V

    return-void
.end method
