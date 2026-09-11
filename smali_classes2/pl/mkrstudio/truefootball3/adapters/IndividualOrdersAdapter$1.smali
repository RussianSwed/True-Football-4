.class Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter$1;
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


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 116
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->showNextParameter()I

    .line 117
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/adapters/IndividualOrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method
