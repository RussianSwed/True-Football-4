.class Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;
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

    .line 184
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

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
            "v"
        }
    .end annotation

    .line 187
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividualVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 188
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividualVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 189
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividualVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 190
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividual:Landroid/widget/TextView;

    const v0, 0x7f0c05fb

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 191
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 192
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividualVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 194
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->teamIndividual:Landroid/widget/TextView;

    const v0, 0x7f0c0365

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowRight1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 196
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->arrowLeft1:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->enableLeftButton(Landroid/widget/Button;)V

    :cond_1
    :goto_0
    return-void
.end method
