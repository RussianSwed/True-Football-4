.class Lpl/mkrstudio/truefootball3/views/ValuePicker$2;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/mkrstudio/truefootball3/views/ValuePicker;->initContractPicker(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Player;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lpl/mkrstudio/truefootball3/views/ValuePicker;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$et"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;->val$et:Landroid/widget/EditText;

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
            "arg0"
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget p1, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->chosenContractEnd:I

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->possibleContractEnds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 118
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->chosenContractEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->chosenContractEnd:I

    .line 119
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;->val$et:Landroid/widget/EditText;

    iget-object v0, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget-object v0, v0, Lpl/mkrstudio/truefootball3/views/ValuePicker;->possibleContractEnds:Ljava/util/List;

    iget-object v1, p0, Lpl/mkrstudio/truefootball3/views/ValuePicker$2;->this$0:Lpl/mkrstudio/truefootball3/views/ValuePicker;

    iget v1, v1, Lpl/mkrstudio/truefootball3/views/ValuePicker;->chosenContractEnd:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
