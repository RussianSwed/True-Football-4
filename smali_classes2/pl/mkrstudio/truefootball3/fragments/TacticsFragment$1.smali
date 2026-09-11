.class Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;
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


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

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

    .line 170
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividualVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    if-lez p1, :cond_1

    .line 171
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividualVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 172
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividualVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 173
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividual:Landroid/widget/TextView;

    const v0, 0x7f0c05fb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 175
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividualVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividual:Landroid/widget/TextView;

    const v0, 0x7f0c0294

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 179
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->enableRightButton(Landroid/widget/Button;)V

    :cond_1
    :goto_0
    return-void
.end method
