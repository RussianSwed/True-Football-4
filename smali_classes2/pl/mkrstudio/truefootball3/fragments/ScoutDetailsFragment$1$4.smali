.class Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;
.super Ljava/lang/Object;
.source "ScoutDetailsFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

.field final synthetic val$durationDaysTV:Landroid/widget/TextView;

.field final synthetic val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

.field final synthetic val$totalCostTV:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$scoutAssignment",
            "val$durationDaysTV",
            "val$totalCostTV"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->val$durationDaysTV:Landroid/widget/TextView;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->val$totalCostTV:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seekBar",
            "progress",
            "fromUser"
        }
    .end annotation

    .line 220
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    add-int/lit8 p2, p2, 0xa

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->setDaysLeft(I)V

    .line 221
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->val$durationDaysTV:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getDaysLeft()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->val$totalCostTV:Landroid/widget/TextView;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->val$scoutAssignment:Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/UserData;->getChosenTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p3

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p3

    invoke-virtual {p2, p3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->calculateTotalCost(Lpl/mkrstudio/truefootball3/objects/Country;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget p3, p3, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->modifier:F

    mul-float p2, p2, p3

    float-to-long p2, p2

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1$4;->this$1:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/ScoutDetailsFragment;->currency:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    return-void
.end method
