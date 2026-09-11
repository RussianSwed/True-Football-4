.class Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;
.super Ljava/lang/Object;
.source "SponsorshipsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initLists(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;Landroid/view/View;)V
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

    .line 260
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->val$view:Landroid/view/View;

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

    .line 263
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 264
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->disableLeftButton()V

    .line 266
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->enableRightButton()V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->enableLeftButton()V

    .line 269
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->enableRightButton()V

    .line 271
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$4;->val$view:Landroid/view/View;

    iget-object v1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->showHeader(Landroid/view/View;I)V

    return-void
.end method
