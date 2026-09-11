.class Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6$1;
.super Ljava/lang/Object;
.source "YouthTeamFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 244
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment$6;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/YouthTeamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method
