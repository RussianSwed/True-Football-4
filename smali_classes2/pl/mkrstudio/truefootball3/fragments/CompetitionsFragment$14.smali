.class Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;
.super Ljava/lang/Object;
.source "CompetitionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->initWeeksSpinner(Lpl/mkrstudio/truefootball3/objects/Competition;)V
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

    .line 554
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

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

    .line 557
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 558
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 559
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 560
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 561
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksRightButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 563
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 564
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$14;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksRightButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableRightButton(Landroid/widget/Button;)V

    :cond_1
    :goto_0
    return-void
.end method
