.class Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;
.super Ljava/lang/Object;
.source "CompetitionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->initGroupSpinner(Lpl/mkrstudio/truefootball3/objects/Competition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

.field final synthetic val$groupsLeftButton:Landroid/widget/Button;

.field final synthetic val$groupsRightButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$groupsLeftButton",
            "val$groupsRightButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 457
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->val$groupsLeftButton:Landroid/widget/Button;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->val$groupsRightButton:Landroid/widget/Button;

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

    .line 460
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-lez p1, :cond_1

    .line 461
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 462
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 463
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->val$groupsLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 464
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->val$groupsRightButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->val$groupsLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 467
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$10;->val$groupsRightButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableRightButton(Landroid/widget/Button;)V

    :cond_1
    :goto_0
    return-void
.end method
