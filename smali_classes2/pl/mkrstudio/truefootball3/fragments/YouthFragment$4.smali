.class Lpl/mkrstudio/truefootball3/fragments/YouthFragment$4;
.super Ljava/lang/Object;
.source "YouthFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->assignTrainerTo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/fragments/YouthFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

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

    .line 184
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/fragments/YouthFragment$4;->this$0:Lpl/mkrstudio/truefootball3/fragments/YouthFragment;

    invoke-static {v0, p1}, Lpl/mkrstudio/truefootball3/fragments/YouthFragment;->access$000(Lpl/mkrstudio/truefootball3/fragments/YouthFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method
