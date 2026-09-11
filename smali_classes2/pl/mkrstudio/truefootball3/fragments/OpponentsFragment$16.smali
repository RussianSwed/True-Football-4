.class Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$16;
.super Ljava/lang/Object;
.source "OpponentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->initButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 457
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$16;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

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

    .line 460
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$16;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$16;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->ud:Lpl/mkrstudio/truefootball3/objects/UserData;

    iget-object v2, p0, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment$16;->this$0:Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;

    iget-object v2, v2, Lpl/mkrstudio/truefootball3/fragments/OpponentsFragment;->selectedAnalysis:Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;

    invoke-direct {p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/UserData;Lpl/mkrstudio/truefootball3/objects/TeamAnalysis;)V

    .line 461
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/AnalysisResultDialog;->show()V

    return-void
.end method
