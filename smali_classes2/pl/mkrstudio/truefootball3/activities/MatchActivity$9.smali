.class Lpl/mkrstudio/truefootball3/activities/MatchActivity$9;
.super Ljava/lang/Object;
.source "MatchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 632
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 636
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/MatchActivity$9;->this$0:Lpl/mkrstudio/truefootball3/activities/MatchActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/MatchActivity;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    return-void
.end method
