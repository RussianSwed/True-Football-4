.class Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;
.super Ljava/lang/Object;
.source "SaveGameActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->listSaves()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

.field final synthetic val$saveMaps:Ljava/util/ArrayList;

.field final synthetic val$savedGameAdapter:Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$savedGameAdapter",
            "val$saveMaps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->val$savedGameAdapter:Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->val$saveMaps:Ljava/util/ArrayList;

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

    .line 189
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->val$savedGameAdapter:Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/SavedGameAdapter;->setSelectedPosition(I)V

    const/4 p1, -0x1

    if-le p3, p1, :cond_1

    .line 192
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->val$saveMaps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-eq p3, p1, :cond_0

    .line 193
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->enable(Landroid/widget/Button;)V

    .line 194
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->deleteButton:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1;

    invoke-direct {p2, p0, p3}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$1;-><init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->disable(Landroid/widget/Button;)V

    .line 229
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p2, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->saveButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->enable(Landroid/widget/Button;)V

    .line 230
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;->this$0:Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity;->saveButton:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;

    invoke-direct {p2, p0, p3}, Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1$2;-><init>(Lpl/mkrstudio/truefootball3/activities/SaveGameActivity$1;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
