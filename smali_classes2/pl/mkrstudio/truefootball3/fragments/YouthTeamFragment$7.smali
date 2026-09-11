.class Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;
.super Ljava/lang/Object;
.source "YouthTeamFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->initFinancing(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$modifier:F

.field final synthetic val$youthTrainingAmountTV:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;Landroid/widget/TextView;FLjava/lang/String;)V
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
            "val$youthTrainingAmountTV",
            "val$modifier",
            "val$currency"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;->val$youthTrainingAmountTV:Landroid/widget/TextView;

    iput p3, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;->val$modifier:F

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;->val$currency:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
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

    .line 270
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->setCurrentFinancing(B)V

    .line 271
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;->val$youthTrainingAmountTV:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    iget-object p3, p3, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/YouthTeam;->getFinancing()J

    move-result-wide v0

    long-to-float p3, v0

    iget v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;->val$modifier:F

    mul-float p3, p3, v0

    float-to-long v0, p3

    iget-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$7;->val$currency:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
