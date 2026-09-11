.class Lpl/mkrstudio/truefootball3/fragments/HistoryFragment$1;
.super Ljava/lang/Object;
.source "HistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;->initButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/HistoryFragment;->mListener:Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;

    invoke-interface {p1}, Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;->onHallOfTrophiesClicked()V

    return-void
.end method
