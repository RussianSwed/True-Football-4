.class Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;
.super Ljava/lang/Object;
.source "TrainingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;Landroid/view/View;)V
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

    .line 187
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->val$view:Landroid/view/View;

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

    .line 190
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 191
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 192
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->rightButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 193
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->leftButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->enableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->leftButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 196
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v0, p1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->rightButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->enableRightButton(Landroid/widget/Button;)V

    .line 198
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment$2;->val$view:Landroid/view/View;

    iget-object v1, p1, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->trainingVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/TrainingFragment;->showHeader(Landroid/view/View;I)V

    return-void
.end method
