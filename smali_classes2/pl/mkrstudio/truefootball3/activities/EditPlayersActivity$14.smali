.class Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;
.super Ljava/lang/Object;
.source "EditPlayersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->initCustomPlayersList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

.field final synthetic val$customPlayerAdapter:Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;

.field final synthetic val$deleteButton:Landroid/widget/Button;

.field final synthetic val$editButton:Landroid/widget/Button;

.field final synthetic val$moveButton:Landroid/widget/Button;

.field final synthetic val$players:Ljava/util/List;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;Ljava/util/List;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$customPlayerAdapter",
            "val$players",
            "val$deleteButton",
            "val$moveButton",
            "val$editButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 394
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$customPlayerAdapter:Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;

    iput-object p3, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$players:Ljava/util/List;

    iput-object p4, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$deleteButton:Landroid/widget/Button;

    iput-object p5, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$moveButton:Landroid/widget/Button;

    iput-object p6, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$editButton:Landroid/widget/Button;

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

    .line 397
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$customPlayerAdapter:Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/adapters/CustomPlayerAdapter;->setSelectedPosition(I)V

    const/4 p1, -0x1

    if-le p3, p1, :cond_1

    .line 400
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$players:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-eq p3, p1, :cond_0

    .line 401
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$deleteButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->enable(Landroid/widget/Button;)V

    .line 402
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$moveButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->enable(Landroid/widget/Button;)V

    .line 403
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$editButton:Landroid/widget/Button;

    const p2, 0x7f0c0257

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 404
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$deleteButton:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;

    invoke-direct {p2, p0, p3}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$1;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$moveButton:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;

    invoke-direct {p2, p0, p3}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$2;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$deleteButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->disable(Landroid/widget/Button;)V

    .line 452
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$moveButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->disable(Landroid/widget/Button;)V

    .line 453
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$editButton:Landroid/widget/Button;

    const p2, 0x7f0c0139

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 456
    :goto_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->this$0:Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;

    iget-object p2, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$editButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity;->enable(Landroid/widget/Button;)V

    .line 457
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;->val$editButton:Landroid/widget/Button;

    new-instance p2, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$3;

    invoke-direct {p2, p0, p3}, Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14$3;-><init>(Lpl/mkrstudio/truefootball3/activities/EditPlayersActivity$14;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
