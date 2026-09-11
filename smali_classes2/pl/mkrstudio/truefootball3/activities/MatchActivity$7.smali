.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$7;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/MatchActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/MatchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 612
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

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

    .line 616
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$7;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    return-void
.end method
