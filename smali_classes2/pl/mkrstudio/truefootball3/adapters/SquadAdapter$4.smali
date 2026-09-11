.class Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;
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

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;Landroid/widget/CheckBox;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$checkBox",
            "val$pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->this$0:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->val$checkBox:Landroid/widget/CheckBox;

    iput p3, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->val$pos:I

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

    .line 194
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->this$0:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->multiReleaseCheckedPositions:Ljava/util/List;

    iget v0, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->val$pos:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 196
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->this$0:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->multiReleaseCheckedPositions:Ljava/util/List;

    iget v0, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->val$pos:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 199
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->this$0:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->multiReleaseCheckedPositions:Ljava/util/List;

    iget v0, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->val$pos:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->this$0:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget-object p1, p1, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->multiReleaseCheckedPositions:Ljava/util/List;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->this$0:Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter;->multiReleaseCheckedPositions:Ljava/util/List;

    iget v1, p0, Lpl/mkrstudio/truefootball3/adapters/SquadAdapter$4;->val$pos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
