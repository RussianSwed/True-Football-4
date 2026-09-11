.class Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;
.super Ljava/lang/Object;
.source "SponsorshipsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initSponsorshipOfferList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

.field final synthetic val$sponsorshipInfoAdapter:Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$sponsorshipInfoAdapter",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->val$sponsorshipInfoAdapter:Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 177
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->val$sponsorshipInfoAdapter:Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/SponsorshipInfoAdapter;->setSelectedPosition(I)V

    const/4 p1, -0x1

    if-le p3, p1, :cond_0

    .line 180
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->acceptOfferButton:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rejectOfferButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->acceptOfferButton:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;

    invoke-direct {p2, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->rejectOfferButton:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;

    invoke-direct {p2, p0, p3}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;-><init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
