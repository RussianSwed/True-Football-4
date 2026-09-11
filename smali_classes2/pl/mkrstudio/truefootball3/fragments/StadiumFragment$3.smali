.class Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;
.super Ljava/lang/Object;
.source "StadiumFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initButton(Landroid/view/View;Landroid/widget/ImageButton;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

.field final synthetic val$maxCapacity:I

.field final synthetic val$tribune:Lpl/mkrstudio/truefootball3/objects/Tribune;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;Lpl/mkrstudio/truefootball3/objects/Tribune;ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$tribune",
            "val$maxCapacity",
            "val$view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 306
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->val$tribune:Lpl/mkrstudio/truefootball3/objects/Tribune;

    iput p3, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->val$maxCapacity:I

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->val$view:Landroid/view/View;

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
            "arg0"
        }
    .end annotation

    .line 310
    new-instance p1, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->val$tribune:Lpl/mkrstudio/truefootball3/objects/Tribune;

    iget v2, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->val$maxCapacity:I

    invoke-direct {p1, v0, v1, v2}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;-><init>(Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Tribune;I)V

    .line 311
    new-instance v0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3$1;

    invoke-direct {v0, p0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3$1;-><init>(Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;)V

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 318
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/dialogs/UpgradeTribuneDialog;->show()V

    return-void
.end method
