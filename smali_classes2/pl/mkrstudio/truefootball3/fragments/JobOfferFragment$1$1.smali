.class Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1$1;
.super Ljava/lang/Object;
.source "JobOfferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1$1;->val$dialog:Landroid/app/Dialog;

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

    .line 90
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/UserData;->getJobs()Lpl/mkrstudio/truefootball3/objects/Jobs;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Jobs;->getJobOffers()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment;->jobOffer:Lpl/mkrstudio/truefootball3/objects/JobOffer;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 92
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/JobOfferFragment$1$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
