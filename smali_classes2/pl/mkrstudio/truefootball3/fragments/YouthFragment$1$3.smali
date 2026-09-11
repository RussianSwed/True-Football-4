.class Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$3;
.super Ljava/lang/Object;
.source "YouthFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$3;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;

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

    .line 101
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$3;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1$3;->this$1:Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/YouthFragment;Landroid/view/View;)V

    return-void
.end method
