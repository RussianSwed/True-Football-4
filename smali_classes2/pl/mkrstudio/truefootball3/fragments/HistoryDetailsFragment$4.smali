.class Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$4;
.super Ljava/lang/Object;
.source "HistoryDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 352
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget v0, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    .line 353
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->seasons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    .line 354
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    iput v1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->shownSeasonPosition:I

    .line 355
    :cond_0
    new-instance p1, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;-><init>(Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment;Landroid/content/Context;)V

    new-array v0, v1, [Landroid/content/Context;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/HistoryDetailsFragment$ShowStatsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
