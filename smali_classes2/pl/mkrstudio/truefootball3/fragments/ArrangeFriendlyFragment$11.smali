.class Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;
.super Ljava/lang/Object;
.source "ArrangeFriendlyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initDateSpinner(Landroid/view/View;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Time;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

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

    .line 317
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 318
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 322
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$11;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->disableEnableDateSpinnerArrows()V

    return-void
.end method
