.class Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;
.super Ljava/lang/Object;
.source "CompetitionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$c:Lpl/mkrstudio/truefootball3/objects/Competition;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Lpl/mkrstudio/truefootball3/objects/Competition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->val$c:Lpl/mkrstudio/truefootball3/objects/Competition;

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

    .line 506
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->val$c:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Competition;->getCompetitionInfo()Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/CompetitionInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OCE_CC"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 507
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->val$c:Lpl/mkrstudio/truefootball3/objects/Competition;

    invoke-static {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->access$500(Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;Lpl/mkrstudio/truefootball3/objects/Competition;)V

    .line 513
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 514
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksRightButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableRightButton(Landroid/widget/Button;)V

    .line 515
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableLeftButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 516
    :cond_1
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_2

    .line 517
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableLeftButton(Landroid/widget/Button;)V

    .line 518
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksRightButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 519
    :cond_2
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p4, p4, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksSpinner:Landroid/widget/Spinner;

    invoke-virtual {p4}, Landroid/widget/Spinner;->getCount()I

    move-result p4

    sub-int/2addr p4, p2

    if-ne p1, p4, :cond_3

    .line 520
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 521
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksRightButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->disableRightButton(Landroid/widget/Button;)V

    goto :goto_0

    .line 523
    :cond_3
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksLeftButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableLeftButton(Landroid/widget/Button;)V

    .line 524
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->weeksRightButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->enableRightButton(Landroid/widget/Button;)V

    .line 526
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupSpinner()Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-ltz p1, :cond_4

    .line 527
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->val$c:Lpl/mkrstudio/truefootball3/objects/Competition;

    iget-object p5, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p5, p5, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/views/FixturesView;->getGroupSpinner()Landroid/widget/Spinner;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p5

    invoke-virtual {p1, p3, p2, p4, p5}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showWeek(ILpl/mkrstudio/truefootball3/views/FixturesView;Lpl/mkrstudio/truefootball3/objects/Competition;I)V

    goto :goto_1

    .line 529
    :cond_4
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->this$0:Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->fv:Lpl/mkrstudio/truefootball3/views/FixturesView;

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment$12;->val$c:Lpl/mkrstudio/truefootball3/objects/Competition;

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p2, p4, p5}, Lpl/mkrstudio/truefootball3/fragments/CompetitionsFragment;->showWeek(ILpl/mkrstudio/truefootball3/views/FixturesView;Lpl/mkrstudio/truefootball3/objects/Competition;I)V

    :goto_1
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
