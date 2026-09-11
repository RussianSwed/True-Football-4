.class Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;
.super Ljava/lang/Object;
.source "SquadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment;Landroid/view/View;)V
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

    .line 124
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->val$view:Landroid/view/View;

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

    .line 128
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/SquadFragment$1;Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 182
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamOptionsDialog;->show()V

    return-void
.end method
