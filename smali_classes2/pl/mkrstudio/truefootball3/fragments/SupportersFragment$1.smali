.class Lpl/mkrstudio/truefootball3/fragments/SupportersFragment$1;
.super Ljava/lang/Object;
.source "SupportersFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;Landroid/view/View;)V
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

    .line 93
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SupportersFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SupportersFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
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

    .line 96
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SupportersFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSupporters()Lpl/mkrstudio/truefootball3/objects/Supporters;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Supporters;->setDonationsForFans(B)V

    .line 97
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SupportersFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SupportersFragment$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/SupportersFragment;->updateDonationTVs(Landroid/view/View;)V

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
