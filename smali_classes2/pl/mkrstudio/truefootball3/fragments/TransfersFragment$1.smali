.class Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1;
.super Ljava/lang/Object;
.source "TransfersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;Landroid/view/View;)V
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

    .line 93
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1;->val$view:Landroid/view/View;

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
            "arg0"
        }
    .end annotation

    .line 96
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;

    invoke-direct {p1, v0, v1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/fragments/TransfersFragment;)V

    .line 97
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1$1;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/TransfersFragment$1;Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 104
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/SearchForPlayersDialog;->show()V

    return-void
.end method
