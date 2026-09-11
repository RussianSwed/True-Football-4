.class Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;
.super Ljava/lang/Object;
.source "DressingRoomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;

.field final synthetic val$teamIntegration:Landroid/widget/Button;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$teamIntegration",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;->val$teamIntegration:Landroid/widget/Button;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;->val$view:Landroid/view/View;

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

    .line 92
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1$1;

    invoke-direct {v0, p0, p1}, Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/DressingRoomFragment$1;Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/TeamIntegrationDialog;->show()V

    return-void
.end method
