.class Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3$1;
.super Ljava/lang/Object;
.source "StadiumFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 315
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->this$0:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3$1;->this$1:Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/StadiumFragment;->initView(Landroid/view/View;)V

    return-void
.end method
