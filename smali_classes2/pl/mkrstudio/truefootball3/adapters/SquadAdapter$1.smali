.class Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$1;
.super Ljava/lang/Object;
.source "SquadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iput p2, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$1;->val$pos:I

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

    .line 95
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$1;->this$0:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->squadFragment:Lpl/mkrstudio/truefootball3/fragments/SquadFragment;

    iget v0, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$1;->val$pos:I

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/fragments/SquadFragment;->showPlayerInfo(I)V

    return-void
.end method
