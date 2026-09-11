.class Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter$2;
.super Ljava/lang/Object;
.source "IndividualOrdersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

.field final synthetic val$item:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter$2;->this$0:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter$2;->val$item:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter$2;->this$0:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->tacticsFragment:Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter$2;->val$item:Ljava/util/HashMap;

    const-string v1, "nr"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/TacticsFragment;->showPlayerInfo(I)V

    return-void
.end method
