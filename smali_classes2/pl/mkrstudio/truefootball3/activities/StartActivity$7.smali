.class Lpl/mkrstudio/truefootball3/activities/StartActivity$7;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/StartActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/StartActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;

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

    .line 230
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/StartActivity;->main:Landroid/widget/ViewFlipper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 231
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/StartActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/StartActivity;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/activities/StartActivity;->showAnimation()V

    return-void
.end method
