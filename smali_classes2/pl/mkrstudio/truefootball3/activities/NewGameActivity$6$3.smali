.class Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$3;
.super Ljava/lang/Object;
.source "NewGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;

.field final synthetic val$random:Ljava/util/Random;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;Ljava/util/Random;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$3;->this$1:Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$3;->val$random:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 269
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$3;->val$random:Ljava/util/Random;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$3;->this$1:Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 270
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$3;->this$1:Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6$3;->this$1:Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity$6;->this$0:Lpl/mkrstudio/truefootball3/activities/NewGameActivity;

    iget-object v1, v1, Lpl/mkrstudio/truefootball3/activities/NewGameActivity;->teamSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    :cond_0
    return-void
.end method
