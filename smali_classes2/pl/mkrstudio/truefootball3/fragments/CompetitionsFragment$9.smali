.class Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;
.super Ljava/lang/Object;
.source "CompetitionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$c:Lpl/mkrstudio/truefootball3/objects/Competition;

.field final synthetic val$groupsLeftButton:Landroid/widget/Button;

.field final synthetic val$groupsRightButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Landroid/widget/Button;Landroid/widget/Button;Lpl/mkrstudio/truefootball3/objects/Competition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$groupsRightButton",
            "val$groupsLeftButton",
            "val$c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsRightButton:Landroid/widget/Button;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsLeftButton:Landroid/widget/Button;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$c:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 434
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 435
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsRightButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 436
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_1

    .line 438
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 439
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsRightButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p4, p4, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->groupSpinner:Landroid/widget/Spinner;

    invoke-virtual {p4}, Landroid/widget/Spinner;->getCount()I

    move-result p4

    sub-int/2addr p4, p2

    if-ne p1, p4, :cond_2

    .line 441
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 442
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsRightButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 444
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 445
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$groupsRightButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableRightButton(Landroid/widget/Button;)V

    .line 447
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p4, p4, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$9;->val$c:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p1, p2, p4, p5, p3}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showWeek(ILpl/mkrstudio/truefootball3/views/FixturesView;Lpl/mkrstudio/truefootball3/objects/Competition;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
