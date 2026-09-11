.class Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;
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

    .line 274
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->val$view:Landroid/view/View;

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

    .line 277
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 278
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 279
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->disableRightButton()V

    .line 280
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->enableLeftButton()V

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->enableLeftButton()V

    .line 283
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->enableRightButton()V

    .line 285
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$5;->val$view:Landroid/view/View;

    iget-object v1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->sponsorshipsAndOffersVF:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->showHeader(Landroid/view/View;I)V

    return-void
.end method
