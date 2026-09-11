.class Lpl/mkrstudio/truefootball3/fragments/JobsFragment$1;
.super Ljava/lang/Object;
.source "JobsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/JobsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/JobsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/JobsFragment;

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
            "position",
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

    .line 98
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/JobsFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/JobsFragment;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/UserData;->getJobs()Lpl/mkrstudio/truefootball3/objects/Jobs;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Jobs;->getJobOffers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpl/mkrstudio/truefootball3/objects/JobOffer;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/fragments/JobsFragment;->showJobOffer(Lpl/mkrstudio/truefootball3/objects/JobOffer;)V

    return-void
.end method
