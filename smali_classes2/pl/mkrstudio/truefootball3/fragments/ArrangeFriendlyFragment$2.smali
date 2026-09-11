.class Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$2;
.super Ljava/lang/Object;
.source "ArrangeFriendlyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->initButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

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

    .line 111
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment$2;->this$0:Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/ArrangeFriendlyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method
