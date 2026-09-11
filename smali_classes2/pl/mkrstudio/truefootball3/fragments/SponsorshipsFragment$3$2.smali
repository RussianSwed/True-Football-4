.class Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;
.super Ljava/lang/Object;
.source "SponsorshipsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iput p2, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;->val$i:I

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
            "v"
        }
    .end annotation

    .line 236
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getPendingSponsorshipOffers()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;->val$i:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 237
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/UserData;->getSponsorships()Lpl/mkrstudio/truefootball3/objects/Sponsorships;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->getPendingSponsorshipOffers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3$2;->this$1:Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SponsorshipsFragment;->initSponsorshipOfferList(Landroid/view/View;)V

    return-void
.end method
