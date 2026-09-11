.class Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;
.super Ljava/lang/Object;
.source "LoadGameActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->listSaves()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

.field final synthetic val$savedGameAdapter:Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$savedGameAdapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->val$savedGameAdapter:Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;

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
            "arg0",
            "arg1",
            "arg2",
            "arg3"
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

    .line 199
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->val$savedGameAdapter:Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;->setSelectedPosition(I)V

    const/4 p1, -0x1

    if-le p3, p1, :cond_0

    .line 203
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->deleteButton:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->deleteButton:Landroid/widget/Button;

    new-instance p4, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;

    invoke-direct {p4, p0, p3}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$1;-><init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;I)V

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 256
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity;->loadButton:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;

    invoke-direct {p2, p0, p3}, Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1$2;-><init>(Lpl/mkrstudio/truefootball3/activities/LoadGameActivity$1;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
